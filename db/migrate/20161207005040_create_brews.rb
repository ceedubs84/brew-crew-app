class CreateBrews < ActiveRecord::Migration[5.0]
  def change
    create_table :brews do |t|
      t.string :name
      t.string :style
      t.string :hop
      t.string :yeast
      t.string :malt
      t.string :ibu
      t.string :alcohol
      t.string :blg

      t.timestamps
    end
  end
end
