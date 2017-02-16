require_relative 'spell_checker'

class EnglishSpellChecker < SpellChecker

  def LoadDictionary
    @dictionary << 'Hello'.downcase
    @dictionary << 'Goodbye'.downcase
    @dictionary << 'Up'.downcase
    @dictionary << 'Down'.downcase
    @dictionary << 'Left'.downcase
    @dictionary << 'purpose'.downcase
    @dictionary << 'sample'.downcase
    @dictionary << 'Spelling'.downcase
    @dictionary << 'Mistakes'.downcase
    @dictionary << 'Design'.downcase
    @dictionary << 'Pattern'.downcase
    @dictionary << 'the'.downcase
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
