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
  end

  def draw
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
  end
end