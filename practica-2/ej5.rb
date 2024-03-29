#!/usr/bin/ruby
=begin
Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto Time y que calcule la cantidad de minutos que faltan para ese momento. Si el parámetro de fecha no es provisto, asumí que la consulta es para la medianoche de hoy.
Por ejemplo:
   cuanto_falta? Time.new(2017, 12, 31, 23, 59, 59)
   # Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2017
   cuanto_falta?
   # Debe retornar la cantidad de minutos que faltan para la medianoche de hoy
=end
def cuanto_falta?(time = Time.new( Time.now.year, Time.now.month, Time.now.day + 1, 0,0,0))
   (time - Time.now).fdiv(60)
end
p cuanto_falta?(Time.new(2019, 9, 9, 13, 40, 51))
p cuanto_falta?
