class OverlappingController < UIViewController
  def loadView
    self.view = UIView.alloc.init
  end
  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    @firstFrame = [[0,0],[50,50]]
    @secoundFrame = [[25,0],[50,50]]
    @circleOne = CircleView.alloc.initWithFrame(@firstFrame)
    @circleOne.color = UIColor.colorWithRed(1.0, green:0, blue:0, alpha:0.5).CGColor
    @circleOne.circle_frame = [[0,0],[50,50]]
    @circleOne.opaque = false
    @circleTwo = CircleView.alloc.initWithFrame(@secoundFrame)
    @circleTwo.color = UIColor.colorWithRed(0.0, green:0.0, blue:1.0, alpha:0.5).CGColor
    @circleTwo.circle_frame = [[0,0],[50,50]]
    @circleTwo.opaque = false
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[0,100],[50,50]]
    button.addTarget(self, action:"moveCircle",forControlEvents:UIControlEventTouchDown)
    view.addSubview(button)
    view.addSubview(@circleOne)
    view.addSubview(@circleTwo)
  end
  def moveCircle
    UIView.animateWithDuration(2, 
      animations: lambda do 
        @circleTwo.frame = @firstFrame
      end,
      completion: lambda do |b| 
        UIView.animateWithDuration(1, 
        animations: lambda do 
          @circleTwo.frame = [[0,50],[50,50]]
        end,
      completion: lambda do |b|
        UIView.animateWithDuration(1, 
        animations: lambda do 
          @circleTwo.frame = [[50,50],[50,50]]
        end,
        completion: lambda do |b|
          UIView.animateWithDuration(1, 
          animations: lambda do 
            @circleTwo.frame = @secoundFrame
          end)
        end)
      end)
    end)
  end



end