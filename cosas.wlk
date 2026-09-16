object knightRider {

    method peso() = 500

    method nivelDePeligrosidad() = 10
}

object bumblebee {

    var forma = auto

    method peso() = 800

    method nivelDePeligrosidad(){
        
    }
}

object auto {

}

object robot {

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

    method peso() = if(estaConMisiles) 300 else 200
    
    method nivelDePeligrosidad() = if(estaConMisiles) 100 else 0
}

object contenedorPortuario {

    const cosasQueTieneAdentro = []

    method peso() = 100 + cosasQueTieneAdentro
}

object residuosRadioactivos {

}

object embalajeDeSguridad {

}