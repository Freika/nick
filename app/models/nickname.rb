class Nickname < ActiveRecord::Base

  WOW_RACES = %w(human gnome dwarf pandaren draenei worgen nightelf orc troll tauren undead bloodelf goblin).freeze
  GW_RACES = %w(human charr asura norn sylvari).freeze
  SAMP_RACES = %w(english german french italian danish swedish spanish).freeze
  SEX = %w(male female).freeze

  def self.generate_wow(race, sex)
    start = wow_syllable(race, sex, 'start')
    mid = wow_syllable(race, sex, 'middle')
    fin = wow_syllable(race, sex, 'end')
    name = Nickname.create(game: 'wow', race: race, sex: sex, name: "#{start}#{mid}#{fin}")
  end

  def self.generate_gw(race, sex)
    # only charr, human and norn (because of names' length)
    name_start = gw_syllable(race, sex, 'start', 'name')
    name_mid = gw_syllable(race, sex, 'middle', 'name')
    name_fin = gw_syllable(race, sex, 'end', 'name')

    surname_start = gw_syllable(race, 'male', 'start', 'surname')
    surname_fin = gw_syllable(race, 'male', 'end', 'surname')
    #game: 'gw' or 'gw2' ?
    name = Nickname.create(game: 'gw', race: race, sex: sex, name: "#{name_start}#{name_mid}#{name_fin} #{surname_start}#{surname_fin}")
  end

  def self.generate_asura(race, sex)
    name_start = gw_syllable(race, sex, 'start', 'name')
    name_fin = gw_syllable(race, sex, 'end', 'name')

    surname_start = gw_syllable(race, 'male', 'start', 'surname')
    surname_fin = gw_syllable(race, 'male', 'end', 'surname')
    name = Nickname.create(game: 'gw', race: race, sex: sex, name: "#{name_start}#{name_fin} #{surname_start}#{surname_fin}")
  end

  private

  def self.wow_syllable(race, sex, position)
    Syllable.where(game: 'wow', race: race, sex: sex, position: position, namepart: 'name').pluck(:syllable).sample
  end

  def self.gw_syllable(race, sex, position, namepart)
    Syllable.where(game: 'gw2', race: race, sex: sex, position: position, namepart: namepart).pluck(:syllable).sample
  end
end
