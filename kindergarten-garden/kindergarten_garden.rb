class Garden
  STUDENTS = %w[alice bob charlie david eve
                fred ginny harriet ileana
                joseph kincaid larry].freeze
  PLANTS = %i[clover grass radishes violets].freeze
  LOOKUP = 'CGRV'.chars.zip(PLANTS).to_h
  def initialize(rows, students = STUDENTS)
    boxes = rows.lines.map { |row| row.scan(/../) }.transpose
    students = students.map(&:downcase).sort
    students.each.with_index do |student, index|
      define_singleton_method(student) do
        boxes[index].join.chars.map(&LOOKUP)
      end
    end
  end
end
