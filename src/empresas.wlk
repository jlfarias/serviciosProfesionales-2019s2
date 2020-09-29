import profesionales.*
class Empresa {
	var property profesionales  = #{}
	var property honorariosReferencia = 0
	
	method estudiaron(unaUniversidad){
		return profesionales.count({each => each.universidad() == unaUniversidad })
	}
	
	method profesionalesCaros(){
		return profesionales.filter( {each => each.honorariosPorHora()> honorariosReferencia } )
	}
	
	method uniFormadoras(){
		return profesionales.map( {each => each.universidad()}) .asSet() // CONJ - NO REPITO UNI
	}
	
	method elMasBarato(){
		return profesionales.min( {each => each.honorariosPorHora()} ) // EL PROFESIONAL
	}
	
	method esDeGenteAcotada(){
		// 
		return profesionales.all({each => each.provinciasDondePuedeTrabajar().size() <= 3})
	}
}
