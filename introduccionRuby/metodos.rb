def saludar(nombre, saludo)
  puts "Hola #{nombre} #{saludo}"
end

print "introduce tu nombre: "
nombre = gets.chomp
saludar(nombre, "buen dia")

def suma(num1, num2)
  suma = num1 + num2
  return suma
end

num1 = 92
num2 = 88
resultado = suma(num1, num2)
puts "La suma de #{num1} y #{num2} es #{resultado}"

def resta(num1, num2)
  resta = num1 - num2
  return resta
end

resultado = resta(num1, num2)
puts "La resta de #{num1} y #{num2} es #{resultado}"
