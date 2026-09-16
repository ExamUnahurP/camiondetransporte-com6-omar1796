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

    
}

object bateriaAntiaerea {

}

object contenedorPortuario {

}

object residuosRadioactivos {

}

object embalajeDeSguridad {

}