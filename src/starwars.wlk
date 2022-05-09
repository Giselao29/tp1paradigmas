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

object leia{
	
	var energia
	
	method potencia(potencia){
		energia=potencia
	}
	
	method potenciaFinal(){
		return energia
	}
}