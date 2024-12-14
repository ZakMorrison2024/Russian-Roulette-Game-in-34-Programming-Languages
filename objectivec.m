#import <Foundation/Foundation.h>

void russianRoulette() {
    NSMutableArray *chambers = [NSMutableArray arrayWithObjects:@NO, @NO, @NO, @NO, @NO, nil];
    [chambers addObject:@YES];  // 1 chamber with a bullet
    for (NSInteger i = chambers.count - 1; i > 0; i--) {
        NSInteger j = arc4random_uniform((uint32_t)i);
        [chambers exchangeObjectAtIndex:i withObjectAtIndex:j];  // Shuffle chambers
    }

    NSLog(@"Welcome to Russian Roulette!");
    getchar();  // Wait for Enter key

    if ([chambers[0] boolValue]) {
        NSLog(@"Bang! You're dead!");
    } else {
        NSLog(@"Click. You're safe... for now.");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        russianRoulette();
    }
    return 0;
}
