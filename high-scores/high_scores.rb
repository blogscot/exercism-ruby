class HighScores
    def self.new(scores)
        @scores = scores
        self
    end
    def self.scores
        @scores
    end
    def self.latest
        @scores.last
    end
    def self.personal_best()
        @scores.max
    end
    def self.personal_top_three()
        @scores.max(3)
    end
    def self.latest_is_personal_best?
        self.latest == self.personal_best
    end
end

