class Shape
  def initialize
    @x=10
    @y=10
    @width=10
    @height=10
    @sub_shapes={}
  end

  def initialize (name, x, y, width, height)
    @name=name
    @x=x
    @y=y
    @width=width
    @height=height
    sub_shapes={}
  end

  def add_sub_shape (sub_shape)
    @sub_shapes << sub_shape
  end

  def print_shape_structure
    puts '------------------------------------------'
    puts "Shape Name: #{@name}, Co-ordinates #{@x},#{@y},#{@x+@width},#{@y+@height}"
    id @sub_shapes.count > 0

    end
    @sub_shapes.each do |shape|
      shape.print_shape_structure
    end
    puts '------------------------------------------'
  end
end