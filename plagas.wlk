/*
class Cucaracha{

    var poblacion
    var pesoPromedio


    method nivelDaño(){
        return (poblacion / 2)
    }

    method transmiteEnfermedades(){
        return poblacion >= 10 && pesoPromedio >= 10
    }
}

class Pulgas{

    var poblacion

    method nivelDaño(){
        return (poblacion * 2)
    }

    method transmiteEnfermedades(){
        return poblacion >= 10
    }
}

class Garrapata{

    var poblacion
    var pesoPromedio

    method nivelDaño(){
        return (poblacion / 2)
    }

    method transmiteEnfermedades(){
        return poblacion >= 10 && pesoPromedio >= 10
    }
}

class Mosquitos{

    var poblacion 

    method nivelDaño(){
        return poblacion
    }

    method transmiteEnfermedades(){
        return poblacion % 3 == 0 && poblacion >= 10
    }
}
*/

class Plaga{
    var poblacion

    method transmiteEnfermedades(){
        return poblacion >= 10
    }

    method efectoDeAtacar(){
        poblacion = poblacion + poblacion * 0.10
    }

    method atacar(unElemento){
        unElemento.efectoDelAtaque(self)   
        self.efectoDeAtacar()
    }
}

class Cucarachas inherits Plaga {
    var pesoPromedio

    method nivelDaño(){
        return poblacion / 2
    }

    override method transmiteEnfermedades(){
        return super() && pesoPromedio >= 10
    }

    override method efectoDeAtacar(){
        super()
        pesoPromedio = pesoPromedio + 2
    }
}

class Mosquitos inherits Plaga {

    method nivelDaño() = poblacion

    override method transmiteEnfermedades(){
        return super() && poblacion % 3 == 0
    }
}

class Pulgas inherits Plaga{

    method nivelDaño() = poblacion * 2
}

class Garrapatas inherits Pulgas {
    override method efectoDeAtacar(){
        poblacion = poblacion + poblacion * 0.20
    }
}


