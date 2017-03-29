package com.u8.sdk;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Toast;

import com.u8.sdk.download.DownloadManagerPro;
import com.u8.sdk.download.report.DownloadManagerListener;
import com.u8.sdk.ui.MaterialDialog;
import com.u8.sdk.ui.NumberProgressBar;
import com.u8.sdk.utils.ResourceHelper;

public class ApkDownloadSDK{
	private static final String APK_PATH = "u8_download";
	private static final String APK_NAME = "update";
	
	private static ApkDownloadSDK instance;
	
	
	private MaterialDialog mBarDialog;
	private NumberProgressBar bar;
	
	private int token = 0; //the task id
	
	private ApkDownloadSDK(){
		
	}
	
	public static ApkDownloadSDK getInstance(){
		if(instance == null){
			instance = new ApkDownloadSDK();
		}
		return instance;
	}
	
	/**
	 * start download for apk
	 * @param context
	 * @param url the apk url
	 * @param showConfirm  is show confirm dialog before download
	 * @param force is cancelable
	 */
	public void download(final Activity context, final String url, boolean showConfirm, boolean force){
		
		if(showConfirm){

			SizeTask task = new SizeTask(context, url, force);
			task.execute();	
		}else{
			startDownload(context, url);
		}
		
	}
	
	
	private void startDownload(final Activity context, final String url){
    	String addr = getLocalApkDir();
    	File file = new File(addr);
    	if(file.exists()){
    		removeDir(file);
    	}
		
		final DownloadManagerPro dm = new DownloadManagerPro(context);
		dm.init(APK_PATH+"/", 1, new DownloadManagerListener() {
			
			@Override
			public void onDownloadProcess(long taskId, final double percent,
					long downloadedLength) {
				
				if(bar != null){
					context.runOnUiThread(new Runnable() {
						
						@Override
						public void run() {
							bar.setProgress((int)percent);
						}
					});
					
				}
				
			}
			
			@Override
			public void connectionLost(long taskId) {
				// TODO Auto-generated method stub
				Log.e("U8SDK_Download", "connectionLost");
			}
			
			@Override
			public void OnDownloadStarted(long taskId) {
				Log.d("U8SDK_Download", "downloadStarted");
				context.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {

						if(bar == null){
							
							View v = LayoutInflater.from(context).inflate(ResourceHelper.getIdentifier(context, "R.layout.progressbar_item"), null);
							bar = (NumberProgressBar)v.findViewById(ResourceHelper.getIdentifier(context, "R.id.number_progress_bar"));
							bar.setCompleteText("下载完成,正在准备安装...");
							mBarDialog = new MaterialDialog(context);
							mBarDialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
								
								@Override
								public boolean onKey(DialogInterface dialog, int code, KeyEvent event) {
									if(code == KeyEvent.KEYCODE_SEARCH){
										return true;
									}
									
									return false;
								}
							});
							mBarDialog.setView(v).show();
						}
						
					}
				});
			}
			
			@Override
			public void OnDownloadRebuildStart(long taskId) {
				Log.d("U8SDK_Download", "Rebuild Start");
			}
			
			@Override
			public void OnDownloadRebuildFinished(long taskId) {
				Log.e("U8SDK_Download", "Rebuild Finished");
			}
			
			@Override
			public void OnDownloadPaused(long taskId) {
				Log.d("U8SDK_Download", "Download Paused");
				try {
					dm.startDownload(token);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			@Override
			public void OnDownloadFinished(long taskId) {
				Log.d("U8SDK_Download", "Download Finished");
				context.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {
						bar.setProgress(100);	
						
					}
				});				
			}
			
			@Override
			public void OnDownloadCompleted(long taskId) {

				context.runOnUiThread(new Runnable() {
					
					@Override
					public void run() {						
						
						install(context, url);
					}
				});
				

			}
		});		
		
		
		this.token = dm.addTask(APK_NAME, url, true, true);
		try {
			dm.startDownload(token);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
    private long getFileSize(String strUrl) {

    	Log.d("U8SDK_Download", "The url is "+strUrl);
    	
        URL url = null;
        HttpURLConnection urlConnection;
        try {
            url = new URL(strUrl);
            urlConnection = (HttpURLConnection) url.openConnection();
            
            if (urlConnection == null) {
            	Log.e("U8SDK_Download", "url connnection is null");
                return  0;
			}
        } catch (MalformedURLException e) {

            e.printStackTrace();
            Log.e("U8SDK_Download", "url error."+e.getMessage());
            return 0;
            
        }catch (IOException e) {
			e.printStackTrace();
			Log.e("U8SDK_Download", "io error."+e.getMessage());
			return 0;
		} 
        long size = urlConnection.getContentLength();
        return size;
    }
	
    private void install(Activity context, String url){

    	
    	String addr = getLocalApkPath();
    	File file = new File(addr);
    	if(file.exists()){
        	Intent intent = new Intent(Intent.ACTION_VIEW);
        	intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        	context.startActivity(intent);
    	}else{
    		Toast.makeText(context, "下载失败,请重新下载", Toast.LENGTH_SHORT).show();
    		startDownload(context, url);
    	}

    }
    
    private String getLocalApkPath(){
    	
    	StringBuilder sb = new StringBuilder();
    	sb.append(Environment.getExternalStorageDirectory()).append("/")
    	.append(APK_PATH).append("/").append(APK_NAME).append(".apk");
    	
    	return sb.toString();
    }
    
    private String getLocalApkDir(){
    	
    	StringBuilder sb = new StringBuilder();
    	sb.append(Environment.getExternalStorageDirectory()).append("/")
    	.append(APK_PATH).append("/");
    	
    	return sb.toString();
    }    
    
    private void removeDir(File dir){
    	if(!dir.isDirectory()){
    		return;
    	}
    	
		File[] childs = dir.listFiles();
		if(childs == null || childs.length == 0){
			return;
		}
		
		for(File f : childs){
			removeAllFile(f);
		}  	
    }
    
    private void removeAllFile(File dir){
    	if(dir.isFile()){
    		dir.delete();
    		return;
    	}
    	
    	if(dir.isDirectory()){
    		File[] childs = dir.listFiles();
    		if(childs == null || childs.length == 0){
    			dir.delete();
    			return;
    		}
    		for(File f : childs){
    			removeAllFile(f);
    		}
    		dir.delete();
    	}
    }    
    
	class SizeTask extends AsyncTask<Void, Void, Long>{

		private String url;
		private Activity context;
		
		private boolean force = false;
		
		public SizeTask(Activity context, String url, boolean force){
			this.context = context;
			this.url = url;
			this.force = force;
		}

		@Override
		protected Long doInBackground(Void... args) {
			
			return getFileSize(url);
		}
		
		protected void onPostExecute(Long fileSize){
			
			if(fileSize <= 0){
				Toast.makeText(context, "下载出错", Toast.LENGTH_SHORT).show();
				return;
			}
			
			String size = "";
			double m = 1024d * 1024d;
			if(fileSize < m){
				double ksize = fileSize / 1024d;
				size = String.format("%.2f", ksize) + "K";
				
			}else{
				double msize = fileSize / m;
				size =  String.format("%.2f", msize) + "M";
			}
			
			final MaterialDialog mMaterialDialog = new MaterialDialog(context)
		    .setTitle("下载确认")
		    .setMessage("当前总共需要下载"+size+"，确认下载吗？");
			
			mMaterialDialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
				
				@Override
				public boolean onKey(DialogInterface dialog, int code, KeyEvent event) {
					if(code == KeyEvent.KEYCODE_SEARCH){
						return true;
					}
					
					return false;
				}
			});			
			
		    mMaterialDialog.setPositiveButton("确　定", new View.OnClickListener() {
		        @Override
		        public void onClick(View v) {
		            mMaterialDialog.dismiss();
		            
		            startDownload(context, url);
		            
		        }
		    });
		    
		    if(!force){

			    mMaterialDialog.setNegativeButton("取　消", new View.OnClickListener() {
			        @Override
			        public void onClick(View v) {
			            mMaterialDialog.dismiss();
			        }
			    });	
		    }
		    

		    mMaterialDialog.show();				
		}
		
	}


}
