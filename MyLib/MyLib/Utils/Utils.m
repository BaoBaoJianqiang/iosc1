//
//  Utils.m
//  MyLib
//

#import "Utils.h"

@implementation Utils

+(NSInteger) add : (NSInteger)a1 and: (NSInteger)a2 {
    return a1 + a2 + 2;
}

+(NSString*) concat : (NSString*)str1 and: (NSString*)str2 {
    return [NSString stringWithFormat: @"%@ %@", str1, str2] ;
}

@end