class ChangeMaltToMalts < ActiveRecord::Migration[5.0]
  def change
    rename_column :brews, :malt, :malts
  end
end