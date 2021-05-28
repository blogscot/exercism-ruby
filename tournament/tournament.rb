class Tournament
  HEADER = %w[Team MP W D L P].freeze
  FORMAT = "%-31s| %2s |  %s |  %s |  %s |  %s\n".freeze
  def self.tally(input)
    @table = Hash.new { |hash, key| hash[key] = Team.new key, 0, 0, 0 }
    input.lines do |line|
      update(line)
    end
    show_results
  end

  def self.update(line)
    team1, team2, result = line.chomp.split(';')
    case result
    when 'win'
      @table[team1].wins
      @table[team2].loses
    when 'loss'
      @table[team1].loses
      @table[team2].wins
    when 'draw'
      @table[team1].draws
      @table[team2].draws
    end
  end

  def self.show_results
    FORMAT % HEADER +
      @table
      .values
      .sort_by { |team| [-team.points, team.name] }
      .map { |team| format(FORMAT % @table[team.name].info) }.join
  end
end

Team = Struct.new :name, :won, :lost, :drawn do
  def wins
    self.won += 1
  end

  def loses
    self.lost += 1
  end

  def draws
    self.drawn += 1
  end

  def played
    self.won + self.lost + self.drawn
  end

  def points
    self.won * 3 + self.drawn
  end

  def info
    [name, played, won, drawn, lost, points]
  end
end
