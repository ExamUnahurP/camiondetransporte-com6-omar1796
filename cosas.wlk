object knightRider {

    method peso() = 500

    method nivelDePeligrosidad() = 10
}

object bumblebee {

    var forma = auto

    method peso() = 800

    method nivelDePeligrosidad(){
        forma.nivelDePeligrosidad()
    }

    method transformarse(nuevaForma){
        forma = nuevaForma
    }
}

object auto {

    method nivelDePeligrosidad() = 15
}

object robot {

    method nivelDePeligrosidad() = 30
}

object paqueteDeLardrillos {

    var cantidadDeLadrillos = 3

    method cambiarCantidadDeLadrillos(nuevaCantidad){
        cantidadDeLadrillos = nuevaCantidad
    }

    method peso() = cantidadDeLadrillos * 2

    method nivelDePeligrosidad() = 2
}

object arenaAGranel {

    var peso = 20

    method cambiarPeso(nuevoPeso){
        peso = nuevoPeso
    }

    method nivelDePeligrosidad() = 1
}

object bateriaAntiaerea {

    var estaConMisiles = true

    method gastarMisiles(){
        estaConMisiles = false
    }

    method cargarMisiles(){
        estaConMisiles = true
    }

    method peso() = if(estaConMisiles) 300 else 200
    
    method nivelDePeligrosidad() = if(estaConMisiles) 100 else 0
}

object contenedorPortuario {

    const cosasQueTieneAdentro = []

    method cosasQueTieneAdentro() = cosasQueTieneAdentro

    method agregarCosa(cosaAAgregar){
        cosasQueTieneAdentro.add(cosaAAgregar)
    }

    method peso() = 100 + cosasQueTieneAdentro.sum({c => c.peso()})

    method nivelDePeligrosidad() = if(cosasQueTieneAdentro.isEmpty()) 0 else cosasQueTieneAdentro.max({c => c.nivelDePeligrosidad()})
}

object residuosRadioactivos {

    var peso = 20

    method cambiarPeso(nuevoPeso){
        peso = nuevoPeso
    }

    method nivelDePeligrosidad() = 200
}

object embalajeDeSguridad {

    var objetoQueContiene = knightRider

    method peso() = objetoQueContiene.peso()

    method nivelDePeligrosidad() = objetoQueContiene.nivelDePeligrosidad() / 2
}