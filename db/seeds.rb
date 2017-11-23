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

user = User.new(email: 'caralopezrom@unal.edu.co', password: '123456', password_confirmation: '123456', student: 0, career: Career.find(32).name)
user.skip_confirmation!
user.save! 
user = User.new(email: 'calopezro@unal.edu.co', password: '123456', password_confirmation: '123456', student: 1, career: Career.find(32).name)
user.skip_confirmation!
user.save! 
user = User.new(email: 'dacherreragu@unal.edu.co ', password: '123456', password_confirmation: '123456', student: 0, career: Career.find(32).name)
user.skip_confirmation!
user.save! 

user = User.new(email: 'a@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save! 

user = User.new(email: 'b@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save! 

user = User.new(email: 'c@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save! 

user = User.new(email: 'd@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.first.name)
user.skip_confirmation!
user.save! 

user = User.new(email: 'e@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!


user = User.new(email: 'f@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'g@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'h@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'i@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'j@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'k@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'l@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'm@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'n@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'o@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'p@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'q@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'r@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 's@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 't@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'v@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'w@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'x@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!

user = User.new(email: 'y@mail.com', password: '123456', password_confirmation: '123456', student: 0, career: Career.last.name)
user.skip_confirmation!
user.save!


user = User.new(email: 'z@mail.com', password: '123456', password_confirmation: '123456', student: 1, career: Career.first.name)
user.skip_confirmation!
user.save!


free_subject = Subject.create(mid: 1000000, name: "Materia Libre", description: "Materia para guardar cursos libres.") #Materia por defecto
free_group = free_subject.groups.create(name: "Grupos Libres") #Grupo en el que se guardarán los equipos que harán de grupos libres
free_group.teams.create(name: "Wagon-dev", max_member: 4, description: "Equipo libre 1", group_id: 1, min_member: 2)
free_group.teams.create(name: "Rails s", max_member: 2, description: "Equipo libre 2", group_id: 1, min_member: 2)
free_group.teams.create(name: "ITs OK", max_member: 5, group_id: 1, min_member: 2)
free_group.teams.create(name: "Ingesoft Libre", max_member: 12, group_id: 1, min_member: 2)
free_group.teams.create(name: "Grupo libre n", max_member: 15, group_id: 1, min_member: 2)

Member.create(user_id: 1, team_id: 1, level: 3)
Member.create(user_id: 2, team_id: 1, level: 2)
Member.create(user_id: 3, team_id: 1, level: 1)
Member.create(user_id: 4, team_id: 1, level: 1)

Member.create(user_id: 1, team_id: 2, level: 3)
Member.create(user_id: 2, team_id: 2, level: 1)

Member.create(user_id: 1, team_id: 3, level: 1)
Member.create(user_id: 2, team_id: 3, level: 1)
Member.create(user_id: 3, team_id: 3, level: 3)
Member.create(user_id: 4, team_id: 3, level: 2)


m2 = Subject.create(mid: 2025975, name: "Introducción a la Ingeniería de Sistemas y Computación", description: "none")
m2.groups.create(name: "Grupo #1")
m2.groups.create(name: "Grupo #2")
m3 = Subject.create(mid: 2015734, name: "Programación de Computadores", description: "none")
m3.groups.create(name: "Grupo #1")
m3.groups.create(name: "Grupo #2")
m4 = Subject.create(mid: 1000019, name: "Fundamentos de Mecánica", description: "none")
m4.groups.create(name: "Grupo #1")
m4.groups.create(name: "Grupo #2")
m5 = Subject.create(mid: 1000005, name: "Cálculo Integral", description: "none")
m5.groups.create(name: "Grupo #1")
m5.groups.create(name: "Grupo #2")
m6 = Subject.create(mid: 1000003, name: "Álgebra Lineal", description: "none")
m6.groups.create(name: "Grupo #1")
m6.groups.create(name: "Grupo #2")
m7 = Subject.create(mid: 2016375, name: "Programación Orientada a Objetos", description: "N.A")
m7.groups.create(name: "Grupo #1")
m7.groups.create(name: "Grupo #2")
m8 = Subject.create(mid: 1000013, name: "Probabilidad y Estadística Fundamental", description: "N.A")
m8.groups.create(name: "Grupo #1")
m8.groups.create(name: "Grupo #2")
m9 = Subject.create(mid: 1000006, name: "Cálculo en Varias Variables", description: "N.A")
m9.groups.create(name: "Grupo #1")
m9.groups.create(name: "Grupo #2")
m10 = Subject.create(mid: 2025963, name: "Matemáticas Discretas I", description: "N.A")
m10.groups.create(name: "Grupo #1")
m10.groups.create(name: "Grupo #2")
m11 = Subject.create(mid: 2016353, name: "Bases de Datos", description: "N.A")
m11.groups.create(name: "Grupo #1")
m11.groups.create(name: "Grupo #2")
m12 = Subject.create(mid: 2016698, name: "Elementos de Computadores", description: "N.A")
m12.groups.create(name: "Grupo #1")
m12.groups.create(name: "Grupo #2")
m13 = Subject.create(mid: 1000017, name: "Fundamentos de Electricidad y Magnetismo", description: "N.A")
m13.groups.create(name: "Grupo #1")
m13.groups.create(name: "Grupo #2")
m14 = Subject.create(mid: 2015703, name: "Ingeniería Económica", description: "N.A")
m14.groups.create(name: "Grupo #1")
m14.groups.create(name: "Grupo #2")
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
m29 = Subject.create(mid: 2025969, name: "Modelos Estocásticos y Simulación en Computación y Comunicaciones", description: "")
m29.groups.create(name: "Grupo#1")
m30 = Subject.create(mid: 2025994, name: "Teoría de la Información y Sistemas de Comunicación", description: "ninguna")
m30.groups.create(name: "Grupo#1")
m31 = Subject.create(mid: 2016703, name: "Pensamiento Sistémico", description: "ninguna")
m31.groups.create(name: "Grupo#1")
m32 = Subject.create(mid: 2025966, name: "Lenguajes de Programación", description: "ninguna")
m32.groups.create(name: "Grupo#1")
m33 = Subject.create(mid: 2025995, name: "Introducción a los Sistemas Inteligentes", description: "ninguna")
m33.groups.create(name: "Grupo#1")
m34 = Subject.create(mid: 2025968, name: "Computación Paralela y Distribuida", description: "ninguna")
m34.groups.create(name: "Grupo#1")
m35 = Subject.create(mid: 2025960, name: "Computación Visual", description: "ninguna")
m35.groups.create(name: "Grupo#1")
m36 = Subject.create(mid: 2024045, name: "Taller de Proyectos Interdisciplinarios", description: "ninguna")
m36.groups.create(name: "Grupo#1")
m37 = Subject.create(mid: 2025983, name: "Arquitectura de Infraestructura y Gobierno de TICs", description: "ninguna")
m37.groups.create(name: "Grupo#1")
m38 = Subject.create(mid: 2025972, name: "Introducción a la Criptografía y a la Seguridad de la Información", description: "ninguna")
m38.groups.create(name: "Grupo#1")

m1 = Subject.create(mid: 1000004, name: "Cálculo Diferencial", description: 'none')
g1 = m1.groups.create(name: "Grupo #1")
g1.teams.create(name: "Equipo #1", max_member: 3, description: "Team seed", group_id: 2, min_member: 2)



Inscription.create(user_id:1 , group_id:2 )
Inscription.create(user_id:1 , group_id:4 )
Inscription.create(user_id:1 , group_id:6 )
Inscription.create(user_id:1 , group_id:9 )
Inscription.create(user_id:1 , group_id:11 )
Inscription.create(user_id:1 , group_id:13 )
Inscription.create(user_id:1 , group_id:15 )
Inscription.create(user_id:2 , group_id:2 )
Inscription.create(user_id:2 , group_id:4 )
Inscription.create(user_id:2 , group_id:6 )
Inscription.create(user_id:2 , group_id:9 )
Inscription.create(user_id:2 , group_id:11 )
Inscription.create(user_id:2 , group_id:13 )
Inscription.create(user_id:2 , group_id:15 )
Inscription.create(user_id:3 , group_id:1 )
Inscription.create(user_id:3 , group_id:3 )
Inscription.create(user_id:3 , group_id:5 )
Inscription.create(user_id:3 , group_id:7 )
Inscription.create(user_id:3 , group_id:8 )
Inscription.create(user_id:3 , group_id:10 )
Inscription.create(user_id:3 , group_id:12 )
Inscription.create(user_id:4 , group_id:2 )
Inscription.create(user_id:4 , group_id:3 )
Inscription.create(user_id:5 , group_id:1 )
Inscription.create(user_id:5 , group_id:2 )
Inscription.create(user_id:6 , group_id:1 )
Inscription.create(user_id:6 , group_id:2 )
Inscription.create(user_id:7 , group_id:1 )
Inscription.create(user_id:7 , group_id:2 )
Inscription.create(user_id:8 , group_id:1 )
Inscription.create(user_id:8 , group_id:2 )
Inscription.create(user_id:9 , group_id:1 )
Inscription.create(user_id:9 , group_id:2 )
Inscription.create(user_id:10 , group_id:1 )
Inscription.create(user_id:10 , group_id:2 )
Inscription.create(user_id:11 , group_id:1 )
Inscription.create(user_id:11 , group_id:2 )
Inscription.create(user_id:12 , group_id:1 )
Inscription.create(user_id:12 , group_id:2 )
Inscription.create(user_id:13 , group_id:1 )
Inscription.create(user_id:13 , group_id:2 )
Inscription.create(user_id:14 , group_id:1 )
Inscription.create(user_id:14 , group_id:2 )
Inscription.create(user_id:15 , group_id:1 )
Inscription.create(user_id:15 , group_id:2 )
Inscription.create(user_id:16 , group_id:1 )
Inscription.create(user_id:16 , group_id:2 )
Inscription.create(user_id:17 , group_id:1 )
Inscription.create(user_id:17 , group_id:2 )
Inscription.create(user_id:18 , group_id:1 )
Inscription.create(user_id:18 , group_id:2 )
Inscription.create(user_id:19 , group_id:1 )
Inscription.create(user_id:19 , group_id:2 )
Inscription.create(user_id:20 , group_id:1 )
Inscription.create(user_id:20 , group_id:2 )
