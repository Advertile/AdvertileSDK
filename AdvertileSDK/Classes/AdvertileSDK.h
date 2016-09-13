//
//  AdvertileSDK.h
//  Pods
//
//  Created by Javier Peigneux on 29/8/16.
//
//

#import <Foundation/Foundation.h>

@interface AdvertileSDK : NSObject

+(void)log:(NSString*)text;
+(void)openUrl:(NSString*)urlToOpen;
+(void)trackOpenEvent:(BOOL)isRelease;
+(void)managePetitionWhenOpenFromOtherApp:(NSDictionary*)infoDic;



#pragma mark - Swrve methods

+(void)activeSwrveWithId:(int)swrveId andApiKey:(NSString*)apiKey;
+(void)registeriOSTokenInSwrve:(NSString*)iOSToken;
+(NSString*)swrveUserId;
+(void)swrvePushNotificationReceived:(NSDictionary*)userInfo;

@end
