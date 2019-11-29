class Triangle

    def initialize(side_a=3, side_b=4, side_c=5)
        @side_a = side_a
        @side_b = side_b
        @side_c = side_c
    end

    def getSide_a
        return @side_a
    end
    
    def getSide_b
        return @side_b
    end
    
    def getSide_c
        return @side_c
    end

    def test
        if (@side_a+@side_b <= @side_c || @side_a+@side_c <= @side_b || @side_b+@side_c <= @side_a)
            return 5 #Not a triangle
        elsif ((@side_a**2)+(@side_b**2) == (@side_c**2) || (@side_a**2)+(@side_c**2) == (@side_b**2) || (@side_b**2)+(@side_c**2) == (@side_a**2))
            return 4 #Right triangle
        elsif (@side_a != @side_b && @side_b != @side_c && @side_a != @side_c)
            return 3 #Scalene triangle
        elsif ((@side_a == @side_b && @side_a != @side_c) || (@side_a == @side_c && @side_a != @side_b) || (@side_b == @side_c && @side_a != @side_b))
            return 2 #Isosceles triangle
        elsif (@side_a == @side_b && @side_a == @side_c)
            return 1 #Equilateral triangle
        end
    end

    def perimeter
        if self.test == 5
            return -1 #returns -1 if not a triangle
        end
        return (@side_a + @side_b + @side_c)
    end

    def area
        if self.test == 5
            return -1 #returns -1 if not a triangle
        end
        return (self.perimeter.to_f * 0.5)
    end
end

t = Triangle.new(2, 3, 5)
puts t.area