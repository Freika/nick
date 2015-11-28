class TranslateHorde < ActiveRecord::Migration
  def change
    I18n.locale = :en

    orc = Race.find_by(slug: 'orc')
    orc.name = 'Nickname generator for Orc'
    orc.title = 'Nickname generator for Orc, roleplay nicknames generator for orc in world of warcraft'
    orc.content = 'Orcs - newcomers from Draenor, nowadays known as Outland. Despite the initial bonds to the spirits of nature, they historically are known as fearless and bloodthirsty warriors. Orcs’ names sound harsh, blunt and without a hinge of harmony or beauty.'
    orc.save!

    goblin = Race.find_by(slug: 'goblin')
    goblin.name = 'Nickname generator for Goblin'
    goblin.title = 'Nickname generator for Goblin, roleplay nicknames generator for goblin in world of warcraft'
    goblin.content = 'The only explanation goblins are not extinct is their luck and business skills. Most of the race is indeed greedy, they favor both money and explosives. If your companion has a name sounding like Goldexplode - make sure you do not have any deal with him. This maybe risky either for your health, your pocket contents or life expectancy. Or for all at once.'
    goblin.save!

    undead = Race.find_by(slug: 'undead')
    undead.name = 'Nickname generator for Undead (forsaken)'
    undead.title = 'Nickname generator for Undead, roleplay nicknames generator for forsaken in world of warcraft'
    undead.content = 'Forsaken are the rebellious people of the former Lordaeron. They used to have ordinary human names that may sound old-fashioned. Though this is what adds up the bitterness to existence of faithful Queen banshee followers and reminds of their past - once being a human...'
    undead.save!

    tauren = Race.find_by(slug: 'tauren')
    tauren.name = 'Nickname generator for Tauren'
    tauren.title = 'Nickname generator for Tauren, roleplay nicknames generator for tauren in world of warcraft'
    tauren.content = 'Taurens are in fact bound to nature as much as Elves are. The root of their traditions is worshiping the Sun, nature and paying respect to their ancestors that gave the endless wisdom to the living ones. Taurens’ names are easyly remembered and simple. Probably that is why they sound nicely, though at times they are belligerent in some way.'
    tauren.save!

    troll = Race.find_by(slug: 'troll')
    troll.name = 'Nickname generator for Troll'
    troll.title = 'Nickname generator for Troll, roleplay nicknames generator for troll in world of warcraft'
    troll.content = 'Trolls are ancient bloodthirsty race featuring both abiding to their traditions and respect for their ancestors. Trolls have not advanced in technology yet, though still they honor their shamanistic covenants between the sessions of smoking pipe and voodoo talks. Their names may sound rude, yet they are charming as Vol’Jin’s smile.'
    troll.save!

    bloodelf = Race.find_by(slug: 'bloodelf')
    bloodelf.name = 'Nickname generator for Blood Elf'
    bloodelf.title = 'Nickname generator for Blood Elf, roleplay nicknames generator for High Elf in world of warcraft'
    bloodelf.content = 'Blood Elves - proud, haughty race which ancestors are legendary highest elves. They gravitate to the sun and magic for this reason their names quite often bear in themselves something magic, proud and fearless. Sounding of their names inspires confidence in their firmness and fidelity in ideals of the people.'
    bloodelf.save!
  end
end
