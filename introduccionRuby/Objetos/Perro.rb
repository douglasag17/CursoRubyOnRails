class Perro
    def initialize(raza, color, edad)
        @raza = raza
        @color = color
        @edad = edad
    end

    def raza
        @raza
        #El return implicito el la ultima linea de codigo
    end

    def color
        @color
    end

    def edad
        @edad
    end
end

perro = Perro.new("Pastor", "negro", "5 años")

puts perro.raza
puts perro.color
puts perro.edad
