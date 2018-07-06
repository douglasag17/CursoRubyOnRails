require "./list.rb"
require "./item.rb"

# agregar, remover, ver todos, marcar, borrar todos, salir

class ListApp
  attr_writer :lista

  def initialize
    @list = List.new
  end

  def run
    puts "Bienvenido a nuestra lista de compras"
    loop do
      puts "\n"
      puts "a - Agregar un articulo"
      puts "r - Remover un articulo"
      puts "v - Mostrar todos los articulos"
      puts "m - Marcar un articulo"
      puts "b - Borrar todos los articulos"
      puts "s - Salir de la app"
      input = gets.chomp

      case input
      when 'a'
        puts "Que deseas agregar?"
        item = gets.chomp
        @list.add_item(item)
        40.times { print "-"}
        puts "\n#{item} ha sido agregado a tu lista"
        40.times { print "-"}
      when 'v'
        @list.show_all
      when 'b'
        puts "Deseas remover todos los articulos? s/n"
        input = gets.chomp
        if input == 's'
          @list.remove_all
        else
          puts "Operación cancelada"
        end
      when 'r'
        puts "Numero de articulo que deseas remover"
        index = gets.chomp
        item = @list.remove_item(index.to_i)
        40.times { print "-"}
        puts "\n#{item.text} ha sido removido de tu lista"
        40.times { print "-"}
      when 'm'
        puts "Numero de articulo que deseas marcar"
        index = gets.chomp
        item = @list.checked_item(index.to_i)
        40.times { print "-"}
        puts "\n#{item.text} ha sido marcado"
        40.times { print "-"}
      when 's'
        break
      else
        puts "Operacion no reconocida"
      end
    end
    puts "Gracias por utilizar nuestra app"
  end

end

list_app = ListApp.new
list_app.run
