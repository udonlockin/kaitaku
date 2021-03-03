class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :title,              null: false
      t.text :good_point,              null: false
      t.text :detail,              null: false
      t.references :user,              null: false, foreign_key: true
      t.text :image
      t.timestamps
    end
  end
end
