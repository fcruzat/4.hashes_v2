# Desafíos Opcionales
# Realiza estos desafíos si ya finalizaste el bloque anterior.
# Opcional 
# 1) Ejercicios de bloques en Arrays
# Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1. Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map {|m| m+=1}
print b
# 2. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
c = a.map {|m| m.to_f}
print c
# 3. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
d = a.map {|m| m.to_s}
print d
# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
e = a.reject {|m| m < 5}
print e
# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
f = a.select {|m| m < 5}
print f
# 6. Utilizando inject obtener la suma de todos los elementos del array.
g = a.inject {|sum,numero| sum+numero} 
print g
# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son
# impares es otro grupo).
h = a.group_by {|m| m % 2 == 0}
print h
# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.
i = a.group_by {|m| m > 6}
print i