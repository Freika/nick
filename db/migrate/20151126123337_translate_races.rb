class TranslateRaces < ActiveRecord::Migration
  def change
    I18n.locale = :en
    german = Race.find_by(slug: 'german')
    german.title = 'Beautiful German names and surnames'
    german.name = 'Beautiful German names and surnames'
    german.content = 'The German names are known for the loudness and some roughness in sounding. However, beautiful female names and surnames in at all not a rarity in Germany. As well as man\'s, they have some rigidity, but this rigidity also gives also uniqueness to sounding, not to mention own charm and charm. The generator of nicknames will allow to create a beautiful German name and a surname for your character in SAMP.'
    german.save!

    french = Race.find_by(slug: 'french')
    french.title = 'Beautiful French names and surnames'
    french.name = 'Beautiful French names and surnames'
    french.content = 'It is known that the French names and surnames - one of the most beautiful in the world. French and Frenchwomen speak easy, air language which doesn\'t allow a rough pronunciation. Therefore beautiful French names and surnames are peculiar both to men, and women. On this page it is very easy to create the French name for game in SAMP.'
    french.save!

    italian = Race.find_by(slug: 'italian')
    italian.title = 'Beautiful Italian names and surnames'
    italian.name = 'Beautiful Italian names and surnames'
    italian.content = 'Italians - the temperamental and bright nation. The history and traditions of these people made turned names some centuries. Beautiful Italian names and surnames - at all not a rarity (both man\'s, and female), though for Italians this commonplace. Create a beautiful surname for San Andreas Multiplayer and plunge into game as the real Italian!'
    italian.save!

    denmark = Race.find_by(slug: 'danish')
    denmark.title = 'Beautiful Danish names and surnames'
    denmark.name = 'Beautiful Danish names and surnames'
    denmark.content = 'Denmark - the homeland of one great storyteller with a sonorous and big name. The Danish names keep in themselves a traditional pronunciation and change not so quickly, as names of other people. Create a beautiful man\'s or female name and a surname for game in GTA San Andreas Multiplayer and win back a role of the Dane in the world of SAMP.'
    denmark.save!

    sweden = Race.find_by(slug: 'swedish')
    sweden.name = 'Beautiful Swedish names and surnames'
    sweden.title = 'Beautiful Swedish names and surnames'
    sweden.content = 'Swedes - the northern people, in their names are audible echoes of ancient traditions and frosty winter. Beautiful Swedish names make about a half from all names inherent in inhabitants of Scandinavia. The same can be told and about beautiful Swedish surnames. Here it is easy to generate a beautiful man\'s or female Swedish name and a surname for game in SAMP.'
    sweden.save!

    spanish = Race.find_by(slug: 'spanish')
    spanish.title = 'Beautiful Spanish names and surnames'
    spanish.name = 'Beautiful Spanish names and surnames'
    spanish.content = 'Passionate Spaniards often possess names, a little sharp for the unusual person. However, they aren\'t deprivations of a peculiar beauty and if though for a second to think, the Spanish names same beautiful, as well as at other people. Beautiful Spanish surnames meet not so often, but also there is a lot of them to generate man\'s (or female) a name and a surname for GTA San Andreas Multiplayer.'
    spanish.save!

    english = Race.find_by(slug: 'english')
    english.name = 'Beautiful English, British and American names and surnames'
    english.title = 'Beautiful English (British and American) names and surnames'
    english.content = 'Inhabitants of foggy Albion and all Connected Kingdoms differ in fine ancient names. Beautiful English names and surnames are their property, many a family conduct the sort with the Middle Ages and to this day keep beautiful surnames. Create to yourself English or American (man\'s or female) a name and a surname for San Andreas Multiplayer.'
    english.save!
  end
end
