require_relative 'english_spell_checker'
require_relative 'french_spell_checker'
require_relative 'spanish_spell_checker'
require_relative 'german_spell_checker'


class Proofer

  def check? (language, text)
    case language
      when :english then @speller=EnglishSpellChecker.new
      when :french then @speller=FrenchSpellChecker.new
      when :spanish then @speller=SpanishSpellChecker.new
      when :german then @speller=GermanSpellChecker.new
    end
    @speller.check? text
  end

end