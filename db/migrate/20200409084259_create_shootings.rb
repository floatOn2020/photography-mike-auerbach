class CreateShootings < ActiveRecord::Migration[6.0]
  def change
    create_table :shootings do |t|
      t.string :who_or_what
      t.string :place
      t.string :date
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
