import plagas.*


class Hogar{

    var  nivelMugre
    const  confort

    method esBuena(){
        return  nivelMugre <=  (confort / 2 )
    }

    method efectoDelAtaque(plaga){
        nivelMugre = nivelMugre + plaga.nivelDaño()
    }
}

class Huerta{

    var  capacidadProduccion

    method esBuena() {
      return capacidadProduccion > nivelMinimo.nivel()
    }

    method efectoDelAtaque(unaPlaga){
        capacidadProduccion =  ( capacidadProduccion -  (  (unaPlaga.nivelDaño() * 0.10) + if(unaPlaga.transmiteEnfermedades()) 10 else 0 )  ).max(0)
    }
}

class Mascota{

    var  salud

    method esBuena(){
        return salud > 250
    }

    method efectoDelAtaque(unaPlaga){
        if(unaPlaga.transmiteEnfermedades()){
            salud = (salud - unaPlaga.nivelDaño()).max(0)
        }
    }
}

object nivelMinimo{

    var property nivel = 400    
}

class Barrio{

    const elementos = []

    method agregarElemento(unElemento){
        elementos.add(unElemento)
    }
    
    method esBueno(elemento){
        return elemento.esBuena()
    }

    method cantidadDeElementosBuenos(){
        return elementos.count({e => e.esBuena()})
    }

    method cantidadDeElementosNoBuenos(){
        return elementos.count({e => not e.esBuena()})
    }

    method esCopado(){
        return self.cantidadDeElementosBuenos() > self.cantidadDeElementosNoBuenos()
    }
}

