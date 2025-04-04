import personas.*
import objetos.*

object bolichito { 
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera

    method objetoEnMostrador(objetoAPoner) {
        objetoEnMostrador = objetoAPoner
    }
    method objetoEnVidriera (objetoAPoner) {
        objetoEnVidriera = objetoAPoner
    }

    method esBrillante() {
        return objetoEnMostrador.material().brilla() &&
        objetoEnVidriera.material().brilla()

    }
    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera

    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso > objetoEnVidriera
    }

    method tieneAlgoDeColor(unColor) {
        return objetoEnMostrador.colo() == unColor or 
        objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return not self.estaEquilibrado() Or
        self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador)  Or
        unaPersona.legusta(objetoEnVidriera)
    }

    method intercambiarObjetos() {
        const aux = objetoEnMostrador
         objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux

    }
}


