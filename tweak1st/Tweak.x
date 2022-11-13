#import "HookInterfaceStatment.h"



@interface MMUIViewController : UIViewController

- (void)startLoadingBlocked;
- (void)startLoadingNonBlock;
- (void)startLoadingWithText:(NSString *)text;
- (void)stopLoading;
- (void)stopLoadingWithFailText:(NSString *)text;
- (void)stopLoadingWithOKText:(NSString *)text;

// Added method.
- (void)helloWorld;

@end


%hook MMUIViewController

- (void)viewWillAppear:(_Bool)arg1 {
    %orig;
    [self helloWorld];
}

%new
- (void)helloWorld {
    UIAlertController *alertController = ({
        UIAlertController *_alertController = [UIAlertController alertControllerWithTitle:@"Hello World!" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [_alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {}]];
        [_alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {}]];
        _alertController;
    });
    [self presentViewController:alertController animated:YES completion:NULL];
}

%end