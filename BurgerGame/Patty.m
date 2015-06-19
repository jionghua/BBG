// Patty.m

#import Patty.h

@implementation Patty

@synthesize flipped;
@synthesize startcook;
@synthesize doneness;
@synthesize cooktime;

+ (instancetype) pattyWithStartTime: (NSNumber) *time {
  Patty *patty = [[Patty alloc] initWithStartTime: time];
  return patty;
}

- (id) initWithStartTime: (NSNumber) *time {
  self = [super init];
  if (self) {
    self.startcook = time;
  }
  return self;
}

- (void) setdoneness: {
  [doneness autorelease];
  int cooktimeint = [cooktime intValue];
  if (cooktimeint < 4) {
    doneness = @"raw";
  }
  else if (flipped) {
    if (cooktimeint < 7) {
      doneness = @"medium";
    }
    else if (cooktimeint < 10) {
      doneness = @"well";
    }
    else {
      doneness = @"burnt";
    }
  }
  else {
    doneness = @"burnt";
  }
}

@end
