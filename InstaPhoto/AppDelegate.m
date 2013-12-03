#import "AppDelegate.h"
#import "FeedViewController.h"
#import "FavouritesViewController.h"
#import "ProfileViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Paint Brush (View Controller)
    FeedViewController *feedViewController = [[FeedViewController alloc] init];
    FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc] init];
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    
    // Container View Controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[feedViewController, favouritesViewController, profileViewController]]; // 1st one is the default
    
    // Canvas (Window)
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
