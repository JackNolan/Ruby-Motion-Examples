class SecoundPage < UIViewController
  attr_accessor :deep, :parent
  def loadView
    @deep ||=0
    self.view = UIView.alloc.init
  end
  def viewDidLoad
    super
    label = UILabel.alloc.initWithFrame([[100,100],[200,25]])
    label.text = "you are #{@deep} deep"
    label.backgroundColor = UIColor.blueColor
    label.textColor = UIColor.whiteColor
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = CGRectMake(0, 300, 300/2 - 20, 30)
    # button.addTarget(self, action:"buttonTapped:", forControlEvents:UIControlEventTouchUpInside)
    button.addTarget(self, action:"push" ,forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(button)
    view.addSubview(label)
    view.backgroundColor = UIColor.blueColor
  end
   def push
    @parent.deep = @deep + 1
    self.navigationController.popViewControllerAnimated(true)
  end
end




