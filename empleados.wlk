//Escribir aqui los objetos
object galvan {
  var sueldoACobrar = 15000
  var sueldo = 0

    method cambioDeSueldo(cantidad) {
     sueldoACobrar = cantidad
  }

    method sueldoActual() {
     return sueldoACobrar
  }

    method cobrarSueldo() {
     sueldo = sueldoACobrar
  }
}

object baigorria {
 var sueldoACobrar = 0
 var sueldo = 0

 method ventaDeEmpanadas(cantidad) {
  sueldoACobrar = sueldoACobrar + cantidad * 15
}

 method sueldoActual(){
  return sueldoACobrar
}
 method cobrarSueldo() {
    sueldo = sueldoACobrar
  }
}

object gimenez {
  var fondo = 300000

  method pagarSueldo(empleado) {
    empleado.cobrarSueldo()
    fondo = fondo - empleado.sueldoActual()
  }

  method fondoActual(){
    return fondo
  }
}

