//
//  QGNotificationServiceExtension.h
//  Appier
//
//  Created by chunta on 2020/7/3.
//  Copyright © 2020 chunta. All rights reserved.
//

#import <UserNotifications/UserNotifications.h>

NS_ASSUME_NONNULL_BEGIN

@interface QGNotificationService : UNNotificationServiceExtension
- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler withByPassHandler:(void (^)(void))byPassHandler API_AVAILABLE(ios(10.0));
@end

NS_ASSUME_NONNULL_END
