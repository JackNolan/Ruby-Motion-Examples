class CircleView < UIView
  def drawRect(rect) 
    context = UIGraphicsGetCurrentContext()
    CGContextSetFillColorWithColor(context, UIColor.colorWithRed(0.79, green:0.12, blue:0.17, alpha:1.0).CGColor)
    CGContextFillEllipseInRect(context, [[0, 0], [250, 250]])
    super
  end
end 
