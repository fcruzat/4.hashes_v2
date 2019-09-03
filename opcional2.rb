# Opcional 
# 2) Arrays y strings
# Dado el arreglo
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Se pide:

# Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
nombres_2 = nombres.select {|x| x.length > 5}
print nombres_2
# Utilizando .map crear una arreglo con los nombres en minúscula.
minuscula = nombres.map {|x| x.downcase}
print minuscula
# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
p = nombres.select {|x| x.chr == 'P'}
print p
# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
letras = nombres.map {|x| x.length}
print letras
# Utilizando .map y .gsub eliminar las vocales de todos los nombres.
vocales = nombres.map {|x| x.gsub(/[aeiouAEIOU]/, '') }
print vocales
