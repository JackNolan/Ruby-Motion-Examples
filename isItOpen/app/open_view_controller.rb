class OpenViewController < UIViewController
  def loadView
    self.view = UIView.alloc.init
  end
  def viewDidLoad
    super   
    @label = UILabel.alloc.initWithFrame([[120,195],[100,100]])
    @label.backgroundColor = nil
    @label.textColor = UIColor.whiteColor
    @label.numberOfLines = 0
    @label.opaque = false
    label2 = UILabel.alloc.initWithFrame([[60,0],[200,100]])
    label2.backgroundColor = nil
    label2.textColor = UIColor.whiteColor
    label2.opaque = false
    label2.text = "Is the flatironschool open?"
    label3 = UILabel.alloc.initWithFrame([[110,375],[125,25]])
    label3.text = "tap to refresh"
    label3.opaque = false
    label3.backgroundColor = nil
    label3.textColor = UIColor.whiteColor
    circle = CircleView.alloc.initWithFrame([[35,125],[250,250]])
    uit = UITapGestureRecognizer.alloc.initWithTarget(self, action:"checkSite")
    circle.addGestureRecognizer(uit)
    view.backgroundColor = UIColor.blackColor
    view.addSubview(circle)
    view.addSubview(@label)
    view.addSubview(label2)
    view.addSubview(label3)
    checkSite
  end
  def checkSite
     BubbleWrap::HTTP.get("http://www.istheflatironschoolopen.com/status.json") do |response|
      status = BW::JSON.parse(response.body)["status"]
      if(status == "true")
        @label.text = "YES IT IS"
      else
        @label.text = "NO IT'S NOT"
      end
    end
  end
end