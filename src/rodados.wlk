import trafic.blanco

class ChevroletCorsa {
	var color

	const velocidadMaxima = 150
	const peso = 1300
	method capacidad(){
		return 4
	}
	method velocidadMaxima(){
		return velocidadMaxima
	}
	method color(){
		return color
	}
	method setColor(colorStr){
		color = colorStr
	}
	method peso(){
		return peso
	}
}
class RenaultKwid {
	var tanqueAdicional
	const color = azul
	const capacidad = 3
	const velocidadMaxima = 110
	const peso = 1200
	method setTanqueAdicional(condicion){
		tanqueAdicional = condicion
	}
	method capacidad(){
		return if(tanqueAdicional){capacidad} else {capacidad + 1}
	}
	method velocidadMaxima(){
		return if(tanqueAdicional){velocidadMaxima + 10} else{velocidadMaxima}
	}
	method color(){return color}
	method peso(){
		return if(tanqueAdicional){peso+150} else{peso}
	}
}
class AutosEspeciales {
	var capacidad
	var velocidadMaxima
	var color
	var peso
	method capacidad(){return capacidad}
	method velocidadMaxima(){return velocidadMaxima}
	method color(){return color}
	method peso(){return peso}
	method setCapacidad(nuevaCapacidad){
		capacidad = nuevaCapacidad
	}
	method setVelocidad(nuevaVelocidad){
		velocidadMaxima = nuevaVelocidad
	}
	method setColor(nuevoColor){
		color = nuevoColor
	}
	method setPeso(nuevoPeso){
		peso = nuevoPeso
	}
}
object rojo{}
object azul{}
object beige{}
object verde{}
