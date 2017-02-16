require_relative 'spell_checker'

class GermanSpellChecker < SpellChecker

  def LoadDictionary
    @dictionary << 'Hallo'.downcase
    @dictionary << 'Auf Wiedersehen'.downcase
    @dictionary << 'oben'.downcase
    @dictionary << 'Unten'.downcase
    @dictionary << 'Links'.downcase
    @dictionary << 'Zweck'.downcase
    @dictionary << 'sample'.downcase
    @dictionary << 'Rechtschreibung'.downcase
    @dictionary << 'Fehler'.downcase
    @dictionary << 'Entwurf'.downcase
    @dictionary << 'Muster'.downcase
    @dictionary << 'das'.downcase
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