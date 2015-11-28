class TranslateAlliance < ActiveRecord::Migration
  def change
    I18n.locale = :en
    pandaren = Race.find_by(slug: 'pandaren')
    pandaren.title = 'Nickname generator for Pandaren, roleplay nicknames for panda in world of warcraft'
    pandaren.name = 'Nickname generator for Pandaren'
    pandaren.content = 'Pandaren - ancient race of beings who looks like panda bears and are famous for the commitment to beer, martial arts and self-improvement. Their names repeat traditions of the East - each syllable has own value and if to transfer a name of a pandaren to one of languages, widespread in Azerot, it will be simple to estimate all his beauty.'
    pandaren.save!

    gnome = Race.find_by(slug: 'gnome')
    gnome.title = 'Nickname generator for Gnome, roleplay nicknames generator for gnome in world of warcraft'
    gnome.name = 'Nickname generator for Gnome'
    gnome.content = 'Gnomes are skillful mechanics and engineers and are adore to mastering complex gadgets, which often leads to destructions of one kind or another. Sometimes gnomes link their lives with magic, which does not stop their names sound like you shake a bucket full of screws and bolts.'
    gnome.save!

    dwarf = Race.find_by(slug: 'dwarf')
    dwarf.name = 'Nickname generator for Dwarf'
    dwarf.title = 'Nickname generator for Dwarf, roleplay nicknames generator for dwarf in world of warcraft'
    dwarf.content = 'Dwarves resided in Azeroth from the moment of its origin. Initially their race was called Earthen, but evolution has stepped forward, and dwarves, thickset and rough, have become what we know them. Dwarves are masters of brewery, mining and blacksmithing and many of their names came from these activities.'
    dwarf.save!

    nelf = Race.find_by(slug: 'nightelf')
    nelf.name = 'Nickname generator for Night Elf'
    nelf.title = 'Nickname generator for Night Elf, roleplay nicknames generator for night elf in world of warcraft'
    nelf.content = 'Night elves are skillful druids and priests, the most connected to nature when compared to other races. Their names sound pleasantly: their striving for being in harmony made them beatiful and unforgettable. Elves have meaningful names - every sound has its own sense.'
    nelf.save!

    draenei = Race.find_by(slug: 'draenei')
    draenei.title = 'Nickname generator for Draenei, roleplay nicknames generator for draenei in world of warcraft'
    draenei.name = 'Nickname generator for Draenei'
    draenei.content = 'Draenei are the race of space refugees, keeping in their oath the worship of light, faith in profecies and veneration of Naaru - their celestial patrons. The names of draenei traditionally contain a lot of vowels, which sound a bit unusual to the ear of aboriginal Azeroth races.'
    draenei.save!

    worgen = Race.find_by(slug: 'worgen')
    worgen.name = 'Nickname generator for Worgen'
    worgen.title = 'Nickname generator for Worgen, roleplay nicknames generator for werewolf in world of warcraft'
    worgen.content = 'Genn Greymane expected in vain his great wall to defend the folk of Gilneas from every threat. The bitter destiny awaited the citizens of glorious kingdom despite of all the hopes. Any worgen - is in the first place the former representative of proud kingdom Gilneas, thus one bears a dignified name. The name, which adds luster to its bearer despite the lupine nature bursting from within.'
    worgen.save!

    human = Race.find_by(slug: 'human')
    human.name = 'Nickname generator for Human'
    human.title = 'Nickname generator for Human, roleplay nicknames generator for human in world of warcraft'
    human.content = 'Human race is one of the oldest in Azeroth. Many humans devote their life to serving the Light, magic or become valorous warriors. Human names are typically simple yet bare particular sense. No worries if it will get lost or is non-existent in the first place.'
    human.save!

  end
end
