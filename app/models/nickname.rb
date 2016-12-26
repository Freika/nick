class Nickname < ApplicationRecord
  WOW_RACES = %w(
    human gnome dwarf pandaren draenei worgen nightelf orc troll tauren
    undead bloodelf goblin
  ).freeze
  GW_RACES = %w(human-of-tyria charr asura norn sylvari).freeze
  SAMP_RACES = %w(english german french italian danish swedish spanish).freeze
  SEX = %w(male female).freeze

  def self.generate_wow(race, sex)
    # nick = get_nick('wow', race, sex)
    # nick = NicknameGenerator.new(game: 'wow', race: race, sex: sex, namepart: 'name').generate

    name_start = get_syllable('wow', race, sex, 'start', 'name')
    name_mid =
      unless race == 'pandaren' && sex == 'male'
        get_syllable('wow', race, sex, 'middle', 'name')
      end
    name_fin = get_syllable('wow', race, sex, 'end', 'name')

    nick = "#{name_start}#{name_mid}#{name_fin}"

    Nickname.create(name: nick)
  end

  def self.generate_gw(race, sex)
    # only charr, human and norn (because of names' length)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid   = get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin   = get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin   = get_syllable('gw2', race, 'male', 'end', 'surname')
    # game: 'gw' or 'gw2' ?

    Nickname.create(
      name: "#{name_start}#{name_mid}#{name_fin} #{surname_start}#{surname_fin}"
    )
  end

  def self.generate_gw_asura(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_fin =   get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin =   get_syllable('gw2', race, 'male', 'end', 'surname')

    Nickname.create(
      name: "#{name_start}#{name_fin} #{surname_start}#{surname_fin}"
    )
  end

  def self.generate_gw_sylvari(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid =   get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin =   get_syllable('gw2', race, sex, 'end', 'name')

    Nickname.create(name: "#{name_start}#{name_mid}#{name_fin}")
  end

  def self.generate_samp(race, sex)
    name =    get_syllable('samp', race, sex, 'start', 'name')
    surname = get_syllable('samp', race, sex, 'start', 'surname')

    Nickname.create(name: "#{name} #{surname}")
  end

  def self.generate_minecraft(race, sex)
    # Lil cheat: minecraft 'syllables' have only male gender
    name =    get_syllable('minecraft', race, 'male', 'start', 'name')
    surname = get_syllable('minecraft', race, 'male', 'start', 'surname')

    Nickname.create(name: "#{name.capitalize} #{surname.capitalize}")
  end

  def self.generate_minecraft_skin(race, sex)
    name = get_syllable('minecraft', race, sex, 'start', 'name')

    name = Nickname.create(name: name)
  end

  def self.generate_dota(race, sex)
    name = get_syllable('dota', race, sex, 'start', 'name')

    name = Nickname.create(name: name)
  end

  private

  def self.get_nick(game, race, sex)
    Syllable.find_by_sql(
      [
        "(
          select syllable from syllables where game = :game and race = :race
          and sex = :sex and position = 'start' and namepart = 'name'
          order by random() limit 1
          )
          union
          (
          select syllable from syllables where game = :game and race = :race
          and sex = :sex and position = 'middle' and namepart = 'name'
          order by random() limit 1
          )
          union
          (
          select syllable from syllables where game = :game and race = :race
          and sex = :sex and position = 'end' and namepart = 'name'
          order by random() limit 1
          )
          order by syllable
        ",
        game: 'wow', race: race, sex: sex
      ]
    ).map{ |s| s.syllable }.sum
  end

  def self.get_syllable(game, race, sex, position='start', namepart='name')
    sex = 'male' if namepart == 'surname'
    race = 'human' if game == 'gw2' && race == 'human-of-tyria'

    rel = Syllable.where(
      game: game, race: race, sex: sex, position: position, namepart: namepart
    )
    count = rel.count
    rand_record = rel.offset(rand(count)).first.syllable
  end
end
