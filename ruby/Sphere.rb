class Sphere

    attr_reader :radius

    def initialize(radius=10)
        @radius = radius.to_f
    end

    def area
        return (4.0*(self.radius**2)*Math::PI) #area of sphere
    end

    def volume
        return (4.0*(self.radius**3)*Math::PI) / 3.0 #volume of sphere
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

puts "I will ask you some questions in oprder to create a ball for you."
puts

puts "What is your name?"
name = gets
name = name.chomp #this is used to cut out the \n from the user pressing enter

puts "What color would you like your ball to be?"
color = gets
color = color.chomp

puts "What is your desired radius?(in cm)"
rad = gets.to_f

ball = MyBall.new(rad, color, name)
puts
puts "Here is your ball's information."
puts
ball.show