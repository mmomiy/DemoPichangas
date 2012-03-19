# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dMiraflores = Distrito.create(nombre:'Miraflores')
dSurco = Distrito.create(nombre:'Surco')

cMiCancha = 
Cancha.create(nombre:'Mi Canchita', direccion:'Av Larco', latitud:37.771008, 
	longitud:-122.41175, foto:'', preciohora:120, distrito:dMiraflores)
cMiLoza = 
Cancha.create(nombre:'Mi Loza', direccion:'Av Primavera', latitud:-12.088465, 
	longitud:-76.981893,  foto:'', preciohora:90, distrito:dSurco)

jAlex = Jugador.create(nombre:'Alex')
jEdwin = Jugador.create(nombre:'Edwin')


pA = Pichanga.create(titulo:'Pichanga UPC', nrojugadores:10, precio:240, nrohoras:2, 
	fechainicio:DateTime.new(2012, 3, 25, 20, 0, 0), fechafin:DateTime.new(2012, 3, 25, 22, 59, 59), 
	comentario:'', estado:'RE',jugador:jAlex, cancha:cMiCancha)

pB = Pichanga.create(titulo:'Jugamos', nrojugadores:10, precio:240, nrohoras:2, 
	fechainicio:DateTime.new(2012, 3, 25, 20, 0, 0), fechafin:DateTime.new(2012, 3, 25, 22, 59, 59), 
	comentario:'', estado:'RE',jugador:jAlex, cancha:cMiCancha)

pC = Pichanga.create(titulo:'Un rapidito', nrojugadores:10, precio:240, nrohoras:2, 
	fechainicio:DateTime.new(2012, 3, 25, 20, 0, 0), fechafin:DateTime.new(2012, 3, 25, 22, 59, 59), 
	comentario:'', estado:'RE',jugador:jAlex, cancha:cMiCancha)

Detallepichanga.create(pichanga: pA, jugador: jAlex, montojugador:24.00, flagparticipo:false)
Detallepichanga.create(pichanga: pA, jugador: jEdwin, montojugador:24.00, flagparticipo:false)
