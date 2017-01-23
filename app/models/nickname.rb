class Nickname < ApplicationRecord
  WOW_RACES = %w(
    human gnome dwarf pandaren draenei worgen nightelf orc troll tauren
    undead bloodelf goblin
  ).freeze
  GW_RACES = %w(human-of-tyria charr asura norn sylvari).freeze
  SAMP_RACES = %w(english german french italian danish swedish spanish).freeze
  SEX = %w(male female).freeze

  def self.generate_wow(race, sex)
    { name: get_nick(race, sex) }
  end

  def self.generate_gw(race, sex)
    game = Game.find_by(slug: 'gw2')
    race_id = game.races.find_by(slug: race).id

    # only charr, human and norn (because of names' length)
    name_start = get_syllable(game.id, race_id, sex, 'start', 'name')
    name_mid   = get_syllable(game.id, race_id, sex, 'middle', 'name')
    name_fin   = get_syllable(game.id, race_id, sex, 'end', 'name')

    surname_start = get_syllable(game.id, race_id, 'male', 'start', 'surname')
    surname_fin   = get_syllable(game.id, race_id, 'male', 'end', 'surname')
    # game: 'gw' or 'gw2' ?

    { name: "#{name_start}#{name_mid}#{name_fin} #{surname_start}#{surname_fin}" }
  end

  def self.generate_gw_asura(race, sex)
    game = Game.find_by(slug: 'gw2')
    race_id = game.races.find_by(slug: race).id

    name_start = get_syllable(game.id, race_id, sex, 'start', 'name')
    name_fin =   get_syllable(game.id, race_id, sex, 'end', 'name')

    surname_start = get_syllable(game.id, race_id, 'male', 'start', 'surname')
    surname_fin =   get_syllable(game.id, race_id, 'male', 'end', 'surname')

    { name: "#{name_start}#{name_fin} #{surname_start}#{surname_fin}" }
  end

  def self.generate_gw_sylvari(race, sex)
    game = Game.find_by(slug: 'gw2')
    race_id = game.races.find_by(slug: race).id

    name_start = get_syllable(game.id, race_id, sex, 'start', 'name')
    name_mid =   get_syllable(game.id, race_id, sex, 'middle', 'name')
    name_fin =   get_syllable(game.id, race_id, sex, 'end', 'name')

    { name: "#{name_start}#{name_mid}#{name_fin}" }
  end

  def self.generate_samp(race, sex)
    game = Game.find_by(slug: 'samp')
    race_id = game.races.find_by(slug: race).id

    name =    get_syllable(game.id, race_id, sex, 'start', 'name')
    surname = get_syllable(game.id, race_id, sex, 'start', 'surname')

    { name: "#{name} #{surname}" }
  end

  def self.generate_minecraft(race, sex)
    game_id = Game.find_by(slug: 'minecraft').id
    # Lil cheat: minecraft 'syllables' have only male gender
    name =    get_syllable(game_id, race, 'male', 'start', 'name')
    surname = get_syllable(game_id, race, 'male', 'start', 'surname')

    { name: "#{name.capitalize} #{surname.capitalize}" }
  end

  def self.generate_minecraft_skin(race, sex)
    game_id = Game.find_by(slug: 'minecraft').id

    name = get_syllable(game_id, race, sex, 'start', 'name')

    { name: name }
  end

  def self.generate_dota(race, sex)
    name = get_syllable('dota', race, sex, 'start', 'name')

    { name: name }
  end

  private

  def self.get_nick(race, sex)
    game_id = Game.find_by(slug: 'wow').id

    Syllable.find_by_sql(
      [
        "(
          select syllable, position from syllables where game_id = :game_id and race = :race
          and sex = :sex and position = 'start' and namepart = 'name'
          order by random() limit 1
          )
          union
          (
          select syllable, position from syllables where game_id = :game_id and race = :race
          and sex = :sex and position = 'middle' and namepart = 'name'
          order by random() limit 1
          )
          union
          (
          select syllable, position from syllables where game_id = :game_id and race = :race
          and sex = :sex and position = 'end' and namepart = 'name'
          order by random() limit 1
          )
          order by position desc
        ",
        game_id: game_id, race: race, sex: sex
      ]
    ).map{ |s| s.syllable }.sum
  end

  def self.get_syllable(game_id, race_id, sex, position='start', namepart='name')
    sex = 'male' if namepart == 'surname'
    # race = 'human' if game == 'gw2' && race == 'human-of-tyria'

    rel = Syllable.where(
      game_id: game_id,
      race_id: race_id,
      sex: sex,
      position: position,
      namepart: namepart
    )

    count = rel.count
    rand_record = rel.offset(rand(count)).first.syllable
  end
end
