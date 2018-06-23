num_array = [1, 2, 3, 4, 5]

num_array.each do |num|
  puts num
end

contacts_hash = {"Aldo" => 12345, "Pedro" => 6789, "Ana" => 555555}

contacts_hash.each do |key,value|
  puts "La llave es #{key} y el valor es #{value}"
end

# o asi cuando solo es una linea
# contacts_hash.each { |key,value| puts "La llave es #{key} y el valor es #{value}" }

#each para no hacer ciclos, es muy util
"Douglas".each_char { |chr| puts chr }

10.times do |time|
  puts "Este es el iterador times #{time}"
end