class Nickname < ActiveRecord::Base

  WOW_RACES = %w(human gnome dwarf pandaren draenei worgen nightelf orc troll tauren undead bloodelf goblin).freeze
  GW_RACES = %w(human charr asura norn sylvari).freeze
  SAMP_RACES = %w(english german french italian danish swedish spanish).freeze
  SEX = %w(male female).freeze

  def self.generate_wow(race, sex)
    start = get_syllable('wow', race, sex, 'start')
    mid = get_syllable('wow', race, sex, 'middle')
    fin = get_syllable('wow', race, sex, 'end')
    name = Nickname.create(game: 'wow', race: race, sex: sex, name: "#{start}#{mid}#{fin}")
  end

  def self.generate_gw(race, sex)
    # only charr, human and norn (because of names' length)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid = get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin = get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin = get_syllable('gw2', race, 'male', 'end', 'surname')
    #game: 'gw' or 'gw2' ?
    name = Nickname.create(game: 'gw', race: race, sex: sex, name: "#{name_start}#{name_mid}#{name_fin} #{surname_start}#{surname_fin}")
  end

  def self.generate_gw_asura(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_fin = get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin = get_syllable('gw2', race, 'male', 'end', 'surname')
    name = Nickname.create(game: 'gw', race: race, sex: sex, name: "#{name_start}#{name_fin} #{surname_start}#{surname_fin}")
  end

  def self.generate_gw_sylvari(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid = get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin = get_syllable('gw2', race, sex, 'end', 'name')

    name = Nickname.create(game: 'gw', race: race, sex: sex, name: "#{name_start}#{name_mid}#{name_fin}")
  end

  def self.generate_samp(race, sex)
    name = get_syllable('samp', race, sex, 'start', 'name')
    surname = get_syllable('samp', race, sex, 'start', 'surname')

    name = Nickname.create(game: 'samp', race: race, sex: sex, name: "#{name} #{surname}")
  end

  def self.generate_minecraft(race, sex)
    # Lil cheat: minecraft 'syllables' have only male gender
    name = get_syllable('minecraft', race, 'male', 'start', 'name')
    surname = get_syllable('minecraft', race, 'male', 'start', 'surname')

    name = Nickname.create(game: 'minecraft', race: race, sex: sex, name: "#{name.capitalize} #{surname.capitalize}")
  end

  private

  def self.get_syllable(game, race, sex, position='start', namepart='name')
    sex = 'male' if namepart == 'surname'
    Syllable.where(game: game, race: race, sex: sex, position: position, namepart: namepart).pluck(:syllable).sample
  end
end