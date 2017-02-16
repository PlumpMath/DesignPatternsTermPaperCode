require_relative 'spell_checker'

class SpanishSpellChecker < SpellChecker

  def LoadDictionary
    @dictionary << 'Hola'.downcase
    @dictionary << 'Adios'.downcase
    @dictionary << 'Arriba'.downcase
    @dictionary << 'Abajo'.downcase
    @dictionary << 'izquierda'.downcase
    @dictionary << 'propósito'.downcase
    @dictionary << 'muestra'.downcase
    @dictionary << 'ortografía'.downcase
    @dictionary << 'Errores'.downcase
    @dictionary << 'diseño'.downcase
    @dictionary << 'patrón'.downcase
    @dictionary << 'el'.downcase
    @dictionary << 'Abstract Factory'.downcase
    @dictionary << 'Builder'.downcase
    @dictionary << 'Factory Method'.downcase
    @dictionary << 'Prototype'.downcase
    @dictionary << 'Singleton'.downcase
    @dictionary << 'Adapter'.downcase
    @dictionary << 'Bridge'.downcase
    @dictionary << 'Composite'.downcase
    @dictionary << 'Decorator'.downcase
    @dictionary << 'Facade'.downcase
    @dictionary << 'Flyweight'.downcase
    @dictionary << 'Proxy'.downcase
    @dictionary << 'Chain of responsibility'.downcase
    @dictionary << 'Command'.downcase
    @dictionary << 'Interpreter'.downcase
    @dictionary << 'Iterator'.downcase
    @dictionary << 'Mediator'.downcase
    @dictionary << 'Memento'.downcase
    @dictionary << 'Observer'.downcase
    @dictionary << 'State'.downcase
    @dictionary << 'Strategy'.downcase
    @dictionary << 'Template method'.downcase
    @dictionary << 'Visitor'.downcase
    @dictionary << 'Object pool'.downcase
  end

end