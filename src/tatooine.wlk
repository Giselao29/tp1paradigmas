import starwars.*

object tatooine{
	
	var potenciaDefensores
	var poblacion=1000000
	var valorAtaque
	var property listaDefensores=[han,arturito]
	
	method defensores(){
		return listaDefensores
	}
	
	method defender(){
		
		potenciaDefensores=listaDefensores.sum({defensor=>defensor.potenciaFinal()})
		if(potenciaDefensores>valorAtaque){
			return "Defensa satisfactoria, no pierde población"
		}else{
			poblacion= poblacion*0.9
			return "Pierde el 10% de la población, quedan ahora:"+poblacion
		}
	}
	
	method invadir(fuerzaAtaque){
		valorAtaque=fuerzaAtaque
		return valorAtaque
	}
	
	method agregarDefensor(nombre){
		listaDefensores.add(nombre)
		arturito.cargarBateria()
		return listaDefensores	
	}
	
	method eliminarDefensor(nombre){
		listaDefensores.remove(nombre)
		return listaDefensores
	}
// PUNTO 2 -Personaje mas poderoso 	
	method personajePoderoso() {
		return 	listaDefensores.max({defensor=>defensor.potenciaFinal()})
	}
// SEGUNDA PARTE	

}