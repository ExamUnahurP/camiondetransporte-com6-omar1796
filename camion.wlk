object camion {
    
    const cosas = []

    method cargarCosa(cosa){
        cosas.add(cosa)
    }

    method descargarCosa(cosa){
        cosas.remove(cosa)
    }

    method cosas() = cosas

    method peso() = 1000 + cosas.sum({c => c.peso()})

    method elPesoDeTodasLasCosasEsPar() = cosas.all({c => c.peso().even()})

    method algunaCosaPesaTal(pesoABuscar) = cosas.any({c => c.peso() == pesoABuscar})

    method primeraCosaConNivelDePeligrosidad(nivelDePeligrosidadABuscar) = cosas.filter({c => c.nivelDePeligrosidad() == nivelDePeligrosidadABuscar}).first

    method cosasQueSuperanUnNivelDePeligrosidad(nivelDePeligrosidad) = cosas.filter({c => c.nivelDePeligrosidad() > nivelDePeligrosidad})

    method cosasConNivelDePeligrosidadMayorAlPeligroDeUnaCosa(unaCosa) = cosas.filter({c => c.nivelDePeligrosidad() > unaCosa.nivelDePeligrosidad()})

    
}