class TranslateGw < ActiveRecord::Migration
  def change
    I18n.locale = :en
    human = Race.find_by(slug: 'human-of-tyria')
    human.title = 'Nickname generator for Humans of Tyria'
    human.name = 'Nickname generator for Humans of Tyria'
    human.content = 'Name of the Person habitually to hearing of the majority of races of Tyria. Names happen the short and long, executed the importance and simply names. As the second part of a name people use a surname - she points to belonging to a certain family, and as the family for this race has considerable value, and surnames are carried practically by all her representatives.'
    human.save!

    charr = Race.find_by(slug: 'charr')
    charr.title = 'Nickname generator for Charr'
    charr.name = 'Nickname generator for Charr'
    charr.content = 'Grown in a flame and a smoke of continuous wars, Charr, most of all similar to aggressive horned cats, give to the children sharp, but at the same time and sonorous names. Surnames - the second names - charr are also their nicknames. If the cat differs in the light step which isn\'t leaving traces on snow, most likely, that companions and will nickname him - Silentwalker.'
    charr.save!

    norn = Race.find_by(slug: 'norn')
    norn.title = 'Nickname generator for Norn'
    norn.name = 'Nickname generator for Norn'
    norn.content = 'The severe northern people of Norns since ancient times took himself the names corresponding to character and a warehouse of soul. Parents named to the child a name - and that had to glorify it moderately the abilities. Skillful hunters and fans of strong binge, - and how without it in cold weather? - Norna quite often differed and in a military field, for as got terrible nicknames. These nicknames with time also became their surnames.'
    norn.save!

    sylvari = Race.find_by(slug: 'sylvari')
    sylvari.name = 'Nickname generator for Sylvari'
    sylvari.title = 'Nickname generator for Sylvari'
    sylvari.content = 'Sylvari - unborn children of a great tree and therefore have no surname. The name of Sylvari sounds directly and honestly, and lack of the second name doesn\'t allow to forget to none of them - and from people around - that each Sylvari is part of a uniform family, the uniform world and all Tyria.'
    sylvari.save!

    asura = Race.find_by(slug: 'asura')
    asura.name = 'Nickname generator for Asura'
    asura.title = 'Nickname generator for Asura'
    asura.content = 'Names of representatives of race of Asura very seldom happen long. They are made of one or two syllables and often have the repeating concordants. It is fair as concerning female, and man\'s names. A name of Asura - one word, they have no surnames. As the second word the position, a profession or the rank received for any merits can serve. The same who nevertheless takes himself the second name, are considered as others of Asura as excentric odd fellows.'
    asura.save!
  end
end
