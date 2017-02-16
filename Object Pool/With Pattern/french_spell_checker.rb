require_relative 'spell_checker'

class FrenchSpellChecker < SpellChecker
  def LoadDictionary
    @dictionary << 'Bonjour'.downcase
    @dictionary << 'Au Revior'.downcase
    @dictionary << 'Up'.downcase
    @dictionary << 'vers le bas'.downcase
    @dictionary << 'gauche'.downcase
    @dictionary << 'intention'.downcase
    @dictionary << 'exemple'.downcase
    @dictionary << 'orthographe'.downcase
    @dictionary << 'Erreurs'.downcase
    @dictionary << 'conception'.downcase
    @dictionary << 'motif'.downcase
    @dictionary << 'le'.downcase
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