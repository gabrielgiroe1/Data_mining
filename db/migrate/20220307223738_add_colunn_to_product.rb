class AddColunnToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :id2, :string
    add_column :products, :groupId, :string
    add_column :products, :matchId, :string
    add_column :products, :assists, :integer
    add_column :products, :boosts, :integer
    add_column :products, :damageDealt, :string
    add_column :products, :DBNOs, :integer
    add_column :products, :headshotKills, :integer
    add_column :products, :heals, :integer
    add_column :products, :killPlace, :integer
  end
end
