class Sphere

    attr_reader :radius

    def initialize(radius=10)
        @radius = radius.to_f
    end

    def area
        return (4.0*(self.radius**2)*Math::PI)
    end

    def volume
        return (4.0*(self.radius**3)*Math::PI) / 3.0
    end
    
end

class Ball < Sphere
    
    attr_reader :color

    def initialize(radius=10,color="blue")
        super(radius)
        @color = color
    end

end

class MyBall < Ball

    attr_reader :owner

    def initialize(radius=10,color="blue",owner="Osbaldo")
        super(radius,color)
        @owner = owner
    end

    def show
       puts "Ball's attributes:\n\tOwner:  #{self.owner} \n\tColor:  #{self.color} \n\tradius: #{self.radius} cm" 
    end

end

b = MyBall.new
b.show