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
    const poblacion

    method transmiteEnfermedades(){
        return poblacion >= 10
    }
}

class Cucarachas inherits Plaga {
    const pesoPromedio

    method nivelDaño(){
        return poblacion / 2
    }

    override method transmiteEnfermedades(){
        return super() && pesoPromedio >= 10
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

}


