class Baggage < ApplicationRecord

  validates :baggages_valid, presence: true


  def overprice

    if baggage_d_bed = Baggage.last.d_bed.nil?
      d_bed = 2100 * 0
    else
      baggage_d_bed = Baggage.last.d_bed
      d_bed = 2100 * baggage_d_bed
    end

    if baggage_sd_bed = Baggage.last.sd_bed.nil?
      sd_bed = 1650 * 0
    else
      baggage_sd_bed = Baggage.last.sd_bed
      sd_bed = 1650 * baggage_sd_bed
    end

    if baggage_s_bed = Baggage.last.s_bed.nil?
      s_bed = 1320 * 0
    else
      baggage_s_bed = Baggage.last.s_bed
      s_bed = 1320 * baggage_s_bed
    end

    if baggage_sofa_3 = Baggage.last.sofa_3.nil?
      sofa_3 = 2100 * 0
    else
      baggage_sofa_3 = Baggage.last.sofa_3
      sofa_3 = 2100 * baggage_sofa_3
    end

    if baggage_sofa_2 = Baggage.last.sofa_2.nil?
      sofa_2 = 1650 * 0
    else
      baggage_sofa_2 = Baggage.last.sofa_2
      sofa_2 = 1650 * baggage_sofa_2
    end

    if baggage_sofa_1 = Baggage.last.sofa_1.nil?
      sofa_1 = 1320 * 0
    else
      baggage_sofa_1 = Baggage.last.sofa_1
      sofa_1 = 1320 * baggage_sofa_1
    end

    if baggage_syokkidana = Baggage.last.syokkidana.nil?
      syokkidana = 3300 * 0
    else
      baggage_syokkidana = Baggage.last.syokkidana
      syokkidana = 3300 * baggage_syokkidana
    end

    if baggage_sideboad = Baggage.last.sideboad.nil?
      sideboad = 1320 * 0
    else
      baggage_sideboad = Baggage.last.sideboad
      sideboad = 1320 * baggage_sideboad
    end
    
    if baggage_big_tansu = Baggage.last.big_tansu.nil?
      big_tansu = 3300 * 0
    else
      baggage_big_tansu = Baggage.last.big_tansu
      big_tansu = 3300 * baggage_big_tansu
    end

    if baggage_min_tansu = Baggage.last.min_tansu.nil?
      min_tansu = 2200 * 0
    else
      baggage_min_tansu = Baggage.last.min_tansu
      min_tansu = 2200 * baggage_min_tansu
    end

    if baggage_isyoucase = Baggage.last.isyoucase.nil?
      isyoucase = 550 * 0
    else
      baggage_isyoucase = Baggage.last.isyoucase
      isyoucase = 550 * baggage_isyoucase
    end

    if baggage_hondana = Baggage.last.hondana.nil?
      hondana = 2750 * 0
    else
      baggage_hondana = Baggage.last.hondana
      hondana = 2750 * baggage_hondana
    end

    if baggage_big_table = Baggage.last.big_table.nil?
      big_table = 2200 * 0
    else
      baggage_big_table = Baggage.last.big_table
      big_table = 2200 * baggage_big_table
    end

    if baggage_min_table = Baggage.last.min_table.nil?
      min_table = 1620 * 0
    else
      baggage_min_table = Baggage.last.min_table
      min_table = 1620 * baggage_min_table
    end

    if baggage_kotatu = Baggage.last.kotatu.nil?
      kotatu = 1100 * 0
    else
      baggage_kotatu = Baggage.last.kotatu
      kotatu = 1100 * baggage_kotatu
    end

    if baggage_doresser = Baggage.last.doresser.nil?
      doresser = 1620 * 0
    else
      baggage_doresser = Baggage.last.doresser
      doresser = 1620 * baggage_doresser
    end

    if baggage_big_tv = Baggage.last.big_tv.nil?
      big_tv = 1620 * 0
    else
      baggage_big_tv = Baggage.last.big_tv
      big_tv = 1620 * baggage_big_tv
    end

    if baggage_min_tv = Baggage.last.min_tv.nil?
      min_tv = 880 * 0
    else
      baggage_min_tv = Baggage.last.min_tv
      min_tv = 880 * baggage_min_tv
    end

    if baggage_conpo = Baggage.last.conpo.nil?
      conpo = 3300 * 0
    else
      baggage_conpo = Baggage.last.conpo
      conpo = 3300 * baggage_conpo
    end

    if baggage_pc = Baggage.last.pc.nil?
      pc = 1620 * 0
    else
      baggage_pc = Baggage.last.pc
      pc = 1620 * baggage_pc
    end

    if baggage_syoumei = Baggage.last.syoumei.nil?
      syoumei = 1620 * 0
    else
      baggage_syoumei = Baggage.last.syoumei
      syoumei = 1620 * baggage_syoumei
    end

    if baggage_sutobu = Baggage.last.sutobu.nil?
      sutobu = 1100 * 0
    else
      baggage_sutobu = Baggage.last.sutobu
      sutobu = 1100 * baggage_sutobu
    end

    if baggage_big_reizouko = Baggage.last.big_reizouko.nil?
      big_reizouko = 3300 * 0
    else
      baggage_big_reizouko = Baggage.last.big_reizouko
      big_reizouko = 3300 * baggage_big_reizouko
    end

    if baggage_min_reizouko = Baggage.last.min_reizouko.nil?
      min_reizouko = 1620 * 0
    else
      baggage_min_reizouko = Baggage.last.min_reizouko
      min_reizouko = 1620 * baggage_min_reizouko
    end

    if baggage_renzi = Baggage.last.renzi.nil?
      renzi = 770 * 0
    else
      baggage_renzi = Baggage.last.renzi
      renzi = 770 * baggage_renzi
    end

    if baggage_kansouki = Baggage.last.kansouki.nil?
      kansouki = 3300 * 0
    else
      baggage_kansouki = Baggage.last.kansouki
      kansouki = 3300 * baggage_kansouki
    end

    if baggage_big_sentaku = Baggage.last.big_sentaku.nil?
      big_sentaku = 3300 * 0
    else
      baggage_big_sentaku = Baggage.last.big_sentaku
      big_sentaku = 3300 * baggage_big_sentaku
    end

    if baggage_min_sentaku = Baggage.last.min_sentaku.nil?
      min_sentaku = 2200 * 0
    else
      baggage_min_sentaku = Baggage.last.min_sentaku
      min_sentaku = 2200 * baggage_min_sentaku
    end

    if baggage_eacon = Baggage.last.eacon.nil?
      eacon = 2200 * 0
    else
      baggage_eacon = Baggage.last.eacon
      eacon = 2200 * baggage_eacon
    end

    if baggage_huton = Baggage.last.huton.nil?
      huton = 1100 * 0
    else
      baggage_huton = Baggage.last.huton
      huton = 1100 * baggage_huton
    end

    if baggage_kapetto = Baggage.last.kapetto.nil?
      kapetto = 1100 * 0
    else
      baggage_kapetto = Baggage.last.kapetto
      kapetto = 1100 * baggage_kapetto
    end

    if baggage_tree = Baggage.last.tree.nil?
      tree = 1100 * 0
    else
      baggage_tree = Baggage.last.tree
      tree = 1110 * baggage_tree
    end

    if baggage_tyari = Baggage.last.tyari.nil?
      tyari = 1100 * 0
    else
      baggage_tyari = Baggage.last.tyari
      tyari = 1110 * baggage_tyari
    end

    if baggage_butudan = Baggage.last.butudan.nil?
      butudan = 3300 * 0
    else
      baggage_butudan = Baggage.last.butudan
      butudan = 3300 * baggage_butudan
    end

    if baggage_bike = Baggage.last.bike.nil?
      bike = 3300 * 0
    else
      baggage_bike = Baggage.last.bike
      bike = 3300 * baggage_bike
    end

    if baggage_piano = Baggage.last.piano.nil?
      piano = 4950 * 0
    else
      baggage_piano = Baggage.last.piano
      piano = 4950 * baggage_piano
    end

    if baggage_danboru = Baggage.last.danboru.nil?
      danboru = 11 * 0
    else
      baggage_danboru = Baggage.last.danboru
      danboru = 11 * baggage_danboru
    end
    
    @overprice_result = d_bed + sd_bed + s_bed + sofa_3 + sofa_2 + sofa_1 + syokkidana + sideboad + big_tansu + min_tansu + isyoucase + hondana + big_table + min_table + kotatu + doresser + big_tv + min_tv + conpo + pc + syoumei + sutobu + big_reizouko + min_reizouko + renzi + kansouki + big_sentaku + min_sentaku + eacon + huton + kapetto + tree + tyari + butudan + bike + piano + danboru
  end
  
  def lowprice

    if baggage_d_bed = Baggage.last.d_bed.nil?
      d_bed = 2080 * 0
    else
      baggage_d_bed = Baggage.last.d_bed
      d_bed = 2080 * baggage_d_bed
    end

    if baggage_sd_bed = Baggage.last.sd_bed.nil?
      sd_bed = 1630 * 0
    else
      baggage_sd_bed = Baggage.last.sd_bed
      sd_bed = 1630 * baggage_sd_bed
    end

    if baggage_s_bed = Baggage.last.s_bed.nil?
      s_bed = 1300 * 0
    else
      baggage_s_bed = Baggage.last.s_bed
      s_bed = 1300 * baggage_s_bed
    end

    if baggage_sofa_3 = Baggage.last.sofa_3.nil?
      sofa_3 = 2080 * 0
    else
      baggage_sofa_3 = Baggage.last.sofa_3
      sofa_3 = 2080 * baggage_sofa_3
    end

    if baggage_sofa_2 = Baggage.last.sofa_2.nil?
      sofa_2 = 1630 * 0
    else
      baggage_sofa_2 = Baggage.last.sofa_2
      sofa_2 = 1630 * baggage_sofa_2
    end

    if baggage_sofa_1 = Baggage.last.sofa_1.nil?
      sofa_1 = 1300 * 0
    else
      baggage_sofa_1 = Baggage.last.sofa_1
      sofa_1 = 1300 * baggage_sofa_1
    end

    if baggage_syokkidana = Baggage.last.syokkidana.nil?
      syokkidana = 3280 * 0
    else
      baggage_syokkidana = Baggage.last.syokkidana
      syokkidana = 3280 * baggage_syokkidana
    end

    if baggage_sideboad = Baggage.last.sideboad.nil?
      sideboad = 1300 * 0
    else
      baggage_sideboad = Baggage.last.sideboad
      sideboad = 1300 * baggage_sideboad
    end
    
    if baggage_big_tansu = Baggage.last.big_tansu.nil?
      big_tansu = 3280 * 0
    else
      baggage_big_tansu = Baggage.last.big_tansu
      big_tansu = 3280 * baggage_big_tansu
    end

    if baggage_min_tansu = Baggage.last.min_tansu.nil?
      min_tansu = 2180 * 0
    else
      baggage_min_tansu = Baggage.last.min_tansu
      min_tansu = 2180 * baggage_min_tansu
    end

    if baggage_isyoucase = Baggage.last.isyoucase.nil?
      isyoucase = 530 * 0
    else
      baggage_isyoucase = Baggage.last.isyoucase
      isyoucase = 530 * baggage_isyoucase
    end

    if baggage_hondana = Baggage.last.hondana.nil?
      hondana = 2730 * 0
    else
      baggage_hondana = Baggage.last.hondana
      hondana = 2730 * baggage_hondana
    end

    if baggage_big_table = Baggage.last.big_table.nil?
      big_table = 2180 * 0
    else
      baggage_big_table = Baggage.last.big_table
      big_table = 2180 * baggage_big_table
    end

    if baggage_min_table = Baggage.last.min_table.nil?
      min_table = 1600 * 0
    else
      baggage_min_table = Baggage.last.min_table
      min_table = 1600 * baggage_min_table
    end

    if baggage_kotatu = Baggage.last.kotatu.nil?
      kotatu = 1080 * 0
    else
      baggage_kotatu = Baggage.last.kotatu
      kotatu = 1080 * baggage_kotatu
    end

    if baggage_doresser = Baggage.last.doresser.nil?
      doresser = 1600 * 0
    else
      baggage_doresser = Baggage.last.doresser
      doresser = 1600 * baggage_doresser
    end

    if baggage_big_tv = Baggage.last.big_tv.nil?
      big_tv = 1600 * 0
    else
      baggage_big_tv = Baggage.last.big_tv
      big_tv = 1600 * baggage_big_tv
    end

    if baggage_min_tv = Baggage.last.min_tv.nil?
      min_tv = 860 * 0
    else
      baggage_min_tv = Baggage.last.min_tv
      min_tv = 860 * baggage_min_tv
    end

    if baggage_conpo = Baggage.last.conpo.nil?
      conpo = 3280 * 0
    else
      baggage_conpo = Baggage.last.conpo
      conpo = 3280 * baggage_conpo
    end

    if baggage_pc = Baggage.last.pc.nil?
      pc = 1600 * 0
    else
      baggage_pc = Baggage.last.pc
      pc = 1600 * baggage_pc
    end

    if baggage_syoumei = Baggage.last.syoumei.nil?
      syoumei = 1600 * 0
    else
      baggage_syoumei = Baggage.last.syoumei
      syoumei = 1600 * baggage_syoumei
    end

    if baggage_sutobu = Baggage.last.sutobu.nil?
      sutobu = 1080 * 0
    else
      baggage_sutobu = Baggage.last.sutobu
      sutobu = 1080 * baggage_sutobu
    end

    if baggage_big_reizouko = Baggage.last.big_reizouko.nil?
      big_reizouko = 3280 * 0
    else
      baggage_big_reizouko = Baggage.last.big_reizouko
      big_reizouko = 3280 * baggage_big_reizouko
    end

    if baggage_min_reizouko = Baggage.last.min_reizouko.nil?
      min_reizouko = 1600 * 0
    else
      baggage_min_reizouko = Baggage.last.min_reizouko
      min_reizouko = 1600 * baggage_min_reizouko
    end

    if baggage_renzi = Baggage.last.renzi.nil?
      renzi = 750 * 0
    else
      baggage_renzi = Baggage.last.renzi
      renzi = 750 * baggage_renzi
    end

    if baggage_kansouki = Baggage.last.kansouki.nil?
      kansouki = 3280 * 0
    else
      baggage_kansouki = Baggage.last.kansouki
      kansouki = 3280 * baggage_kansouki
    end

    if baggage_big_sentaku = Baggage.last.big_sentaku.nil?
      big_sentaku = 3280 * 0
    else
      baggage_big_sentaku = Baggage.last.big_sentaku
      big_sentaku = 3280 * baggage_big_sentaku
    end

    if baggage_min_sentaku = Baggage.last.min_sentaku.nil?
      min_sentaku = 2180 * 0
    else
      baggage_min_sentaku = Baggage.last.min_sentaku
      min_sentaku = 2180 * baggage_min_sentaku
    end

    if baggage_eacon = Baggage.last.eacon.nil?
      eacon = 2180 * 0
    else
      baggage_eacon = Baggage.last.eacon
      eacon = 2180 * baggage_eacon
    end

    if baggage_huton = Baggage.last.huton.nil?
      huton = 1080 * 0
    else
      baggage_huton = Baggage.last.huton
      huton = 1080 * baggage_huton
    end

    if baggage_kapetto = Baggage.last.kapetto.nil?
      kapetto = 1080 * 0
    else
      baggage_kapetto = Baggage.last.kapetto
      kapetto = 1080 * baggage_kapetto
    end

    if baggage_tree = Baggage.last.tree.nil?
      tree = 1080 * 0
    else
      baggage_tree = Baggage.last.tree
      tree = 1080 * baggage_tree
    end

    if baggage_tyari = Baggage.last.tyari.nil?
      tyari = 1080 * 0
    else
      baggage_tyari = Baggage.last.tyari
      tyari = 1080 * baggage_tyari
    end

    if baggage_butudan = Baggage.last.butudan.nil?
      butudan = 3280 * 0
    else
      baggage_butudan = Baggage.last.butudan
      butudan = 3280 * baggage_butudan
    end

    if baggage_bike = Baggage.last.bike.nil?
      bike = 3280 * 0
    else
      baggage_bike = Baggage.last.bike
      bike = 3280 * baggage_bike
    end

    if baggage_piano = Baggage.last.piano.nil?
      piano = 4930 * 0
    else
      baggage_piano = Baggage.last.piano
      piano = 4930 * baggage_piano
    end

    if baggage_danboru = Baggage.last.danboru.nil?
      danboru = 10 * 0
    else
      baggage_danboru = Baggage.last.danboru
      danboru = 10 * baggage_danboru
    end
    
    @lowprice_result = d_bed + sd_bed + s_bed + sofa_3 + sofa_2 + sofa_1 + syokkidana + sideboad + big_tansu + min_tansu + isyoucase + hondana + big_table + min_table + kotatu + doresser + big_tv + min_tv + conpo + pc + syoumei + sutobu + big_reizouko + min_reizouko + renzi + kansouki + big_sentaku + min_sentaku + eacon + huton + kapetto + tree + tyari + butudan + bike + piano + danboru
    
  end

  def average_baggage
    total = @overprice_result + @lowprice_result
    result = total / 2
  end

  private
  
    def baggages_valid
      d_bed.presence or sd_bed.presence or s_bed.presence or sofa_3.presence or sofa_2.presence or sofa_1.presence or syokkidana.presence or sideboad.presence or big_tansu.presence or min_tansu.presence or isyoucase.presence or hondana.presence or big_table.presence or min_table.presence or kotatu.presence or doresser.presence or big_tv.presence or min_tv.presence or conpo.presence or pc.presence or syoumei.presence or sutobu.presence or big_reizouko.presence or min_reizouko.presence or renzi.presence or kansouki.presence or big_sentaku.presence or min_sentaku.presence or eacon.presence or huton.presence or kapetto.presence or tree.presence or tyari.presence or butudan.presence or bike.presence or piano.presence
      
    end

end
