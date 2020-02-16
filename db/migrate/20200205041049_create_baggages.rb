class CreateBaggages < ActiveRecord::Migration[5.2]
  def change
    create_table :baggages do |t|
      t.integer :d_bed
      t.integer :sd_bed
      t.integer :s_bed
      t.integer :sofa_3
      t.integer :sofa_2
      t.integer :sofa_1
      t.integer :syokkidana
      t.integer :sideboad
      t.integer :big_tansu
      t.integer :min_tansu
      t.integer :isyoucase
      t.integer :hondana
      t.integer :big_table
      t.integer :min_table
      t.integer :kotatu
      t.integer :doresser
      t.integer :big_tv
      t.integer :min_tv
      t.integer :conpo
      t.integer :pc
      t.integer :syoumei
      t.integer :sutobu
      t.integer :big_reizouko
      t.integer :min_reizouko
      t.integer :renzi
      t.integer :kansouki
      t.integer :big_sentaku
      t.integer :min_sentaku
      t.integer :eacon
      t.integer :huton
      t.integer :kapetto
      t.integer :tree
      t.integer :tyari
      t.integer :butudan
      t.integer :bike
      t.integer :piano
      t.integer :danboru
      t.timestamps
    end
  end
end
