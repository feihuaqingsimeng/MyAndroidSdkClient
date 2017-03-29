package com.u8.sdk.download.report;

/**
 * Created by Majid Golshadi on 4/23/2014.
 */
public class QueueDownloadInProgressException extends IllegalAccessException {

    public QueueDownloadInProgressException(){
        super("queue download is already in progress");
    }
}
