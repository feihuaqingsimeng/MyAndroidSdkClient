//
//  U8SDK.h
//  U8SDK
//
//  Created by dayong on 15-1-21.
//  Copyright (c) 2015年 u8sdk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#ifdef __cplusplus
#define U8SDK_EXTERN		extern "C" __attribute__((visibility ("default")))
#else
#define U8SDK_EXTERN	    extern __attribute__((visibility ("default")))
#endif

// U8SDK回调接口
@protocol U8SDKDelegate <NSObject>

-(UIView*) GetView;
-(UIViewController*) GetViewController;

@optional

-(void) OnPlatformInit:(NSNotification*)notification;
-(void) OnUserLogin:(NSNotification*)notification;
-(void) OnUserLogout:(NSNotification*)notification;
-(void) OnPayPaid:(NSNotification*)notification;
-(void) OnEventCustom:(NSNotification*)notification;

@end

// U8SDK的核心类
// 负责插件管理和事件分发
@interface U8SDK : NSObject

@property (nonatomic, copy) NSDictionary* sdkParams;
@property NSInteger supportedOrientations;
@property (strong, nonatomic) id defaultUser;
@property (strong, nonatomic) id defaultPay;

+(U8SDK*) sharedInstance;

-(void) setDelegate:(id<U8SDKDelegate>)delegate;
-(void) registerPlugin:(NSObject*)plugin;

-(NSObject*) getInterfaceByName:(NSString*)name andProtocol:(Protocol *)aProtocol;

// NSDictionary转换为Http的URL参数
+(NSString*) encodeHttpParams:(NSDictionary*)params encode:(NSStringEncoding)encoding;

-(NSArray*) plugins;

-(UIView*) GetView;
-(UIViewController*) GetViewController;

-(void) initWithParams:(NSDictionary*)params;

-(void) setupWithParams:(NSDictionary*)params;
-(BOOL) isInitCompleted;
-(BOOL) IsSupportFunction:(SEL)function;

// UIApplicationDelegate事件
- (void)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;

// 推送通知相关事件
- (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken;
- (void)application:(UIApplication*)application didFailToRegisterForRemoteNotificationsWithError:(NSError*)error;
- (void)application:(UIApplication*)application didReceiveLocalNotification:(UILocalNotification*)notification;
- (void)application:(UIApplication*)application didReceiveRemoteNotification:(NSDictionary*)userInfo;

// url处理
- (BOOL)application:(UIApplication*)application openURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation;
- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL *)url;

@end

U8SDK_EXTERN NSString* const U8SDKPlatformInit;
U8SDK_EXTERN NSString* const U8SDKUserLogin;
U8SDK_EXTERN NSString* const U8SDKUserLogout;
U8SDK_EXTERN NSString* const U8SDKPayPaid;
U8SDK_EXTERN NSString* const U8SDKCustomEvent;
