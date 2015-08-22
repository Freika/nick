class Nickname < ActiveRecord::Base
  WOW_RACES = %w(human gnome dwarf pandaren draenei worgen nightelf orc troll tauren undead bloodelf goblin).freeze
  GW_RACES = %w(human-of-tyria charr asura norn sylvari).freeze
  SAMP_RACES = %w(english german french italian danish swedish spanish).freeze
  SEX = %w(male female).freeze

  def self.generate_wow(race, sex)
    start = get_syllable('wow', race, sex, 'start')
    mid = get_syllable('wow', race, sex, 'middle')
    fin = get_syllable('wow', race, sex, 'end')
    Statistic.update_weekly do
      race = 'wow_human' if race == 'human'
      s = Statistic.last.increment(:wow).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end
    name = Nickname.create(name: "#{start}#{mid}#{fin}")
  end

  def self.generate_gw(race, sex)
    # only charr, human and norn (because of names' length)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid   = get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin   = get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin   = get_syllable('gw2', race, 'male', 'end', 'surname')
    # game: 'gw' or 'gw2' ?
    Statistic.update_weekly do
      race = 'gw_human' if race == 'human-of-tyria'
      s = Statistic.last.increment(:gw).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end
    name = Nickname.create(name: "#{name_start}#{name_mid}#{name_fin} #{surname_start}#{surname_fin}")
  end

  def self.generate_gw_asura(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_fin =   get_syllable('gw2', race, sex, 'end', 'name')

    surname_start = get_syllable('gw2', race, 'male', 'start', 'surname')
    surname_fin =   get_syllable('gw2', race, 'male', 'end', 'surname')

    Statistic.update_weekly do
      s = Statistic.last.increment(:gw).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end
    name = Nickname.create(name: "#{name_start}#{name_fin} #{surname_start}#{surname_fin}")
  end

  def self.generate_gw_sylvari(race, sex)
    name_start = get_syllable('gw2', race, sex, 'start', 'name')
    name_mid =   get_syllable('gw2', race, sex, 'middle', 'name')
    name_fin =   get_syllable('gw2', race, sex, 'end', 'name')

    Statistic.update_weekly do
      s = Statistic.last.increment(:gw).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end

    name = Nickname.create(name: "#{name_start}#{name_mid}#{name_fin}")
  end

  def self.generate_samp(race, sex)
    name =    get_syllable('samp', race, sex, 'start', 'name')
    surname = get_syllable('samp', race, sex, 'start', 'surname')

    Statistic.update_weekly do
      s = Statistic.last.increment(:samp).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end

    name = Nickname.create(name: "#{name} #{surname}")
  end

  def self.generate_minecraft(race, sex)
    # Lil cheat: minecraft 'syllables' have only male gender
    name =    get_syllable('minecraft', race, 'male', 'start', 'name')
    surname = get_syllable('minecraft', race, 'male', 'start', 'surname')

    Statistic.update_weekly do
      s = Statistic.last.increment(:minecraft).increment(race.to_sym).increment(sex.to_sym)
      s.save
    end

    name = Nickname.create(name: "#{name.capitalize} #{surname.capitalize}")
  end

  def self.generate_minecraft_skin(race, sex)
    name = get_syllable('minecraft', race, sex, 'start', 'name')

    Statistic.update_weekly do
      s = Statistic.last.increment(:minecraft).increment(:male).increment(sex.to_sym)
      s.save
    end

    name = Nickname.create(name: name)
  end

  def self.generate_dota(race, sex)
    name = get_syllable('dota', race, sex, 'start', 'name')

    Statistic.update_weekly do
      s = Statistic.last.increment(:dota).increment(:male).increment(sex.to_sym)
      s.save
    end

    name = Nickname.create(name: name)
  end

  private

  def self.get_syllable(game, race, sex, position='start', namepart='name')
    sex = 'male' if namepart == 'surname'
    race = 'human' if game == 'gw2' && race == 'human-of-tyria'
    Syllable.where(game: game, race: race, sex: sex, position: position, namepart: namepart).pluck(:syllable).sample
  end
end
