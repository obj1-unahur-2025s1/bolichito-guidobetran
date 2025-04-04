import objetos.* //todos los objetos que se modelen dentro de la carpeta objetos puede ser utilizados aca con *//


object rosa {
  method leGusta(unaCosa) {
    return unaCosa.peso() <= 2000
  }
}

object estefania {
  method leGusta(unaCosa) {
    return unaCosa.color().esFuerte()
  }
}

object luisa {
  method leGusta(unaCosa) {
    return unaCosa.material().brilla()
  }
}

object juan {
  method leGusta(unaCosa) {
    return not unaCosa.color().esFuerte() or 
    unaCosa.peso(). between(1200,1800)   
  }
}