// Patty.h

#import <Foundation/Foundation.h>

@interface Patty : NSObject{
  /*    NSNumber* startcook;
    NSNumber* cooktime;
    NSString* doneness;
    BOOL flipped;
  */
}
/*
- (NSNumber*) cooktime;
- (NSString*) doneness;
- (BOOL) flipped;

- (void) setCooktime: (NSNumber*)currenttime;
- (void) setDoneness: (NSNumber*)cooktime;
- (void) setFlipped;
- (void) cook;
*/
@property (assign) BOOL flipped;
@property (assign) NSString *doneness;
@property (readonly) NSString *startime;
@property (readonly) NSString *cooktime;

+ (instancetype) pattyWithStartTime: (NSNumber) *time;
- (id) initWithStartTime: (NSNumber) *time;
- (void) startCook: (NSNumber) *time;
@end
