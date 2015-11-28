class TranslateMinecraft < ActiveRecord::Migration
  def change
    I18n.locale = :en
    man = Race.find_by(slug: 'man')
    man.name = 'Nicknames for Minecraft'
    man.title = 'Minecraft nicknames generator, nicknames for minecraft by skins'
    man.content = 'Nicknames for Minecraft can be any. Nevertheless, many servers demand that the name corresponded to the atmosphere of game. The player has to create a role nickname or a name for the character of Minecraft. On this page you can create a set of nicknames for boys. Simply press the button above and choose that is pleasant to you.'
    man.save!

    girl = Race.find_by(slug: 'woman')
    girl.name = ''
    girl.title = ''
    girl.content = ''
  end
end
