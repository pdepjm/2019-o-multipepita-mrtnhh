object pepita {
	var energia = 100
	
	method energia() {
		return energia
	}

	method estaCansada() {
		return energia < 50
	}

	method volar(kms) {
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
	
	method haceLoQueQuieras() {
		if(self.estaCansada())
			self.come(alpiste)
			
		if(self.estaFeliz())
			self.vola(8)
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

 
object canelones {
	var salsa = false
	var queso = false
	
	method tieneSalsa() {
		return salsa
	}
	
	method tieneQueso(){
			return queso
	}
	
	method ponerSalsa() {
		salsa = true
	}
	
	method sacarSalsa() {
		salsa = false
	}
	
	method ponerQueso() {
		queso = true
	}
	
	method sacarQueso() {
		queso = false
	}
	
	method energiaQueOtorga() {
		var cantidadEnergia = 20
		
		if(salsa)
			cantidadEnergia += 5
		if(queso)
			cantidadEnergia += 7

		return cantidadEnergia
	}
}







