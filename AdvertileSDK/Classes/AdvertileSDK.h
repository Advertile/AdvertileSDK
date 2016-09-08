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
+(void)trackOpenEvent;
+(void)activeSwrveWithId:(NSString*)swrveId andApiKey:(NSString*)apiKey;
+(void)managePetitionWhenOpenFromOtherApp:(NSDictionary*)infoDic;
+(NSString*)swrveUserId;
@end
