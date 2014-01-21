//
//  OSKPhoneActivity.m
//  Props
//
//  Created by Eric Roland on 1/21/14.
//  Copyright (c) 2014 Eric Roland. All rights reserved.
//

#import "OSKPhoneActivity.h"
#import "OSKActivity.h"

@implementation OSKPhoneActivity : OSKActivity

- (instancetype)initWithContentItem:(OSKShareableContentItem *)item {
  self = [super initWithContentItem:item];
  if (self) {
    //
  }
  return self;
}

#pragma mark - Methods for OSKActivity Subclasses

+ (NSString *)supportedContentItemType {
  return OSKShareableContentItemType_Phone;
}

+ (BOOL)isAvailable {
  return YES;
}

+ (NSString *)activityType {
  return OSKActivityType_iOS_Phone;
}

+ (NSString *)activityName {
  return @"Phone";
}

+ (UIImage *)iconForIdiom:(UIUserInterfaceIdiom)idiom {
  UIImage *image = nil;
  if (idiom == UIUserInterfaceIdiomPhone) {
    image = [UIImage imageNamed:@"osk-mailIcon-60.png"];
  } else {
    image = [UIImage imageNamed:@"osk-mailIcon-76.png"];
  }
  return image;
}


+ (OSKAuthenticationMethod)authenticationMethod {
  return OSKAuthenticationMethod_None;
}

+ (BOOL)requiresApplicationCredential {
  return NO;
}

+ (OSKPublishingViewControllerType)publishingViewControllerType {
  return OSKPublishingViewControllerType_System;
}

- (BOOL)isReadyToPerform {
  return YES;
}

- (void)performActivity:(OSKActivityCompletionHandler)completion {
  if (completion) {
    completion(self, YES, nil);
  }
}

+ (BOOL)canPerformViaOperation {
  return NO;
}

- (OSKActivityOperation *)operationForActivityWithCompletion:(OSKActivityCompletionHandler)completion {
  return nil;
}

@end
