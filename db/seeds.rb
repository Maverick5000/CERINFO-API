# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
   Genero.create( nombre_genero: Faker::Book.genre, abreviatura_genero: Faker::Types.rb_string) 
end

50.times do
    Editorial.create( nombre_editorial: Faker::Book.publisher)
    Autor.create( nombre_autor: Faker::Book.author)
    Sigtop.create(localidad_sigtop: Faker::Address.country, dewey_sigtop:Faker::Lorem.words(5) , cuter_sigtop:Faker::Lorem.words(5) )
    Idioma.create(significado_idioma: Faker::Nation.language, abreviatura_idioma:Faker::Types.rb_string )
    Material.create(significado_material:Faker::Science.element , abreviatura_material:Faker::Types.rb_string)
    Usuario.create(nombre_usuario: Faker::Name.first_name, paterno_usuario:Faker::Name.last_name, materno_usuario:Faker::Name.last_name, registro_usuario:Faker::Number.number(10), tipo_usuario:Faker::Military.air_force_rank, password:Faker::Number.number(5), email: Faker::Internet.free_email)
end

50.times do
     @editorial = Editorial.order("random()").limit(1)
     @autor = Autor.order("random()").limit(1)
     @genero = Genero.order("random()").limit(1)
     @idioma = Idioma.order("random()").limit(1)
     @sigtop = Sigtop.order("random()").limit(1)
     @material = Material.order("random()").limit(1)
     Libro.create(titulo_libro:Faker::Book.title, tomo_libro:Faker::Number.number(1), area_libro:Faker::Types.rb_string, edicion_libro:Faker::Number.number(1), ano_libro:Faker::Date.backward(36500), lugar_publicacion_libro:Faker::Address.country, ano_publicacion_libro:Faker::Date.backward(36500), autor:@autor.first, genero:@genero.first, idioma:@idioma.first, sigtop:@sigtop.first, editorial:@editorial.first, material:@material.first)
end

50.times do
    @usuario = Usuario.order("random()").limit(1)
    @libro = Libro.order("random()").limit(1)
    Usuario.create(nombre_usuario: Faker::Name.first_name, paterno_usuario:Faker::Name.last_name, materno_usuario:Faker::Name.last_name, registro_usuario:Faker::Number.number(10), tipo_usuario:Faker::Military.air_force_rank)
    Prestamo.create(fecha_devolucion:Faker::Date.backward(100), fecha_prestamo:Faker::Date.backward(100), dias_prestados:Faker::Number.number(2), libro:@libro.first, usuario:@usuario.first)
    Bloqueo.create(fecha_bloqueo:Faker::Date.backward(100), detalle_bloqueo:Faker::Lorem.words(5), monto_bloqueo:Faker::Number.decimal(2), usuario:@usuario.first)
    Multa.create(estado_multa:Faker::Lorem.words(1), detalle_multa:Faker::Lorem.words(5), monto_multa:Faker::Number.decimal(2), usuario:@usuario.first, libro:@libro.first)
end





