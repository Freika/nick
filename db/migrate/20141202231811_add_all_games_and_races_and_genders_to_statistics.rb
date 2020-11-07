class AddAllGamesAndRacesAndGendersToStatistics < ActiveRecord::Migration[4.2]
  def change
    add_column :statistics, :wow, :integer
    add_column :statistics, :gw, :integer
    add_column :statistics, :samp, :integer
    add_column :statistics, :minecraft, :integer

    add_column :statistics, :wow_human, :integer
    add_column :statistics, :dwarf, :integer
    add_column :statistics, :gnome, :integer
    add_column :statistics, :nightelf, :integer
    add_column :statistics, :draenei, :integer
    add_column :statistics, :worgen, :integer
    add_column :statistics, :pandaren, :integer
    add_column :statistics, :orc, :integer
    add_column :statistics, :troll, :integer
    add_column :statistics, :tauren, :integer
    add_column :statistics, :undead, :integer
    add_column :statistics, :bloodelf, :integer
    add_column :statistics, :goblin, :integer
    add_column :statistics, :gw_human, :integer
    add_column :statistics, :asura, :integer
    add_column :statistics, :sylvari, :integer
    add_column :statistics, :norn, :integer
    add_column :statistics, :charr, :integer
    add_column :statistics, :english, :integer
    add_column :statistics, :german, :integer
    add_column :statistics, :french, :integer
    add_column :statistics, :italian, :integer
    add_column :statistics, :danish, :integer
    add_column :statistics, :swedish, :integer
    add_column :statistics, :spanish, :integer
    add_column :statistics, :steve, :integer
    add_column :statistics, :male, :integer
    add_column :statistics, :female, :integer

    wow = Statistic.where(game: 'wow').count
    gw = Statistic.where(game: 'gw2').count
    samp = Statistic.where(game: 'samp').count
    minecraft = Statistic.where(game: minecraft).count

    wow_human = Statistic.where(game: 'wow', race: 'human').count
    dwarf = Statistic.where(race: 'dwarf').count
    gnome = Statistic.where(race: 'gnome').count
    nightelf = Statistic.where(race: 'nightelf').count
    draenei = Statistic.where(race: 'draenei').count
    worgen = Statistic.where(race: 'worgen').count
    pandaren = Statistic.where(race: 'pandaren').count
    orc = Statistic.where(race: 'orc').count
    troll = Statistic.where(race: 'troll').count
    tauren = Statistic.where(race: 'tauren').count
    undead = Statistic.where(race: 'undead').count
    bloodelf = Statistic.where(race: 'bloodelf').count
    goblin = Statistic.where(race: 'goblin').count

    gw_human = Statistic.where(game: 'gw2', race: 'human').count
    asura = Statistic.where(race: 'asura').count
    sylvari = Statistic.where(race: 'sylvari').count
    norn = Statistic.where(race: 'norn').count
    charr = Statistic.where(race: 'charr').count

    english = Statistic.where(race: 'human').count
    german = Statistic.where(race: 'german').count
    french = Statistic.where(race: 'french').count
    italian = Statistic.where(race: 'italian').count
    danish = Statistic.where(race: 'danish').count
    swedish = Statistic.where(race: 'swedish').count
    spanish = Statistic.where(race: 'spanish').count

    steve = Statistic.where(race: 'steve').count

    male = Statistic.where(sex: 'male').count
    female = Statistic.where(sex: 'female').count

    Statistic.create(
        wow: wow, gw: gw, samp: samp, minecraft: minecraft, wow_human: wow_human,
        dwarf: dwarf, gnome: gnome, nightelf: nightelf, draenei: draenei,
        worgen: worgen, pandaren: pandaren, orc: orc, troll: troll,
        tauren: tauren, undead: undead, bloodelf: bloodelf, goblin: goblin,
        gw_human: gw_human, asura: asura, sylvari: sylvari, norn: norn,
        charr: charr, english: english, german: german, french: french,
        italian: italian, danish: danish, swedish: swedish, spanish: spanish,
        steve: steve, male: male, female: female
    )
  end
end
