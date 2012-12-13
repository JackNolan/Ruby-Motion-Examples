class CircleView < UIView
  attr_accessor :color, :circle_frame
  def drawRect(rect) 
    context = UIGraphicsGetCurrentContext()
    CGContextSetFillColorWithColor(context, @color)
    CGContextFillEllipseInRect(context, @circle_frame)
    super
  end
end 
