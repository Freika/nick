class Statistic < ActiveRecord::Base

  def self.tweet
    nick = Statistic.offset(rand(Statistic.size)).first
    if nick.game == "samp"
      game = "SAMP"
    elsif nick.game == "wow"
      game = "WorldofWarcraft"
    else
      game = "GuildWars2"
    end

    if nick.race ==  "human"
      race = "Человека"
    elsif nick.race == "orc"
      race = "Орка"
    elsif nick.race == "gnome"
      race = "Гнома"
    elsif nick.race == "troll"
      race = "Тролля"
    elsif nick.race == "dwarf"
      race = "Дворфа"
    elsif nick.race == "tauren"
      race = "Таурена"
    elsif nick.race == "nightelf"
      race = "Ночного эльфа"
    elsif nick.race == "undead"
      race = "Отрекшегося"
    elsif nick.race == "draenei"
      race = "Дренея"
    elsif nick.race == "bloodelf"
      race = "Эльфа крови"
    elsif nick.race == "worgen"
      race = "Воргена"
    elsif nick.race == "goblin"
      race = "Гоблина"
    elsif nick.race == "pandaren"
      race = "Пандарена"
    elsif nick.race == "asura"
      race = "Асура"
    elsif nick.race == "sylvari"
      race = "Сильвари"
    elsif nick.race == "norn"
      race = "Норна"
    elsif nick.race == "charr"
      race = "Чарра"
    elsif nick.race == "english"
      race = "Британца"
    elsif nick.race == "german"
      race = "Немца"
    elsif nick.race == "french"
      race = "Француза"
    elsif nick.race == "italian"
      race = "Итальянца"
    elsif nick.race == "danish"
      race = "Датчанина"
    elsif nick.race == "swedish"
      race = "Шведа"
    else
      race = "Испанца"
    end

    if nick.sex == "male"
      sex = "мужчины"
    else
      sex = "женщины"
    end

  end

  def self.top20wow
    top = Statistic.select(:name).group(:name).having("count(*)>1").where(game: "wow").size
    top_array = []
    top.each_key do |name|
      top_array << name
    end

    top_array
  end

  def self.top20samp
    top = Statistic.select(:name).group(:name).having("count(*)>1").where(game: "samp").size
    top_array = []
    top.each_key do |name|
      top_array << name
    end

     top_array
  end

  def self.top20gw2
    top = Statistic.select(:name).group(:name).having("count(*)>1").where(game: "gw2").size
    top_array = []
    top.each_key do |name|
      top_array << name
    end

    top_array
  end
end
