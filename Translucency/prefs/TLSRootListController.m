#include "TLSRootListController.h"

@implementation TLSRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
-(void)respring {
    CFNotificationCenterPostNotification (CFNotificationCenterGetDarwinNotifyCenter(),
                                          CFSTR("respringDevice"),
                                          NULL,
                                          NULL,
                                          false);
}
@end
