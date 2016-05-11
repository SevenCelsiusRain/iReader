//
//  SCDetailMovieModel.m
//  iReader
//
//  Created by SevenCelsius on 16/5/11.
//  Copyright © 2016年 SevenCelsius. All rights reserved.
//

#import "SCDetailMovieModel.h"
#import "SCMoDetailModel.h"
#import "SCMoStoryModel.h"
#import "SCCommentModel.h"

@interface SCDetailMovieModel ()

@property (nonatomic, copy) NSString *movieID;
@property (nonatomic, strong) void(^block)(SCDetailMovieModel *);

@end

@implementation SCDetailMovieModel

+ (void)movieDetailModelWithMovieID:(NSString *)movieID detailMovieModel:(void (^)(SCDetailMovieModel *))detailMovieModel {
    
    SCDetailMovieModel *model = [[SCDetailMovieModel alloc] init];
    model.movieID = movieID;
    
    [model requestData];
    
}

- (void) requestData {
    
    
    self.commentM = [NSMutableArray arrayWithCapacity:0];
    
    NSString *detailStr = [NSString stringWithFormat:movieDetail, self.movieID];
    NSString *storyStr = [NSString stringWithFormat:movieStory, self.movieID];
    NSString *commentStr = [NSString stringWithFormat:movieComment, self.movieID];
    
    NSString *detailUrl = [NSString stringWithFormat:BASE_URL, detailStr];
    NSString *storyUrl = [NSString stringWithFormat:BASE_URL, storyStr];
    NSString *commentUrl = [NSString stringWithFormat:BASE_URL, commentStr];

    // 电影信息
    [SCNetWorkAFRequest netRequestWithURL:detailUrl params:nil success:^(NSDictionary *dict) {
        
        
        self.headerModel = [SCMoDetailModel moDetailModelWithDict:dict[@"data"]];
        
    } failure:^(NSError *error) {
        
    } isGet:YES];
    
    // 电影故事
    [SCNetWorkAFRequest netRequestWithURL:storyUrl params:nil success:^(NSDictionary *dict) {
        
        NSDictionary *diction = dict[@"data"];
        self.storyModel = [SCMoStoryModel movieStroyModelWithDict:diction[@"data"]];
    } failure:^(NSError *error) {
        
    } isGet:YES];
    
    
    // 电影评论
    [SCNetWorkAFRequest netRequestWithURL:commentUrl params:nil success:^(NSDictionary *dict) {
        
        NSDictionary *diction = dict[@"data"];
        
        for (NSDictionary *temp in diction[@"data"]) {
            
            SCCommentModel *commentModel = [SCCommentModel conmmentModelWithDict:temp];
        
            [self.commentM addObject:commentModel];
        }
        
    } failure:^(NSError *error) {
        
    } isGet:YES];
    
}


@end
