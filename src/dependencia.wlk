class Dependencia {
	
	var flotaDeRodados = []
	var empleados
	
	method empleados(){return empleados}
	method setCantEmpleados(cantidad){
		empleados = cantidad
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
		return flotaDeRodados.find({
			rod => rod.color()==color
		}).map({rod => rod.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flotaDeRodados.max({
			rod => rod.velocidadMaxima()
		}).color()
	}
	method capacidadFaltante(){
		return empleados - flotaDeRodados.sum({rod => rod.capacidad()})
	}
	method esGrande(){
		return empleados>=40 and flotaDeRodados.size()>=5
	}
}
