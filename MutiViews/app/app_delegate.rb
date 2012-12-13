class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    controller = FirstPage.alloc.init
    nav = UINavigationController.alloc.initWithRootViewController(controller)
    nav.navigationBarHidden = true
    @window.rootViewController = nav
    @window.makeKeyAndVisible
    true
  end
end
