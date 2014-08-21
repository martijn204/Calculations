class Pipe
  include Calculations::Circle
  ## Let op, eenheden moeten gelijk zijn!!
  
  def self.content_in_litres_from_diameter_and_length(diameter, length, thickness=1.5)
    self.new(diameter, length,thickness).content_in_litres
  end
  
  def initialize(diameter, length, thickness=1.5)
    @diameter = diameter
    @length = length
    @thickness = thickness
  end
  
  
  def volume
    surface = Calculations::Circle.calculate_surface_from_radius(@diameter/2)-Calculations::Circle.calculate_surface_from_radius(inner_diameter/2)
    surface*@length
  end
  
  def content
    Calculations::Circle.calculate_surface_from_radius(inner_diameter/2)*@length
  end
  
  def content_in_litres
    content/1000000
  end
  
  private
  
  def inner_diameter
    @diameter - (@thickness+@thickness)
  end
  
end