//
//  NSString+Extension.m
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import "NSString+Extension.h"


@implementation NSString (Extension)

/**
 *  判断输入字符是否是手机号
 *
 *  @param telno 字符串
 *
 *  @return 是为YES  否为NO
 */
+ (BOOL) validatetelno:(NSString *)telno
{
    NSString *emailRegex = @"^((13[0-9])|(147)|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:telno];
}

/**
 *  判断输入字符是否密码
 *
 *  @param pwd 字符串
 *
 *  @return 是为YES  否为NO
 */
+ (BOOL) validatetepwd:(NSString *)pwd
{
    NSString *emailRegex = @"^[a-zA-Z0-9]{6,16}$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:pwd];
}


+ (NSString *_Nullable)formatFloat:(float)f
{
    if (fmodf(f, 1)==0) {//如果有一位小数点
        return [NSString stringWithFormat:@"%.0f",f];
    } else if (fmodf(f*10, 1)==0) {//如果有两位小数点
        return [NSString stringWithFormat:@"%.1f",f];
    } else {
        return [NSString stringWithFormat:@"%.2f",f];
    }
}


+ (NSString*)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end

@implementation NSString (YSPath)

- (NSString *)ysDocumentDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:self];
}

- (NSString *)ysCacheDirecotry {
    
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:self];
}

- (NSString *)ysTmpDirectory {
    
    return [NSTemporaryDirectory() stringByAppendingPathComponent:self];
}

+ (NSString*)getCachDirecotryPath{
    
    NSString * plist = @"data.plist";
    NSString * cache = plist.ysCacheDirecotry;
    NSString * cachePath = [cache stringByAppendingString:plist];
    
    return cachePath;
}

@end

@implementation NSString (YSBase64)

- (NSString *)ysBase64encode {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)ysBase64decode {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:0];
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
