//
//  CustomUnityWWW.m
//  Unity-iPhone
//
//  Created by dayong on 15/7/17.
//
//

#import "UnityAppController.h"
#import "U8SDK.h"

#define CALLBACK_GAMEOBJECT_NAME "(u8sdk_callback)"

#if defined(__cplusplus)
extern "C"{
#endif
    
    UIView* UnityGetGLView();
    extern void UnitySendMessage(const char* gameObjectName, const char* methodName, const char* param);
    void UniSDK_DefaultPlugin();
    
#if defined(__cplusplus)
}
#endif

@interface U8SDKAppController : UnityAppController<U8SDKDelegate>
{
    
}

@end

@implementation U8SDKAppController

-(void) SendCallback:(const char*)method withParams:(NSDictionary *)params
{
    NSString* jsStr = nil;
    
    if (params)
    {
        NSError* error;
        NSData* data = [NSJSONSerialization dataWithJSONObject:params options:kNilOptions error:&error];
        
        if (data)
        {
            jsStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        }
    }
    
    if (jsStr)
    {
        UnitySendMessage(CALLBACK_GAMEOBJECT_NAME, method, [jsStr UTF8String]);
    }
    else
    {
        UnitySendMessage(CALLBACK_GAMEOBJECT_NAME, method, "");
    }
}

- (void)showAlertView:(NSString *)message{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:message delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

/******************** U8SDKDelegate implementation ***********************/

-(UIView*) GetView
{
    return UnityGetGLView();
}

-(UIViewController*) GetViewController
{
    return UnityGetGLViewController();
}

-(void) OnPlatformInit:(NSDictionary*)param
{
    [self SendCallback:"OnInitSuc" withParams:param];
}

-(void) OnUserLogin:(NSDictionary*)param
{
    [self SendCallback:"OnLoginSuc" withParams:param];
}

-(void) OnUserLogout:(NSDictionary*)param
{
    [self SendCallback:"OnLogout" withParams:param];
}

-(void) OnPayPaid:(NSDictionary*)param
{
    [self SendCallback:"OnPaySuc" withParams:param];
}

////////////////////////////////////////////////////////////////

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSDictionary* u8sdkConfig = [[NSBundle mainBundle].infoDictionary valueForKey:@"U8SDK"];
    [[U8SDK sharedInstance] initWithParams:u8sdkConfig];
    
    BOOL ret = [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [[U8SDK sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    
    [[U8SDK sharedInstance] setDelegate:self];
    
    return ret;
}

- (BOOL)application:(UIApplication*)application openURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation
{
    BOOL ret = [super application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    [[U8SDK sharedInstance] application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return ret;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    [super applicationWillResignActive:application];
    
    [[U8SDK sharedInstance] applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [super applicationDidEnterBackground:application];
    [[U8SDK sharedInstance] applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [super applicationWillEnterForeground:application];
    [[U8SDK sharedInstance] applicationWillEnterForeground:application];
}
- (void)applicationDidBecomeActive:(UIApplication *)application;
{
    [super applicationDidBecomeActive:application];
    [[U8SDK sharedInstance] applicationDidBecomeActive:application];
}
- (void)applicationWillTerminate:(UIApplication *)application
{
    [super applicationWillTerminate:application];
    [[U8SDK sharedInstance] applicationWillTerminate:application];
}

@end

IMPL_APP_CONTROLLER_SUBCLASS(U8SDKAppController)