class FirstPage < UIViewController
  attr_accessor :deep
  def loadView
    @deep ||=0
    self.view = UIView.alloc.init
  end
  def viewDidLoad
    super
    @label = UILabel.alloc.initWithFrame([[100,100],[200,25]])
    @label.text = "you are #{@deep} deep"
    @label.backgroundColor = UIColor.redColor
    @label.textColor = UIColor.whiteColor
    view.backgroundColor = UIColor.redColor
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = CGRectMake(0, 300, 300/2 - 20, 30)
    # button.addTarget(self, action:"buttonTapped:", forControlEvents:UIControlEventTouchUpInside)
    button.addTarget(self, action:"push" ,forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(button)
    view.addSubview(@label)
  end
  def viewWillAppear(animated)
    @label.text = "you are #{@deep} deep"
  end
  def push
    sp = SecoundPage.alloc.init
    sp.parent = self
    sp.deep = @deep + 1
    self.navigationController.pushViewController(sp, animated: true)
  end
end