object camion {
    
    const cosas = []

    method cargarCosa(cosa){
        cosas.add(cosa)
    }

    method descargarCosa(cosa){
        cosas.remove(cosa)
    }

    method peso() = 1000 + cosas.sum({c => c.peso()})

    method algunaCosaPesaTal(pesoACalc) = 
}