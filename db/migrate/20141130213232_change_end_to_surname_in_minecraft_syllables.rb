class ChangeEndToSurnameInMinecraftSyllables < ActiveRecord::Migration
  def change
    s = Syllable.where(game: 'minecraft', position: 'end')
    s.update_all(position: 'start', namepart: 'surname')
  end
end
