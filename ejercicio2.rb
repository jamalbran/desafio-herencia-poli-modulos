module Habilidades
  module Volador
    def volar
      'Estoy volandooooo!'
    end

    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end
  end

  module Nadador
    def nadar
      'Estoy nadando!'
    end

    def sumergir
      'glu glub glub glu'
    end
  end

  module Caminante
    def caminar
      'Puedo caminar!'
    end
  end
end

module Alimentacion
  module Herbivoro
    def comer
      'Puedo comer plantas!'
    end
  end

  module Carnivoro
    def comer
      'Puedo comer carne!'
    end
  end
end

class Animal
  attr_reader :nombre

  include Habilidades
  include Alimentacion
  def initialize(nombre)
    @nombre = nombre
  end
end

class Ave < Animal
  include Caminante
end

class Mamifero < Animal
  include Caminante
  include Nadador
end

class Insecto < Animal
  include Volador
  include Caminante
  include Herbivoro
end

class Pinguino < Ave
  include Nadador
  include Carnivoro
end

class Paloma < Ave
  include Volador
  include Herbivoro
end

class Pato < Ave
  include Volador
  include Nadador
  include Herbivoro
end

class Perro < Mamifero
  include Carnivoro
end

class Gato < Mamifero
  include Carnivoro
end

class Vaca < Mamifero
  include Herbivoro
end

class Mosca < Insecto
end

class Mariposa < Insecto
end

class Abeja < Insecto
end

a1 = Abeja.new('Abeja')
puts a1.nombre
puts a1.volar
puts a1.caminar
puts a1.comer
puts a1.nadar

p1 = Perro.new('Perro')
puts p1.nombre
puts p1.nadar
puts p1.sumergir
puts p1.caminar
puts p1.comer
