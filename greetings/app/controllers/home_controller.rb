class HomeController < UIViewController
  def loadView
    self.view = UIView.alloc.init
  end
  def viewDidLoad
    @label = UILabel.alloc.initWithFrame([[15,100],[140,70]])
    @label.text = "I'm a label"
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = CGRectMake(0, 300, 300/2 - 20, 30)
    button.setTitle("Click me rex", forState: UIControlStateNormal)
    view.backgroundColor = UIColor.whiteColor
    button.addTarget(self, action:"buttonTapped:", forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@label)
    view.addSubview(button)

  end
  def buttonTapped(sender)
    label = UILabel.alloc.initWithFrame([[155,100],[140,70]])
    label.text = "this is now different"
    view.addSubview(label)
    @label.text = "this changed"
  end
end