//
//  SCMusicModel.m
//  iReader
//
//  Created by SevenCelsius on 16/4/26.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCMusicModel.h"

#import "SCCommentModel.h"
#import "SCMuRelatedModel.h"
#import "SCMuDetailModel.h"

@interface SCMusicModel ()

@property (nonatomic, copy) void (^block)(SCMusicModel *);
@end

@implementation SCMusicModel

+ (void)musicModelWithStr:(NSString *)str musicModel:(void (^)(SCMusicModel *))musicModel {
    
    
    SCMusicModel *model = [[SCMusicModel alloc] init];
    
    model.musicID = str;
    
    model.block = musicModel;
    
    [model initData];
}

- (void) initData {
    
    self.relatedArrayM = [NSMutableArray arrayWithCapacity:0];
    self.commentArrayM = [NSMutableArray arrayWithCapacity:0];
    
    NSString *detail = [NSString stringWithFormat:musicDetail, self.musicID];
    NSString *comment = [NSString stringWithFormat:musicComment, self.musicID, 0];
    NSString *related = [NSString stringWithFormat:musicRelated, self.musicID];
    
    NSString *detailUrl = [NSString stringWithFormat:BASE_URL, detail];
    NSString *commentUrl = [NSString stringWithFormat:BASE_URL, comment];
    NSString *relatedUrl = [NSString stringWithFormat:BASE_URL, related];
    
    [SCNetWorkAFRequest netRequestWithURL:detailUrl params:nil success:^(NSDictionary *dict) {
        
        self.detailModel = [SCMuDetailModel musicDetailModelWithDict:dict[@"data"]];
        
//        if (self.block) {
//            
//            self.block(self);
//        }
        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];
    
    [SCNetWorkAFRequest netRequestWithURL:relatedUrl params:nil success:^(NSDictionary *dict) {
        
        for (NSDictionary *temp in dict[@"data"]) {
            
            SCMuRelatedModel *relatedModel = [SCMuRelatedModel musicRelatedModelWithDict:temp];
            [self.relatedArrayM addObject:relatedModel];
        }
//        
//        if (self.block) {
//            
//            self.block(self);
//        }

        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];

    [SCNetWorkAFRequest netRequestWithURL:commentUrl params:nil success:^(NSDictionary *dict) {
        
        NSDictionary *diction = dict[@"data"];
        
        for (NSDictionary *temp in diction[@"data"]) {
            
            SCCommentModel *commentModel = [SCCommentModel conmmentModelWithDict:temp];
            [self.commentArrayM addObject:commentModel];
        }
        
        if (self.block) {
            
            self.block(self);
        }
        
    } failure:^(NSError *error) {
        
        
    } isGet:YES];
    
}

@end
