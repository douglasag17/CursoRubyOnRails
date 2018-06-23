class PerroConAtributos
    #attr_reader :raza, :color, :edad
    #attr_writer :color
    attr_accessor :color, :raza, :edad

    def initialize(raza, color, edad)
      @raza = raza
      @color = color
      @edad = edad
    end

    def ladrar
      puts "Guau guau guau"
    end

    def to_s
      "Soy de raza #{@raza} de color #{@color} y tengo #{@edad}"
    end

end
