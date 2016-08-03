//
//  Squirrel.m
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

#import "Squirrel.h"
#import "XXSwiftUseOC-Swift.h"

@implementation Squirrel

-(void) print{
    Person *person = [[Person alloc] init];
    [person printName];
    
    CustomError errorType = CustomErrorA;
}


@end
