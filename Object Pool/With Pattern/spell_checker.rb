class SpellChecker
  def initialize
    @dictionary=[]
    self.LoadDictionary
  end

  def check? (lookup_string)
    if @dictionary.find_index(lookup_string.downcase) == nil
      false
    else
      true
    end
  end


end