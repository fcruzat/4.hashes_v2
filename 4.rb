# 4) Array y Hashes
# Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide generar un hash
# con el nombre y edad de cada persona (se asume que no existen dos personas con el mismo
# nombre)
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
# 4.1. Se pide generar un hash con la información:
# personas_hash = {"Carolina": 32, "Alejandro":28, "María Jesús":41, "Valentín":19}

personas_hash = personas.zip(edades).to_h
print personas_hash

# 4.2. Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como
# argumento.

def average(edades)
    suma = 0
    edades.each do |clave,valor|
        suma += valor
    end
    puts suma / (edades.length).to_f
end
average(personas_hash)
