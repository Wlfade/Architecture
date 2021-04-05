//
//  MainTableViewController.m
//  VIPER
//
//  Created by xsj on 2021/3/20.
//

#import "MainTableViewController.h"
#import "WLFTodayFireDataTool.h"
#import "WLFTodayFireVoiceCellPresenter.h"

@interface MainTableViewController ()
@property (nonatomic, strong) NSArray<WLFTodayFireVoiceCellPresenter *> *presenterMs;
@end

@implementation MainTableViewController

- (void)setPresenterMs:(NSArray<WLFTodayFireVoiceCellPresenter *> *)presenterMs {
    _presenterMs = presenterMs;
    [self.tableView reloadData];
}

-(void)viewDidLoad
{
    self.tableView.rowHeight = 80;
    __weak typeof(self) weakSelf = self;

    [[WLFTodayFireDataTool shareInstance] getVoiceMsKey:@"1_3_ranking:track:scoreByTime:1:3" result:^(NSArray<WLFDownLoadVoiceModel *> *voiceMs) {
        
        NSMutableArray *ps = [NSMutableArray array];
        for (WLFDownLoadVoiceModel *model in voiceMs) {
            WLFTodayFireVoiceCellPresenter *p = [WLFTodayFireVoiceCellPresenter new];
            p.testModel = model;
            [ps addObject:p];
        }

        weakSelf.presenterMs = ps;
    }];
    

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.presenterMs.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TestTableViewCell *cell = [TestTableViewCell cellWithTableView:tableView];

    WLFTodayFireVoiceCellPresenter *p = self.presenterMs[indexPath.row];
    
    // 让cell展示模型数据
    [p bindToCell:cell];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

//    WLFDownLoadVoiceModel *model = self.voiceMs[indexPath.row];

//    NSLog(@"跳转到播放器界面进行播放--%@--", model.title);

}


@end
