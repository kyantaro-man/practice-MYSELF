class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :date
      t.string :title
      t.string :quotation
      t.string :effort
      t.string :achievement
      t.string :todo
      t.string :free
      t.text :memo
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
