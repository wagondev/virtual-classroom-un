# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Career.create(name: 'Administración de Empresas')
Career.create(name: 'Antropología')
Career.create(name: 'Arquitectura')
Career.create(name: 'Artes Plásticas')
Career.create(name: 'Biología')
Career.create(name: 'Ciencia Política')
Career.create(name: 'Cine y Televisión')
Career.create(name: 'Contaduría Pública')
Career.create(name: 'Derecho')
Career.create(name: 'Diseño Gráfico')
Career.create(name: 'Diseño Industrial')
Career.create(name: 'Economía')
Career.create(name: 'Enfermería')
Career.create(name: 'Español y Filología Clásica')
Career.create(name: 'Estadística')
Career.create(name: 'Estudios Literarios')
Career.create(name: 'Farmacia')
Career.create(name: 'Filología e Idiomas - Español y Humanidades Básicas')
Career.create(name: 'Filología e Idiomas Alemán')
Career.create(name: 'Filología e Idiomas Francés')
Career.create(name: 'Filología e Idiomas Inglés')
Career.create(name: 'Filosofía')
Career.create(name: 'Física')
Career.create(name: 'Fisioterapia')
Career.create(name: 'Fonoaudiología')
Career.create(name: 'Geografía')
Career.create(name: 'Geología')
Career.create(name: 'Historia')
Career.create(name: 'Ingeniería Agrícola')
Career.create(name: 'Ingeniería Agronómica')
Career.create(name: 'Ingeniería Civil')
Career.create(name: 'Ingeniería de Sistemas y Computación')
Career.create(name: 'Ingeniería Eléctrica')
Career.create(name: 'Ingeniería Electrónica')
Career.create(name: 'Ingeniería Industrial')
Career.create(name: 'Ingeniería Mecánica')
Career.create(name: 'Ingeniería Mecatrónica')
Career.create(name: 'Ingeniería Química')
Career.create(name: 'Lingüística')
Career.create(name: 'Matemáticas')
Career.create(name: 'Medicina')
Career.create(name: 'Medicina Veterinaria')
Career.create(name: 'Música')
Career.create(name: 'Música Instrumental')
Career.create(name: 'Nutrición y Dietética')
Career.create(name: 'Odontología')
Career.create(name: 'Psicología')
Career.create(name: 'Química')
Career.create(name: 'Sociología')
Career.create(name: 'Terapia Ocupacional')
Career.create(name: 'Trabajo Social')
Career.create(name: 'Zootecnia')

free_subject = Subject.create(mid: 1000000, name: "Materia Libre", description: "Materia para guardar cursos libres.") #Materia por defecto
<<<<<<< Updated upstream
Subject.create(mid: 1000004, name: "Cálculo Diferencial", description: 'none')
Subject.create(mid: 2025975, name: "Introducción a la Ingeniería de Sistemas y Computación", description: "none")
Subject.create(mid: 2015734, name: "Programación de Computadores", description: "none")
Subject.create(mid: 1000019, name: "Fundamentos de Mecánica", description: "none")
Subject.create(mid: 1000005, name: "Cálculo Integral", description: "none")
Subject.create(mid: 1000003, name: "Álgebra Lineal", description: "none")
Subject.create(mid: 2016375, name: "Programación Orientada a Objetos", description: "N.A")
Subject.create(mid: 1000013, name: "Probabilidad y Estadística Fundamental", description: "N.A")
Subject.create(mid: 1000006, name: "Cálculo en Varias Variables", description: "N.A")
Subject.create(mid: 2025963, name: "Matemáticas Discretas I", description: "N.A")
Subject.create(mid: 2016353, name: "Bases de Datos", description: "N.A")
Subject.create(mid: 2016698, name: "Elementos de Computadores", description: "N.A")
Subject.create(mid: 1000017, name: "Fundamentos de Electricidad y Magnetismo", description: "N.A")
Subject.create(mid: 2015703, name: "Ingeniería Económica", description: "N.A")
Subject.create(mid: 2025964, name: "Matemáticas Discretas II", description: "N.A")
Subject.create(mid: 2016699, name: "Estructuras de Datos", description: "N.A")
Subject.create(mid: 2016697, name: "Arquitectura de Computadores", description: "N.A")
Subject.create(mid: 2025970, name: "Modelos y Simulación", description: "")
Subject.create(mid: 2015702, name: "Gerencia y Gestión de Proyectos", description: "")
Subject.create(mid: 2025967, name: "Redes de Computadores", description: "")
Subject.create(mid: 2016701, name: "Ingeniería de Software I", description: "")
Subject.create(mid: 2015174, name: "Introducción a la Teoría de la Computación", description: "")
Subject.create(mid: 2025971, name: "Optimización", description: "")
Subject.create(mid: 2015970, name: "Métodos Numéricos", description: "")
Subject.create(mid: 2025982, name: "Sistemas de Información", description: "")
Subject.create(mid: 2016702, name: "Ingeniería de Software II", description: "")
Subject.create(mid: 2016696, name: "Algoritmos", description: "")
Subject.create(mid: 2016707, name: "Sistemas Operativos", description: "")
Subject.create(mid: 2025969, name: "Modelos Estocásticos y Simulación en Computación y Comunicaciones", description: "")
Subject.create(mid: 2025994, name: "Teoría de la Información y Sistemas de Comunicación", description: "ninguna")
Subject.create(mid: 2016703, name: "Pensamiento Sistémico", description: "ninguna")
Subject.create(mid: 2025966, name: "Lenguajes de Programación", description: "ninguna")
Subject.create(mid: 2025995, name: "Introducción a los Sistemas Inteligentes", description: "ninguna")
Subject.create(mid: 2025968, name: "Computación Paralela y Distribuida", description: "ninguna")
Subject.create(mid: 2025960, name: "Computación Visual", description: "ninguna")
Subject.create(mid: 2024045, name: "Taller de Proyectos Interdisciplinarios", description: "ninguna")
Subject.create(mid: 2025983, name: "Arquitectura de Infraestructura y Gobierno de TICs", description: "ninguna")
Subject.create(mid: 2025972, name: "Introducción a la Ctiptografía y a la Seguridad de la Información", description: "ninguna")

free_subject.groups.create(name: "Grupo Libre")
=======
free_subject.groups.create(name: "Grupo Libre")

m1 = Subject.create(mid: 1000004, name: "Cálculo Diferencial", description: 'none')
m1.groups.create(name: "Grupo #1")
m2 = Subject.create(mid: 2025975, name: "Introducción a la Ingeniería de Sistemaas y Computación", description: "none")
m2.groups.create(name: "Grupo #1")
m3 = Subject.create(mid: 2015734, name: "Programación de Computadores", description: "none")
m3.groups.create(name: "Grupo #1")
m4 = Subject.create(mid: 1000019, name: "Fundamentos de Mecánica", description: "none")
m4.groups.create(name: "Grupo #1")
m5 = Subject.create(mid: 1000005, name: "Cálculo Integral", description: "none")
m5.groups.create(name: "Grupo #1")
m6 = Subject.create(mid: 1000003, name: "Álgebra Lineal", description: "none")
m6.groups.create(name: "Grupo #1")
m7 = Subject.create(mid: 2016375, name: "Programación Orientada a Objetos", description: "N.A")
m7.groups.create(name: "Grupo #1")
m8 = Subject.create(mid: 1000013, name: "Probabilidad y Estadística Fundamental", description: "N.A")
m8.groups.create(name: "Grupo #1")
m9 = Subject.create(mid: 1000006, name: "Cálculo en Varias Variables", description: "N.A")
m9.groups.create(name: "Grupo #1")
m10 = Subject.create(mid: 2025963, name: "Matemáticas Discretas I", description: "N.A")
m10.groups.create(name: "Grupo #1")
m11 = Subject.create(mid: 2016353, name: "Bases de Datos", description: "N.A")
m11.groups.create(name: "Grupo #1")
m12 = Subject.create(mid: 2016698, name: "Elementos de Computadores", description: "N.A")
m12.groups.create(name: "Grupo #1")
m13 = Subject.create(mid: 1000017, name: "Fundamentos de Electricidad y Magnetismo", description: "N.A")
m13.groups.create(name: "Grupo #1")
m14 = Subject.create(mid: 2015703, name: "Ingeniería Económica", description: "N.A")
m14.groups.create(name: "Grupo #1")
m15 = Subject.create(mid: 2025964, name: "Matemáticas Discretas II", description: "N.A")
m15.groups.create(name: "Grupo #1")
m16 = Subject.create(mid: 2016699, name: "Estructuras de Datos", description: "N.A")
m16.groups.create(name: "Grupo #1")
m17 = Subject.create(mid: 2016697, name: "Arquitectura de Computadores", description: "N.A")
m17.groups.create(name: "Grupo #1")
m18 = Subject.create(mid: 2025970, name: "Modelos y Simulación", description: "")
m18.groups.create(name: "Grupo #1")
m19 = Subject.create(mid: 2015702, name: "Gerencia y Gestión de Proyectos", description: "")
m19.groups.create(name: "Grupo #1")
m20 = Subject.create(mid: 2025967, name: "Redes de Computadores", description: "")
m20.groups.create(name: "Grupo #1")
m21 = Subject.create(mid: 2016701, name: "Ingeniería de Software I", description: "")
m21.groups.create(name: "Grupo #1")
m22 = Subject.create(mid: 2015174, name: "Introducción a la Teoría de la Computación", description: "")
m22.groups.create(name: "Grupo #1")
m23 = Subject.create(mid: 2025971, name: "Optimización", description: "")
m23.groups.create(name: "Grupo #1")
m24 = Subject.create(mid: 2015970, name: "Métodos Numéricos", description: "")
m24.groups.create(name: "Grupo #1")
m25 = Subject.create(mid: 2025982, name: "Sistemas de Información", description: "")
m25.groups.create(name: "Grupo #1")
m26 = Subject.create(mid: 2016702, name: "Ingeniería de Software II", description: "")
m26.groups.create(name: "Grupo #1")
m27 = Subject.create(mid: 2016696, name: "Algoritmos", description: "")
m27.groups.create(name: "Grupo #1")
m28 = Subject.create(mid: 2016707, name: "Sistemas Operativos", description: "")
m28.groups.create(name: "Grupo#1")
m29 = Subject.create(mid: 2025969, name: "Modelos ESTOCASTICOS Y SIMULACION EN COMPUTACION Y COMUNICACIONES", description: "")
m29.groups.create(name: "Grupo#1")
m30 = Subject.create(mid: 2025994, name: "Teoría de la Información y Sistemas de Comunicación", description: "ninguna")
m30.groups.create(name: "Grupo#1")
m31 = Subject.create(mid: 2016703, name: "PENSAMIENTO SISTEMICO", description: "ninguna")
m31.groups.create(name: "Grupo#1")
m32 = Subject.create(mid: 2016716, name: "OPTATIVA EN METODOS Y TECNOLOGIAS DE SOFTWARE", description: "ninguna")
m32.groups.create(name: "Grupo#1")
m33 = Subject.create(mid: 2025966, name: "LENGUAJES DE PROGRAMACION", description: "ninguna")
m33.groups.create(name: "Grupo#1")
m34 = Subject.create(mid: 2025995, name: "SISTEMAS INTELIGENTES", description: "ninguna")
m33.groups.create(name: "Grupo#1")
m35 = Subject.create(mid: 2025968, name: "COMPUTACION PARALELA Y DISTRIBUIDA", description: "ninguna")
m35.groups.create(name: "Grupo#1")
m36 = Subject.create(mid: 2025960, name: "COMPUTACION VISUAL", description: "ninguna")
m36.groups.create(name: "Grupo#1")
m37 = Subject.create(mid: 2024045, name: "TALLER DE PROYECTOS INTERDISCIPLINARIOS", description: "ninguna")
m37.groups.create(name: "Grupo#1")
m38 = Subject.create(mid: 2025983, name: "ARQUITECTURA DE INFRAESTRUCTURA Y GOBIERNO DE TICS", description: "ninguna")
m38.groups.create(name: "Grupo#1")
m39 = Subject.create(mid: 2025972, name: "CRIPTOGRAFIA Y SEGURIDAD DE LA INFORMACION", description: "ninguna")
m39.groups.create(name: "Grupo#1")

>>>>>>> Stashed changes
