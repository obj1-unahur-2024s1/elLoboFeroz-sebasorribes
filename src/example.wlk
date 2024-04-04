object feroz {
	var peso = 10
	
	method estaSaludable(){ return peso.between(20,150)}
	method cambiarPeso(cantidadAumentar){peso += cantidadAumentar}
	method sufrirCrisis(){peso = 10}
	method comer(pesoIngerido){peso += (pesoIngerido/10).roundUp(0)}
	method correrHaciaUnLugar(){peso -= 1}
	method soplarCasa(casa){peso = casa.fuerzaNecesaria()}
}

object caperucita{
	method pesoTotalCaperucita(){ return 60 + canasta.peso()}
}

object canasta{
	var cantidadDeManzanas = 6
	method peso(){ return 0.2*cantidadDeManzanas}
	method cambiarCantidadManzanas(nuevaCantidad){ cantidadDeManzanas = nuevaCantidad}
}

object abuelita{
	method peso(){ return 50 }
}

object cazador{
	var balas = 6
	
	method disparar(){balas -= 1}
	method pesoCazador(){return 100+balas*0.1}
}

object chanchitoPaja{
	method peso() { return 80 }
}
object casaPaja{
	method fuerzaNecesaria(){return chanchitoPaja.peso()}
}
object chanchitoMadera{
	method peso() { return 75 }
}
object casaMadera{
	method fuerzaNecesaria(){return 5 + chanchitoPaja.peso() + chanchitoMadera.peso()}
}
object chanchitoLadrillo{
	method peso() { return 70 }
}
object casaLadrillo{
	var cantidadLadrillos = 20
	
	method cambiarLadrillos(nuevaCantidad){ cantidadLadrillos = nuevaCantidad}
	method fuerzanNecesaria(){return 2*cantidadLadrillos+ chanchitoPaja.peso() + chanchitoMadera.peso() + chanchitoLadrillo.peso()}
}