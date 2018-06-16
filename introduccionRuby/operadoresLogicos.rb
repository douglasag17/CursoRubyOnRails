def evaluar(calificacion)
  if calificacion == 0 || calificacion == 1
    print "No estudiaste nada"
  elsif calificacion >= 2 && calificacion <= 6
    print "Reprobaste"
  elsif calificacion == 7 || calificacion == 8
    print "Apenas pasaste"
  elsif calificacion == 9
    print "Aprobaste"
  elsif calificacion == 10
    print "Felicitaciones sacaste 10"
  else
    print "Esa calificacion no es valida"
  end
end

print "Dime tu calificacion: "
calificacion = gets.to_i

evaluar(calificacion)
