class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :company_id
      t.string :gender
      t.string :tel_mail
      t.string :estimate
      t.string :operator
      t.string :service
      t.text :title
      t.text :text
      t.timestamps
    end
  end
end
