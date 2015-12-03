class NicknameGenerator
  def initialize(game:, race:, sex:, namepart:)
    @counts ||= ActiveRecord::Base.connection.execute(
      <<-SQL
        SELECT SUM(CASE WHEN POSITION = 'start' THEN 1 ELSE 0 END) AS start_offset,
               SUM(CASE WHEN POSITION = 'middle' THEN 1 ELSE 0 END) AS middle_offset,
               SUM(CASE WHEN POSITION = 'end' THEN 1 ELSE 0 END) AS end_offset
        FROM syllables
        WHERE game = '#{game}' AND race = '#{race}' AND sex = '#{sex}' AND namepart = '#{namepart}'
      SQL
    ).first
  end

  def generate
    [
      syllable('start', @counts['start_offset']),
      syllable('middle', @counts['middle_offset']),
      syllable('end', @counts['end_offset'])
    ].join('')
  end

  private

  def syllable(position, offset)
    Syllable.select(:syllable)
            .where(position: position)
            .offset(rand(offset.to_i))
            .limit(1)
            .first
            .syllable
  end
end
