import rodados.*
import trafic.*
class Dependencia {
	
	var flotaDeRodados = []
	var cantEmpleados
	
	method empleados(){return cantEmpleados}
	method setCantEmpleados(cantidad){
		cantEmpleados = cantidad
	}
	method agregarAFlota(rodado){
		flotaDeRodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		flotaDeRodados.remove(rodado)
	}
	method pesoTotalFlota(){
		return flotaDeRodados.sum({
			rod => rod.peso()
		})
	}
	method estaBienEquipada(){
		return flotaDeRodados.size()>=3 and 
			flotaDeRodados.all({
				rod => rod.velocidadMaxima()>=100
			})
	}
	method capacidadTotalEnColor(color){
		return flotaDeRodados.filter({
			rod => rod.color()==color
		}).sum({rod=>rod.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flotaDeRodados.max({
			rod => rod.velocidadMaxima()
		}).color()
	}
	method capacidadFaltante(){
		return cantEmpleados - flotaDeRodados.sum({rod => rod.capacidad()})
	}
	method esGrande(){
		return cantEmpleados>=40 and flotaDeRodados.size()>=5
	}
}
