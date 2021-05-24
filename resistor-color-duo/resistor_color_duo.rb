
class ResistorColorDuo
    COLOURS = %w[black brown red orange yellow green blue violet grey white]
    def self.value(colours)
        colours.first(2).map {| colour | COLOURS.index(colour) }.join().to_i
    end
end
