# 7) Ejercicio completo con un hash
# Se tiene un hash con el inventario de un negocio de computadores.
# inventario = {"Notebooks": 4, "Pc": 6, "Routers": 10, "Impresoras": 6}
# Se pide:
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el
# programa realizará distintas funciones.

# - Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash.
# Para separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"

# - Si el usuario ingresa 2, podrá eliminar un item.
# - Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# - Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el
# negocio.
# - Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# - Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario
# o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).

inventario = {"Notebooks": 4, "Pc": 6, "Routers": 10, "Impresoras": 6}

# BIEN
def opcion1(inventario)
    puts "Ingresa un item y su stock, separado por una coma"
    itemstock = gets.chomp
    arr = itemstock.split(',')
    p producto = (arr[0].to_sym).capitalize
    inventario[producto] = arr[1].to_i
    print inventario
end

# MAL
def opcion2(inventario)
  
    puts "Escriba el número del producto que usted quiera eliminar:"
    
    eliminar = (gets.chomp).to_i
    inventario_array = inventario.to_a
    if inventario_array.include?(inventario_array[eliminar])
        inventario_array.delete(inventario_array[eliminar]) 
        print inventario_array.to_h
    else
        puts "Número incorrecto, intente nuevamente"
    end
end
# inventario.delete(inventario[eliminar])
# print inventario

# INCOMPLETO
def opcion3(inventario)
    puts "Ingrese el item al que desea cambiarle el stock:"
    item_name = (gets.chomp.to_sym).capitalize
    
    if inventario.include?(item_name)
        puts "Ingrese el nuevo stock que tiene el item:"
        new_stock = gets.chomp.to_i
        inventario[item_name] = new_stock
        print inventario
    else
        puts "Producto incorrecto, intente nuevamente"
    end 
end
# puts "Ingrese el item al que desea cambiarle el nombre:"
# item_name = (gets.chomp.to_sym).capitalize


# BIEN
def opcion4(inventario)
    sum = 0
    inventario.each do |llave,valor|
        sum += valor
    end
    
    puts "El stock total de la tienda es: #{sum}"
end

# BIEN
def opcion5(inventario)
    a = inventario.max
    puts "#{a[0]} es el producto con más Stock de la tienda, con #{a[1]} productos"
end

# BIEN
def opcion6(inventario)
    puts "Ingrese el nombre del item que quiere saber si está presente en la tienda:"
    item_name = (gets.chomp.to_sym).capitalize
    
    if inventario.include?(item_name)
        puts "Si"
    else
        puts "Este item no está presente, intente con otro"
    end
end

# MENÚ
menu_num = 1
while menu_num != 7

    puts "\n\nProductos:\n"
    num = -1
    inventario.each do |llave,valor|
        num += 1
        puts "#{num}. #{llave}, Stock: #{valor}"
    end
    puts "\n\nMenú:
    1.Ingrese el número 1 para agregar un producto junto a su stock.
    2.Ingrese el número 2 para eliminar un producto.
    3.Ingrese el número 3 para actualizar el nombre del item y el stock de un producto.
    4.Ingrese el número 4 para ver el stock total que hay en la tienda.
    5.Ingrese el número 5 para ver que item tiene la mayor cantidad de stock.
    6.Ingrese el número 6 para preguntar por la existencia de un item en la tienda.\n\n"
    puts "Ingrese un número del 1 al 6, Escriba 7 para salir"
    menu_num = (gets.chomp).to_i
    
    if menu_num == 1
        opcion1(inventario)
    elsif menu_num == 2
        opcion2(inventario)
    elsif menu_num == 3
        opcion3(inventario)
    elsif menu_num == 4
        opcion4(inventario)
    elsif menu_num == 5
        opcion5(inventario)
    elsif menu_num == 6
        opcion6(inventario)
    elsif menu_num == 7
        puts "Adiós"
    else
        puts "Número incorrecto"
    end
end
    