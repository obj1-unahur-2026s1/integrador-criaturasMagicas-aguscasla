class Criatura {
  var poderMagico
  var astucia
  var rol

  method poderOfensivo()
}
class Hada inherits Criatura{
  var kilometrosQueVuela = 2

  override method poderOfensivo() = rol.poderOfensivo()

  method crecer() {
    kilometrosQueVuela = (kilometrosQueVuela + 1).min(25)
  }

  method cuantosKilometrosPuedeVolar() = kilometrosQueVuela
}



class Duende inherits Criatura{
  override method poderOfensivo() = rol.poderOfensivo() * 1.1
}