require_relative 'proofer'

@english_text=['hello', 'the', 'purpose', 'of', 'this', 'sample', 'is', 'to', 'test', 'some', 'spelling', 'mistakes', 'using', 'the', 'object pool', 'design', 'pattern', 'au reviour']
@french_text=['bonjour', 'le', 'but', 'de', 'cet', 'exemple', 'est', 'de', 'tester', 'quelques', 'dorthographe', 'fautes', 'le', 'motif', 'de', 'conception', 'de', 'pool', 'dobjets']
@german_text=['Hallo', 'der', 'Zweck', 'dieses', 'Beispiel', 'ist', 'es', 'einige', 'Rechtschreibfehler', 'mit', 'dem', 'Objekt', 'Pool', 'Design-Muster', 'testen', 'zu' 'testen']
@spanish_text=['Hola', 'el', 'propósito', 'de', 'esta', 'muestra', 'es', 'probar', 'algunos', 'errores', 'ortográficos', 'usando', 'el', 'patrón', 'de', 'diseño', 'de', 'la', 'piscina', 'de', 'objetos', 'adiós']
@proofer=Proofer.new

def test_full_language (language)
  found_count=0
  not_found_count=0
  total_count=0
  case language
    when :english then data=@english_text
    when :french then data=@french_text
    when :german then data=@german_text
    when :spanish then data=@spanish_text
    else data=nil
  end

  data.each do |str|
    total_count+=1
    result=@proofer.check? language, str.downcase
    if result
      puts "Word #{str} was found in the #{language} dictionary"
      found_count+=1
    else
      puts "Word #{str} was not found in the #{language} dictionary"
      not_found_count+=1
    end
  end
  puts '-------------------------------------------'
  puts "Of #{total_count} words: #{found_count} were found, #{not_found_count} were not"
  puts '-------------------------------------------'
end

def test_randomly (iterations)
  iterations.times do
    lang_index=rand(4)
    case lang_index
      when 0 then
        #English
        language='English'
        word_index=rand(@english_text.count)
        str = @english_text[word_index].downcase
        result=@proofer.check? :english, str
      when 1 then
        #French
        language='French'
        word_index=rand(@french_text.count)
        str = @french_text[word_index].downcase
        result=@proofer.check? :french, str
      when 2 then
        #German
        language='German'
        word_index=rand(@german_text.count)
        str = @german_text[word_index].downcase
        result=@proofer.check? :german, str
      when 3 then
        #French
        language='Spanish'
        word_index=rand(@spanish_text.count)
        str = @spanish_text[word_index].downcase
        result=@proofer.check? :spanish, str
      else
        result=nil
        str=''
        language=''
    end
    if result!=nil && language!=''
      puts "Word #{str} was found in the #{language} dictionary"
      #found_count+=1
    else if language!=''
        puts "Word #{str} was not found in the #{language} dictionary"
        #not_found_count+=1
      end
    end
  end
end



test_full_language(:english)
test_full_language(:french)
test_full_language(:german)
test_full_language(:spanish)

test_randomly 10000