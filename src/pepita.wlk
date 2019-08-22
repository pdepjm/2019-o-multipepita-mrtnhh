object pepita {
	var energia = 100
	

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		
		return energia > 500 && energia < 1000
	}
	
	method cuantoQuiereVolar() {
		var distancia = 0
		
		distancia = (energia / 5)
		if(energia > 300 && energia < 400 )
			distancia += 10
			
		if (energia%20==0 )
			distancia += 15
		
		return distancia	
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
		return energia
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = true

	method energiaQueOtorga() { 
		if(mojado)
			return 15
		else
			return 20
	}

	method mojarse() {
		if (mojado)
			mojado = true
	}
	
	method secarse() {
		mojado = false
	}
	
}

/* 
object canelones {
	var salsa
	var queso
	
	method energiaQueOtorga() { 

	}
	
	method tieneSalsa() {
		if(salsa)
			salsa = true
	}
	method tieneSalsa()
	
	method tieneSalsa()
}

*/




