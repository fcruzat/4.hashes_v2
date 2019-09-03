# 6) Operaciones típicas sobre un hash
# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de
# este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro.
puts (restaurant_menu.values).max

# 2. Obtener el plato mas barato.
puts (restaurant_menu.values).min

# 3. Sacar el promedio del valor de los platos.
suma = 0
restaurant_menu.each do |llave,valor|
    suma += valor
end
puts suma / restaurant_menu.length

# 4. Crear un arreglo con solo los nombres de los platos.

array_platos = restaurant_menu.keys
print array_platos

## OPCIÓN MÁS LARGA

# arr = []
# restaurant_menu.each do |nombre,precio|
#     arr << nombre
# end
# print arr

# 5. Crear un arreglo con solo los valores de los platos.

array_valores = restaurant_menu.values
print array_valores

# OPCIÓN MÁS LARGA
# arr = []
# restaurant_menu.each do |nombre,precio|
#     arr << precio
# end
# print arr

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

restaurant_menu.each do |nombre,precio|
    restaurant_menu[nombre] = precio *= 1.19
 end
print restaurant_menu


# OTRA FORMA DE HACERLO

# new_hash = restaurant_menu.map { |key,value| [key,value*1.19]}
# print new_hash.to_h



# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.

restaurant_menu.each do |nombre,precio|
    restaurant_menu[nombre] = (precio *= 0.8) if (nombre.split).length > 1
 end
print restaurant_menu


# lorem = "lorem ipsum dolor sit amet"
# arreglo = lorem.split
# print arreglo 