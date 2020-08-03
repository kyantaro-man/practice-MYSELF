class CreateIntroductions < ActiveRecord::Migration[6.0]
  def change
    create_table :introductions do |t|
      t.text :short1
      t.text :short2
      t.text :short3
      t.text :long1
      t.text :long2
      t.text :free1
      t.text :free2
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
