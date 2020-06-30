//
//  QGNotificationStorage.h
//  AIQUA
//
//  Created by Appier on 10/5/19.
//  Copyright © 2019 Appier. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QGNotificationStorage : NSObject

+ (NSArray *)fetchSavedPushNotifications;
+ (void)deleteSavedPushNotifications;
+ (void)deleteNotificationAtIndex:(NSUInteger)index;
+ (void)enablePushStorage:(BOOL)enabled;
+ (void)setPushNotificationStorageLimit:(long)limit;
@end

NS_ASSUME_NONNULL_END
