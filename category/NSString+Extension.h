//
//  NSString+Extension.h
//  component
//
//  Created by JOWTO on 2017/11/13.
//  Copyright © 2017年 wangyusong. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (Extension)
/**
 *  判断输入字符是否是手机号
 *
 *  @param telno 字符串
 *
 *  @return 是为YES  否为NO
 */
+ (BOOL) validatetelno:(NSString *_Nullable)telno;
/**
 *  判断输入字符是否密码
 *
 *  @param pwd 字符串
 *
 *  @return 是为YES  否为NO
 */
+ (BOOL) validatetepwd:(NSString *_Nullable)pwd;


+ (NSString *_Nullable)formatFloat:(float)f;

+ (NSString* _Nullable)dictionaryToJson:(NSDictionary *_Nullable)dic;

@end


@interface NSString (YSPath)

/// 拼接了`文档目录`的全路径
@property (nullable, nonatomic, readonly) NSString *ysDocumentDirectory;
/// 拼接了`缓存目录`的全路径
@property (nullable, nonatomic, readonly) NSString *ysCacheDirecotry;
/// 拼接了临时目录的全路径
@property (nullable, nonatomic, readonly) NSString *ysTmpDirectory;

+ (nullable NSString *  )getCachDirecotryPath;

@end



@interface NSString (YSBase64)

/// BASE 64 编码的字符串内容
@property(nullable, nonatomic, readonly) NSString *ysBase64encode;
/// BASE 64 解码的字符串内容
@property(nullable, nonatomic, readonly) NSString *ysBase64decode;


@end
