require 'gosu'

class ShoetheHorse < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = 'Shoe the Horse!'
    @image = Gosu::Image.new('horse.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
    @shoe_image = Gosu::Image.new('horseshoe.png')
    @hit = 0
  end

  def draw
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
    @shoe_image.draw(mouse_x - 40, mouse_y - 10, 1)
  end

  def update
    @x += @velocity_x
    @y += @velocity_y
    @velocity_x *= -1 if @x - @width / 2 > 800 || @x - @width / 2 < 0
    @velocity_y *= -1 if @y - @height / 2 > 600 || @y - @height / 2 < 0
  end 
end

window = ShoetheHorse.new
window.show