class Criatura {
  var poderMagico
  const astucia
  var rol

  method cambiarDeRol() {
    rol = rol.nuevoRol()
  }

  method poderOfensivo() = rol.poderOfensivo()
  method esCriaturaFormidable() = self.esCriaturaAstuta() && self.esCriaturaExtraordinaria() 

  method esCriaturaAstuta()
  method esCriaturaExtraordinaria() = rol.esExtraordinario(self)
  method poderMagico() = poderMagico
}
class Hada inherits Criatura{
  var kilometrosQueVuela = 2
  
  method crecer() {
    kilometrosQueVuela = (kilometrosQueVuela + 1).min(25)
  }

  override method esCriaturaAstuta() = astucia > 50

  method cuantosKilometrosPuedeVolar() = kilometrosQueVuela
}

class Duende inherits Criatura{
  override method poderOfensivo() = super() * 1.1
  override method esCriaturaAstuta() = false
}