require_relative 'english_spell_checker'
require_relative 'french_spell_checker'
require_relative 'spanish_spell_checker'
require_relative 'german_spell_checker'


class Proofer

  def initialize
    #Create a pool of 3 spellers for each language
    @english0=EnglishSpellChecker.new
    @english1=EnglishSpellChecker.new
    @english2=EnglishSpellChecker.new

    @french0=FrenchSpellChecker.new
    @french1=FrenchSpellChecker.new
    @french2=FrenchSpellChecker.new

    @german0=GermanSpellChecker.new
    @german1=GermanSpellChecker.new
    @german2=GermanSpellChecker.new

    @spanish0=SpanishSpellChecker.new
    @spanish1=SpanishSpellChecker.new
    @spanish2=SpanishSpellChecker.new

  end

  def check? (language, text)
    # Pick an version to use 0,1, or 2
    index=rand(3)
    case language
      when :english then
        if index==0  then @english0.check? text end
        if index==1  then @english1.check? text end
        if index==2  then @english2.check? text end

      when :french then
        if index==0 then @french0.check? text end
        if index==1 then @french1.check? text end
        if index==2 then @french2.check? text end

      when :spanish then
        if index==0 then @spanish0.check? text end
        if index==1 then @spanish1.check? text end
        if index==2 then @spanish2.check? text end

      when :german then
        if index==0 then @german0.check? text end
        if index==1 then @german1.check? text end
        if index==2 then @german2.check? text end

    end

  end

end