class Corsa {
    var color = 
    method color() = color 
    method capacidad() = 4
    method velocidad() = 150
    method peso() = 1300
    method pintarDeColor(unColor) = {color=unColor}
}

class Kwid {
    var tieneTanqueAdicional 
    method capacidad() = if(tieneTanqueAdicional) 3 else 4
    method velocidad() = if(tieneTanqueAdicional) 110 else 120
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0
    method color() = "azul"
    method ponerTanqueAdecional() (tieneTanqueAdicional = true)
    method sacarTanqueAdecional() (tieneTanqueAdicional = false)

}

object trafic {
    var interior = comodo
    var motor = pulenta

    method cambiarInterior(unInterior) {interior = unInterior}
    method cambiarMotor(unMotor) {motor = unMotor}
    method color() = "blanco"
    method peso() = 4000 + interior.peso() + motor.peso()
    method velocidad() = 0
    method capacidad() = 0
    method 
}

object comodo {
    method capacidad() = 5
    method peso() = 700
}

object popular {
    method capacida() = 12
    method peso() = 1200
}

object pulenta {
    method peso() = 800
    method velocidad() = 130
}
object bataton {
    method peso() = 500
    method velocidad() = 80
}


class AutoEspecial {
    const property capacidad
    const property velocidad
    const property peso
    var color 
    method pintarDe(unColor) {color=unColor}
}

class Dependencia {
    const flota = []
    const empleados
    const pedido = []

    method agregarPedido(unPedido) {
        pedido.add(unPedido)
    }

    method totalPasajeroEnPedidos {
        return pedido.sum({p=>p.cantidadDePasajeros()})
    }

    method pedidosQueNoPuedenSerSatisfecho() {
        return pedido.filter({p => p.puedeSatisfacerlo()})
    }

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarAFlota(rodado) {flota.remove(rodado)}
    method pesoTotalDelaFlota() {flota.sum({r => r.peso()})}
    method estaBienEquipada() {
        return flota.size() > 3 && self.todosPuedenIrA(100)
    }

    method todosPuedenIrA(velocidad) {
        return flota.all({r=>r.velocidad() >= velocidad})
    }

    method capacidadTotalEnColor(color) {
        return self.rodadosDelColor(color).sum({r=>r.capacidad()})
    }

    method rodadosDelColor(color) {
        return flota.filter({r=>r.color() == color})
    }

    method colorDelRodadoMasRapido() {
        return self.rodadoMasRapido().color()
    }

    method rodadoMasRapido {
        return flota.max({r=>r.velocidad()})
    }

    method capacidadFaltante() {
        return empleados - self.capacidadDeFlota().max(0)
    }

    method capacidadDeFlota {
        return flota.sum({f=>f.capacidad()})
    }

    method esGrande {
        return empleados >= 40 && flota.size() > 5
    }

}

class Pedido {

    const distancia
    var property tiempoMaximo
    var property cantidadDePasajeros
    const coloresIncompatibles = #()

    method agregarColorIncompatible(unColor) {
        coloresIncompatibles.add(unColor)
    }
    
    method velocidadRequerida() {
        return distancia.div(tiempo)
    }

    method puedeSatisfacerlo(unAuto) {
        return unAuto.velocidad() >= self.velocidadRequerida() + 10 &&
        unAuto.capacidad() >= cantidadDePasajeros && not coloresIncompatibles.contains(unAuto.color())
    }

    method acelerar() {
        tiempoMaximo = (tiempoMaximo - 1).max(0)
    }

    method relajar() {
        tiempoMaximo = (tiempoMaximo + 1)
    }

    method pedidosQueNoPuedenSerSatisfecho()

    method pedidosQueNoPuedenSerSatisfechoPor(unPedido) {
        return flota.any({})
    }


}

