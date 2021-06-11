# This migration comes from app_component (originally 20210527014411)
class CreateAppComponentGames < ActiveRecord::Migration[5.2]
  def change
    create_table :app_component_games do |t|
      t.datetime :date
      t.string :location
      t.integer :first_team_id
      t.integer :last_team_id
      t.integer :winning_team
      t.integer :first_team_score
      t.integer :last_team_score

      t.timestamps
    end
  end
end