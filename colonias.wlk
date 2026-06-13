class Colonia{
    const habitantes = #{}
    method poderOfensivo() = habitantes.sum({habitante => habitante.poderOfensivo()})
    method poderDefensivo() 

    method conquistarAreaDe(unaColonia) {
      
    }
}

class Area{
    var coloniaHabitante

    method poderOfensivo()
}

class Castillo inherits Area{
    method criaturasFormidables() = habitantes.filter({habitante => habitante.esCriaturaFormidable()})
    override method poderDefensivo() = 200 * self.criaturasFormidables().size()
}

class Claro inherits Area{
    override method poderDefensivo() = 100 + self.poderOfensivo()
}