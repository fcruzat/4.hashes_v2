# 3) Operaciones básicas
# Dado el hash:
h = {"x": 1, "y":2}

# - Agregar el string z con el valor 3.
h['z'] = 3
# - Cambiar el valor de x por 5.
h[:x] = 5
# - Eliminar la clave y.
h.delete(:y)
# - Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts "yeeah" if h['z']

# FUNCIONA CON UN INCLUDE TAMBIÉN 

# - Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
# Ejemplo:
# x = {"a": "hola" }
# Se transforme en:
# x = {"hola": "a"}

h = h.invert
print h