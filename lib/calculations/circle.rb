module Calculations::Circle
  def self.calculate_circumference_from_radius(radius)
    2*Math::PI*radius
  end
  
  def self.calculate_surface_from_radius(radius)
    Math::PI*radius*radius
  end
  
  def self.calculate_volume_from_radius_and_height(radius, height)
    calculate_surface_from_radius(radius)*height
  end
  
end