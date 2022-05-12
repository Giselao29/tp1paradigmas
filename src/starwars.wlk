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
	var property armas=["blaster"]
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
	var energia 
	var midiclorianos = 0
	var esperanza = 50
	var cargaEmocional=0
	var fuerzaLadoOscuro=0
	var tipo="Jedi"
	const amigos=[]
	const armas=["sable"]
	
	method cargaEmocional(edad){
		if(edad<=20){
			cargaEmocional=5000*(22-edad)
			return cargaEmocional
		}else{
			if(edad<23){
				cargaEmocional=10000-5000*(edad-21)
				return cargaEmocional
			}else{
				if(edad==23){
					cargaEmocional=0
					return cargaEmocional
				}else{
					cargaEmocional=-(500*(edad-23))
					return cargaEmocional
				}
			}
		}
	}
	
	
	method energiaSable(){
		return energia
	}
	
	method midiclorianos(cantidad){
		midiclorianos= midiclorianos + cantidad
		return midiclorianos 
		
	}
	
	//elimine el método carga emocional
	

	method lado(){
		//cambie cargaEmocional por esperanza
		esperanza = esperanza + cargaEmocional
		//cambie cargaEmocional por esperanza
		if(esperanza<=0){
			tipo="Sith"
			fuerzaLadoOscuro=fuerzaLadoOscuro+1
			esperanza=0
			return tipo
		}else{
			if(cargaEmocional>100){
			tipo="Jedi"
			return tipo
			}else{
				tipo="Jedi"
				esperanza=50
				fuerzaLadoOscuro=fuerzaLadoOscuro/2
				return tipo
			}
		}
	}
	
//Revisar metodos de lado luminoso y oscuro	

	method ladoLuminoso(){
	 tipo="Jedi"
	 esperanza=50
	 //cambie lugar de paréntesis
	 potencia = ((midiclorianos/1000) + self.energiaSable()) * 10
	 return potencia
	}
	
	//agregué como argumento fuerzaLadoOscuroActual
	method ladoOscuro(fuerzaLadoOscuroActual){
		fuerzaLadoOscuro = fuerzaLadoOscuroActual
		esperanza=0
		potencia = ((midiclorianos/1000) + self.energiaSable()) * fuerzaLadoOscuro
		tipo="Sith"
		return potencia
	}
	
	method conseguirAmigo(amigo){
		amigos.add(amigo)
		cargaEmocional = cargaEmocional + amigo.potenciaFinal()
	}
	
	method batalla(bajas){
		cargaEmocional=cargaEmocional-bajas
	}
	
	method carrera(){
		cargaEmocional=cargaEmocional+5
	}
	
	method perdidaAmada(){
		cargaEmocional=-1000000
	}
	
	method hijo(){
		cargaEmocional=1000000
	}
	
}