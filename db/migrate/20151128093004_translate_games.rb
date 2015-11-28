class TranslateGames < ActiveRecord::Migration
  def change
    I18n.locale = :en
    wow = Game.find_by(slug: 'wow')
    wow.title = 'Nickname generator for World of Warcraft, roleplay nicknames, pvp nicknames for WoW'
    wow.name = 'Nickname generator for World of Warcraft'
    wow.content = "Definitely, thousands of players faced the need to choose the name for their character.
    It is not always easy to pick a nickname that suits your userpick, alter ego and the realm all at once. Nickname generator partially solves this problem - you can use it to generate roleplay nickname for WoW. By the way, there are millions of possible nicknames, indulge yourself in choosing the best out there! \r\n\r\nGenerator is split to race-based categories and all of the created nicknames look specifically in accordance to race you choose."
    wow.save!

    minecraft = Game.find_by(slug: 'minecraft')
    minecraft.title = 'Nicknames by skins for Minecraft'
    minecraft.name = 'Nickname generator for Minecraft'
    minecraft.content = 'Minecraft nickname genarator helps to easily pick a nick suited for every fancy. In addition to simple nickname creation Nickshaker offers its users to get a bundle: nickname+skin. Just click the button to get a nickname and then decide whether you like the offered skin or not. If you log in with this nickname into the game, you will have the associated skin too!'
    minecraft.save!

    gw2 = Game.find_by(slug: 'gw2')
    gw2.title = 'Nickname generator for Guild Wars and Guild Wars 2.'
    gw2.name = 'Nickname generator for Guild Wars'
    gw2.content = 'In the world of Tyria a lot of races are presented, and there are 5 of them for you to play. Proud human, peaceful Sylvari, craftful Asura, martial Charr and harsh Norn - every race has its own names you would like to have to fit in the spirit of the game and enjoy it at max. Call your Norn with a truly Nordic name to fame him far away from the native snowy plains or pick a nickname for any of your characters!'
    gw2.save!

    samp = Game.find_by(slug: 'samp')
    samp.title = 'English, Italian. Swedish, Danish, German, French and Spanish names for San Andreas Multiplayer (or SAMP)'
    samp.name = 'Nickname generator for GTA San Andreas Multiplayer'
    samp.content = 'The realm of GTA San Andreas Multiplayer is based on real cities, where real people live. Germans, Italians, French and Americans, of course, live there. For a complete gaming experience you will need a roleplay nickname for GTA SAMP. Here you can generate a fancy nickname for any nationality. Create both male and female names and surnames for your chars!'
    samp.save!
  end
end
