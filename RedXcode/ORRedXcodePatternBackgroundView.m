#import "ORRedXcodePatternBackgroundView.h"

@interface ORRedXcodePatternBackgroundView()
@property (strong, nonatomic) NSColor *stripedPatternColour;

@end

@implementation ORRedXcodePatternBackgroundView

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];

    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    NSImage *image = [bundle imageForResource:@"pattern"];
    _stripedPatternColour = [NSColor colorWithPatternImage:image];

    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    NSGraphicsContext* theContext = [NSGraphicsContext currentContext];
    [theContext saveGraphicsState];
    [[NSGraphicsContext currentContext] setPatternPhase:NSMakePoint(0,[self frame].size.height)];
    [self.stripedPatternColour set];
    NSRectFill([self bounds]);
    [theContext restoreGraphicsState];
}

- (void)setFrame:(NSRect)frame
{
    [super setFrame:frame];
    [self setNeedsDisplay:YES];
}

- (BOOL)isOpaque
{
    return NO;
}

- (NSView *)hitTest:(NSPoint)aPoint
{
    return NO;
}

@end
