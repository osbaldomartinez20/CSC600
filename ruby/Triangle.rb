class Triangle

    attr_reader :side_a, :side_b, :side_c

    def initialize(side_a=3,side_b=4,side_c=5)
        @side_a = side_a
        @side_b = side_b
        @side_c = side_c
    end

    def test
        if !(self.side_a + self.side_b > self.side_c || self.side_a + self.side_c > self.side_b || self.side_b + self.side_c > self.side_a)
            return 5 #Not a triangle
        elsif ((self.side_a**2)+(self.side_b**2) == (self.side_c**2) || (self.side_a**2)+(self.side_c**2) == (self.side_b**2) || (self.side_b**2)+(self.side_c**2) == (self.side_a**2))
            return 4 #Right triangle
        elsif (self.side_a != self.side_b && self.side_b != self.side_c && self.side_a != self.side_c)
            return 3 #Scalene triangle
        elsif ((self.side_a == self.side_b && self.side_a != self.side_c) || (self.side_a == self.side_c && self.side_a != self.side_b) || (self.side_b == self.side_c && self.side_a != self.side_b))
            return 2 #Isosceles triangle
        elsif (self.side_a == self.side_b && self.side_a == self.side_c)
            return 1 #Equilateral triangle
        end
    end

    def perimeter
        if self.test == 5
            return -1 #returns -1 if not a triangle
        end
        return (self.side_a + self.side_b + self.side_c)
    end

    def area
        if self.test == 5
            return -1 #returns -1 if not a triangle
        end
        return (self.perimeter.to_f * 0.5)
    end
    
end

t = Triangle.new(20, 12, 16)
puts t.perimeter