//
//  SCReadingDetailModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/8.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCReadingDetailModel.h"

#import "SCReFactoryModel.h"
#import "SCFactoryModel.h"
#import "SCCommentModel.h"
#import "SCBaseContentModel.h"

@interface SCReadingDetailModel ()

@property (nonatomic, copy) NSString *detailID;
@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) void (^block)(SCReadingDetailModel *);


@end
@implementation SCReadingDetailModel

+ (void)readingDetailModelWithReadingID:(NSString *)readingID type:(NSInteger)type model:(void (^)(SCReadingDetailModel *))model {
    
    SCReadingDetailModel *readingModel = [[SCReadingDetailModel alloc] init];
    
    readingModel.detailID = readingID;
    readingModel.type = type;
    readingModel.block = model;
    [readingModel requestData];
}
- (void) requestData {
    
    
    self.relatedM = [NSMutableArray arrayWithCapacity:0];
    self.commentM = [NSMutableArray arrayWithCapacity:0];
    
    NSString *headerStr;
    NSString *relatedStr;
    NSString *commentStr;
    
    NSString *headerUrl;
    NSString *relatedUrl;
    NSString *commentUrl;
    
    if (self.type == 1) {
        headerStr = [NSString stringWithFormat:essayContent, self.detailID];
        relatedStr = [NSString stringWithFormat:essayRelated, self.detailID];
        commentStr = [NSString stringWithFormat:essayComment, self.detailID, 0];
        
    }else if (self.type == 2) {
        
        headerStr = [NSString stringWithFormat:serialContent, self.detailID];
        relatedStr = [NSString stringWithFormat:serialRelated, self.detailID];
        commentStr = [NSString stringWithFormat:serialComment, self.detailID];
        
    }else {
        
        headerStr = [NSString stringWithFormat:questionContent, self.detailID];
        relatedStr = [NSString stringWithFormat:questionRelated, self.detailID];
        commentStr = [NSString stringWithFormat:questionComment, self.detailID, 0];
        
    }
    
    headerUrl = [NSString stringWithFormat:BASE_URL, headerStr];
    relatedUrl = [NSString stringWithFormat:BASE_URL, relatedStr];
    commentUrl = [NSString stringWithFormat:BASE_URL, commentStr];
    
    
    // 头部数据请求
    [SCNetWorkAFRequest netRequestWithURL:headerUrl params:nil success:^(NSDictionary *dict) {
        
        self.headerModel = [SCReFactoryModel readingDetailFactoryModelWithDict:dict[@"data"] type:self.type];
        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];
    
    // 推荐数据请求
    [SCNetWorkAFRequest netRequestWithURL:relatedUrl params:nil success:^(NSDictionary *dict) {
        
        for (NSDictionary *diction in dict[@"data"]) {
            
            SCBaseContentModel *relatedModel = [SCFactoryModel factoryConModelWithDict:diction Type:self.type];
            [self.relatedM addObject:relatedModel];
        }
        
        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];

    // 评论数据请求
    [SCNetWorkAFRequest netRequestWithURL:commentUrl params:nil success:^(NSDictionary *dict) {
        
        NSDictionary *diction = dict[@"data"];
        
        for (NSDictionary *temp in diction[@"data"]) {
            
            SCCommentModel *commentModel = [SCCommentModel conmmentModelWithDict:temp];
            [self.commentM addObject:commentModel];
        }
    
        if (self.block) {
            
            self.block(self);
        }
        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];

    
    
}



@end
