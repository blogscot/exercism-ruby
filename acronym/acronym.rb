class Acronym
    def self.abbreviate(title)
        sentence = title.sub(/-/, ' ')
        sentence.split().map {|word| word.chr.capitalize }.join()
    end
end