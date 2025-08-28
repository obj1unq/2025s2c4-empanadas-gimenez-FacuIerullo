//Escribir aqui los objetos
object galvan {
  var sueldoACobrar = 15000
  var sueldo = 0
  var deuda = 0

  method sueldoACobrar() = sueldoACobrar

  method dinero() = sueldo

  method deuda() = deuda

  method cambioDeSueldo(cantidad) {
     sueldoACobrar = cantidad
  }
   method cobrarSueldo() {
     sueldo = sueldoACobrar
     if(deuda > 0 && deuda < sueldo){
      sueldo = sueldo - deuda
      deuda = 0
    } else if(deuda > 0 && deuda > sueldo){
      deuda = deuda - sueldo
      sueldo = 0
    }
  }

  method gastar(cantidad){
    if(cantidad <= sueldo){
      sueldo = sueldo - cantidad
    } else {
      deuda = deuda + (cantidad - sueldo)
      sueldo = 0
    }
  }
}

object baigorria {
 var sueldoACobrar = 0
 var sueldo = 0

 method sueldoACobrar () = sueldoACobrar

 method totalCobrado() = sueldo

 method ventaDeEmpanadas(cantidad) {
  sueldoACobrar = sueldoACobrar + cantidad * 15
}

 method cobrarSueldo() {
    sueldo = sueldoACobrar
  }
}

object gimenez {
  var fondo = 300000

  method fondoActual() = fondo

  method pagarSueldo(empleado) {
    empleado.cobrarSueldo()
    fondo = fondo - empleado.sueldoACobrar()
  }
}

