class ETL
  def self.transform(old_score)
    old_score.each_with_object({}) do |(k, v), new_score|
      v.each { |letter| new_score[letter.downcase] = k }
    end
  end
end
