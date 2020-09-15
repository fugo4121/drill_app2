class CreateMsgs < ActiveRecord::Migration[6.0]
  def change
    create_table :msgs do |t|
      t.string :name
      t.string :e_mail
      t.text :message
      t.timestamps
    end
  end
end
