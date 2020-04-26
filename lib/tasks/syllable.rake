namespace :syllable do
  desc "Set parents for all the syllables"
  task set_parents: :environment do
    Game.all.each do |game|
      syllables = Syllable.where('game = ?', game.slug)
      syllables.update_all(game_id: game.id)
      p "#{game.slug} syllables updated"

      game.races.each do |race|
        race_syllables = Syllable.where(
          'game = ? and race = ?', game.slug, race.slug
        )

        race_syllables.update_all(race_id: race.id)

        p "#{game.slug} #{race.slug} syllables updated"
      end
    end

    gw2_humans = Race.find_by(slug: 'human-of-tyria')
    Syllable
      .where('game = ? and race_id = 0', 'gw2')
      .update_all(race_id: gw2_humans.id)

    p 'GW2 human syllables updated'
  end
end
