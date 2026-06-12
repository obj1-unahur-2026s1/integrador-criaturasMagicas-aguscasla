class Domador{
    const mascotas = []

    method mascotasConCuernos() = mascotas.filter({mascota => 
                                    mascota.tieneCuernos()
                                })
    method poderOfensivo() = 150 * self.mascotasConCuernos().size()
}

class Guardian {
    method poderOfensivo() = 100 
}

class Hechicero {
    method poderOfensivo() = 0
}
