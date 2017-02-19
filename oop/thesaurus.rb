# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Thesaurus
  attr_accessor :entries

  def initialize
    @entries = []
  end


  def add_entry(input)
    entry = Entry.new(input)
    @entries << entry
  end


  def delete_entry(entry)
    @entries.delete(entry)
  end

end




class Entry
  attr_accessor :word, :synonyms, :antonyms

  def initialize(input)
    @word = input[:word]
    @synonyms = input[:synonyms]
    @antonyms = input[:antonyms]
  end

  def add_synonym(synonym)
    self.synonyms << synonym
  end

  def add_antonym(antonym)
    self.antonyms << antonym
  end

end




