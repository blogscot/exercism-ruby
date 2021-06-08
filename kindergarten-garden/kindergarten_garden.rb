class Garden
  STUDENTS = %w[alice bob charlie david eve fred ginny harriet ileana joseph kincaid larry].freeze
  PLANTS = %i[clover grass radishes violets].freeze
  LOOKUP = 'CGRV'.chars.zip(PLANTS).to_h
  def initialize(rows, students = STUDENTS)
    students = students.map(&:downcase).sort
    students.each.with_index do |student, index|
      define_singleton_method(student) do
        index *= 2
        row1, row2 = rows.lines
        plants = row1[index..index + 1] + row2[index..index + 1]
        plants.chars.map { |plant| LOOKUP.fetch(plant) }
      end
    end
  end
end
