require 'open-uri'

module PhraseProviderService

  class << self
    def random_phrase
      doc = Nokogiri::HTML(open('https://en.wikiquote.org/wiki/Rick_and_Morty'))
      dialogues = doc.css('dl')
      dialogue = dialogues[Random.new.rand(0..dialogues.count)].to_s.delete("\n")
    end
  end
end
