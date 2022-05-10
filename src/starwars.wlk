//Punto 1 - modelar los personajes
object arturito{
	var carga=50
	
	method bateria(){
		return carga	
	}
	
	method potenciaFinal(){
		return carga*10
	}
	
	method cargarBateria(){
		carga=100
	}
	
	method descargarBateria(descarga){
		carga= carga-descarga
	}
	
}

object han{
	
	var energia
	const armas=["blaster"]
	const cargas=[70]
	
	
	method agregarArma(arma,carga){
		armas.add(arma)
		cargas.add(carga)
	}
	
	method armaElegida(posicion){
		
		energia=cargas.get(posicion)
		return energia
	}
	
	
	method potencia(estado){
		if(estado=="congelado"){
				energia=0
			return energia 	
		}else{
			energia=energia*2
			return energia
		}
	}
	
	method potenciaFinal(){
		return energia
	}
	
}

// Punto 3 -inventar personaje Leia
object leia{
	
	var energia
	
	method potencia(potencia){
		energia=potencia
	}
	
	method potenciaFinal(){
		return energia
	}
}

// 2da PARTE- ANAKIN SKYWALKER

object anakin {
	var potencia 
	var midiclorianos = 0
	var esperanza = 50
	
	method fuerzaLadoOscuro(numeroFuerza) {
		return numeroFuerza
	}
	

	method midiclorianos(cantidad){
		return midiclorianos = midiclorianos + cantidad
	}
	
//Revisar metodos de lado luminoso y oscuro	
	method LadoLuminoso() {
	 potencia = ((midiclorianos/1000) + self.EnergiaSableDeLuz()) * 10
	 return "Jedi"	
	 return potencia
	}
	
	method LadoOscuro() {
		potencia = ((midiclorianos/1000) + self.EnergiaSableDeLuz()) * self.fuerzaLadoOscuro())
		return "Sith"
		return potencia
		
		method EnergiaSableDeLuz(energia) {
			return energia 
		}
	}
//Revisar var cargaEmocional y disminuir a la mitad el nivel de fuerza del lado oscuro	
	method convertirseEnSith {
		if (esperanza<=0) { return "SITH"} 
	}
	
	method convertirseEnJedi {
		if (cargaEmocional>100) { return "JEDI"}
		return esperanza = 0
	}
}