class PigLatinizer
  attr_accessor :piglatinized_phrase

def to_pig_latin(word) 
  if word.downcase.index(/[aeiou]/) == 0
    return word + "way"
  else
    vowel_index = word.index(/[aeiou]/)
    front_end = word.slice!(0..vowel_index-1)
    return word + front_end +"ay"
  end
end

def piglatinize(phrase)
  word_array = phrase.split(" ")
  @piglatinized_phrase = word_array.collect { |word| to_pig_latin(word)}.join(" ")
end
end 
