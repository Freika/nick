class ChangeGwHumanSlug < ActiveRecord::Migration
  def change
    human = Race.where(game_id: Game.find_by(slug: 'gw2').id, slug: 'human').first
    human.slug = 'human-of-tyria'
    human.save
  end
end
