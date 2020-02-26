class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :company_id
      t.integer :gender
      t.integer :tel_mail
      t.integer :estimate
      t.integer :operator
      t.integer :service
      t.text :title
      t.text :text
      t.timestamps
    end
  end
end
