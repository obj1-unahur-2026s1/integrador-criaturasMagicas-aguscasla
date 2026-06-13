import mascotas.*


class Guardian {
    method poderOfensivo() = 100 

    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() > 50

    method nuevoRol() {
        return new Domador(mascotas = new Mascota(edad = 1, tieneCuernos = false))
    }
}

class Domador{
    const mascotas = []

    method entrenarMascota(unaMascota) {
        mascotas.add(unaMascota)
    }

    method nuevoRol() {
        return new Hechicero()
    }

    method mascotasConCuernos() = mascotas.filter({mascota => 
                                    mascota.tieneCuernos()
                                })
    method poderOfensivo() = 150 * self.mascotasConCuernos().size()

    method todasLasMascotasSonVeteranas() = mascotas.all({mascota => mascota.edad() >= 10})
    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() >= 15 && self.todasLasMascotasSonVeteranas()
}

class Hechicero {
    method poderOfensivo() = 0
    method esExtraordinario(unaCriatura) = true

    method nuevoRol() {
        return new Guardian()
    }
}
