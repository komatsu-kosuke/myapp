class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  validates :n_b_floor, presence: true
  validates :n_floor, presence: true
  validates :x_b_floor, presence: true
  validates :x_floor, presence: true
  geocoded_by :address
  after_validation :geocode
  
  def labor_cost_high
    
    if User.last.n_floor == 1
      cost = 9900
    end
    if User.last.n_floor == 2
      cost = 11000
    end
    if User.last.n_floor == 3
      cost = 13200
    end
    if User.last.n_floor == 4
      cost = 15400
    end
    if User.last.n_floor == 5
      cost = 17600
    end
    if User.last.n_floor == 6
      cost = 19800
    end
    if User.last.n_floor == 7
      cost = 22000
    end
    if User.last.n_floor == 8
      cost = 24200
    end
    if User.last.n_floor == 9
      cost = 26400
    end
    if User.last.n_floor == 10
      cost = 28600
    end
    if User.last.n_floor == 11
      cost = 30800
    end

  
    if User.last.n_elevator == "a"
      cost_e = 5500
    end
    if User.last.n_elevator == "b"
      cost_e = 16500
    end

    if User.last.x_elevator == "a"
      cost_x = 5500
    end
    if User.last.x_elevator == "b"
      cost_x = 16500
    end

    unless cost.nil? && cost_e.nil?
      cost + cost_e + cost_x
    end
    
  end

  def labor_cost_low
    
    if User.last.n_floor == 1
      cost = 7900
    end
    if User.last.n_floor == 2
      cost = 9000
    end
    if User.last.n_floor == 3
      cost = 11200
    end
    if User.last.n_floor == 4
      cost = 13400
    end
    if User.last.n_floor == 5
      cost = 15600
    end
    if User.last.n_floor == 6
      cost = 17800
    end
    if User.last.n_floor == 7
      cost = 20000
    end
    if User.last.n_floor == 8
      cost = 22200
    end
    if User.last.n_floor == 9
      cost = 24400
    end
    if User.last.n_floor == 10
      cost = 26600
    end
    if User.last.n_floor == 11
      cost = 28800
    end

    
    if User.last.n_elevator == "a"
      cost_e = 4500
    end
    if User.last.n_elevator == "b"
      cost_e = 15500
    end

    if User.last.x_elevator == "a"
      cost_x = 4500
    end
    if User.last.x_elevator == "b"
      cost_x = 15500
    end

    unless cost.nil? && cost_e.nil?
      cost + cost_e + cost_x
    end
  end


  def distance
    
    n_user = User.last.n_prefecture
    x_user = User.last.x_prefecture
    cost_a = 10000
    cost_b = 18000
    cost_c = 25000
    cost_d = 30000
    cost_e = 35000
    cost_f = 40000
    cost_g = 47000
    cost_h = 54000
    cost_i = 65000
    cost_j = 70000

    if n_user == "1" && x_user == "1"
      cost_p = cost_a
    elsif n_user == "1" && x_user == "2" || x_user == "3" || x_user == "4" || x_user == "5" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "1" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "1" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "1" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "1" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "1" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "1" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "1" && x_user == "47"
      cost_p = cost_j
    end

    if n_user == "2" && x_user == "2"
      cost_p = cost_a
    elsif n_user == "2" && x_user == "1" || x_user == "3" || x_user == "4" || x_user == "5" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "2" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "2" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "2" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "2" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "2" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "2" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "2" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "3" && x_user == "3"
      cost_p = cost_a
    elsif n_user == "3" && x_user == "1" || x_user == "2" || x_user == "4" || x_user == "5" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "3" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "3" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "3" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "3" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "3" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "3" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "3" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "4" && x_user == "4"
      cost_p = cost_a
    elsif n_user == "4" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "5" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "4" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "4" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "4" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "4" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "4" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "4" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "4" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "5" && x_user == "5"
      cost_p = cost_a
    elsif n_user == "5" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "5" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "5" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "5" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "5" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "5" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "5" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "5" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "6" && x_user == "6"
      cost_p = cost_a
    elsif n_user == "6" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "5" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "6" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "6" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "6" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "6" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "6" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "6" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "6" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "7" && x_user == "7"
      cost_p = cost_a
    elsif n_user == "7" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "5" || x_user == "6"
      cost_p = cost_b
    elsif n_user == "7" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_c
    elsif n_user == "7" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "7" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_e
    elsif n_user == "7" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_f
    elsif n_user == "7" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "7" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "7" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "8" && x_user == "8"
      cost_p = cost_a
    elsif n_user == "8" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "8" && x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "8" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_c
    elsif n_user == "8" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "8" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "8" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "8" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "8" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "9" && x_user == "9"
      cost_p = cost_a
    elsif n_user == "9" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "9" && x_user == "8" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "9" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_c
    elsif n_user == "9" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "9" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "9" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "9" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "9" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "10" && x_user == "10"
      cost_p = cost_a
    elsif n_user == "10" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "10" && x_user == "8" || x_user == "9" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "10" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_c
    elsif n_user == "10" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "10" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "10" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "10" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "10" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "11" && x_user == "11"
      cost_p = cost_a
    elsif n_user == "11" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "11" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "11" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_c
    elsif n_user == "11" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "11" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "11" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "11" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "11" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "12" && x_user == "12"
      cost_p = cost_a
    elsif n_user == "12" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_b
    elsif n_user == "12" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11"
      cost_p = cost_b
    elsif n_user == "12" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_c
    elsif n_user == "12" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "12" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "12" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "12" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "12" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "13" && x_user == "13"
      cost_p = cost_a
    elsif n_user == "13" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "13" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "13" && x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "13" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "13" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "13" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "13" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "13" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "14" && x_user == "14"
      cost_p = cost_a
    elsif n_user == "14" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "14" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "14" && x_user == "13" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "14" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "14" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "14" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "14" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "14" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "15" && x_user == "15"
      cost_p = cost_a
    elsif n_user == "15" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "15" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "15" && x_user == "13" || x_user == "14" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "15" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "15" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "15" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "15" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "15" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "16" && x_user == "16"
      cost_p = cost_a
    elsif n_user == "16" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "16" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "16" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "16" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "16" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "16" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "16" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "16" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "17" && x_user == "17"
      cost_p = cost_a
    elsif n_user == "17" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "17" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "17" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "17" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "17" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "17" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "17" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "17" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "18" && x_user == "18"
      cost_p = cost_a
    elsif n_user == "18" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "18" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "18" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "19" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "18" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "18" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "18" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "18" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "18" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "19" && x_user == "19"
      cost_p = cost_a
    elsif n_user == "19" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "19" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "19" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "20"
      cost_p = cost_b
    elsif n_user == "19" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_d
    elsif n_user == "19" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "19" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "19" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "19" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "20" && x_user == "20"
      cost_p = cost_a
    elsif n_user == "20" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_f
    elsif n_user == "20" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_b
    elsif n_user == "20" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19"
      cost_p = cost_b
    elsif n_user == "20" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_c
    elsif n_user == "20" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "20" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_f
    elsif n_user == "20" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "20" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "21" && x_user == "21"
      cost_p = cost_a
    elsif n_user == "21" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "21" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "21" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "21" && x_user == "22" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_b
    elsif n_user == "21" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "21" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "21" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "21" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "22" && x_user == "22"
      cost_p = cost_a
    elsif n_user == "22" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "22" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "22" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "22" && x_user == "21" || x_user == "23" || x_user == "24" || x_user == "25"
      cost_p = cost_b
    elsif n_user == "22" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "22" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "22" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "22" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "23" && x_user == "23"
      cost_p = cost_a
    elsif n_user == "23" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "23" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "23" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "23" && x_user == "21" || x_user == "22" || x_user == "24" || x_user == "25"
      cost_p = cost_b
    elsif n_user == "23" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "23" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "23" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "23" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "24" && x_user == "24"
      cost_p = cost_a
    elsif n_user == "24" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "24" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "24" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "24" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "25"
      cost_p = cost_b
    elsif n_user == "24" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "24" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "24" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "24" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "25" && x_user == "25"
      cost_p = cost_a
    elsif n_user == "25" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "25" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "25" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "25" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "25" && x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "25" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "25" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "25" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "26" && x_user == "26"
      cost_p = cost_a
    elsif n_user == "26" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "26" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "26" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "26" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "26" && x_user == "25" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "26" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "26" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "26" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "27" && x_user == "27"
      cost_p = cost_a
    elsif n_user == "27" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "27" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "27" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "27" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "27" && x_user == "25" || x_user == "26" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "27" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "27" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "27" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "28" && x_user == "28"
      cost_p = cost_a
    elsif n_user == "28" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "28" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "28" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "28" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "28" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "29" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "28" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "28" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "28" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "29" && x_user == "29"
      cost_p = cost_a
    elsif n_user == "29" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "29" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "29" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "29" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "29" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "30"
      cost_p = cost_b
    elsif n_user == "29" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "29" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "29" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "30" && x_user == "30"
      cost_p = cost_a
    elsif n_user == "30" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "30" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_e
    elsif n_user == "30" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_d
    elsif n_user == "30" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_b
    elsif n_user == "30" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29"
      cost_p = cost_b
    elsif n_user == "30" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "30" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_h
    elsif n_user == "30" && x_user == "47"
      cost_p = cost_i
    end

    if n_user == "31" && x_user == "31"
      cost_p = cost_a
    elsif n_user == "31" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "31" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "31" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "31" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "31" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "31" && x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "31" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "31" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "32" && x_user == "32"
      cost_p = cost_a
    elsif n_user == "32" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "32" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "32" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "32" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "32" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "32" && x_user == "31" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "32" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "32" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "33" && x_user == "33"
      cost_p = cost_a
    elsif n_user == "33" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "33" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "33" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "33" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "33" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "33" && x_user == "31" || x_user == "32" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "33" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "33" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "34" && x_user == "34"
      cost_p = cost_a
    elsif n_user == "34" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "34" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "34" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "34" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "34" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "34" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "34" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "34" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "35" && x_user == "35"
      cost_p = cost_a
    elsif n_user == "35" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "35" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "35" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "35" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "35" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "35" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "35" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "35" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "36" && x_user == "36"
      cost_p = cost_a
    elsif n_user == "36" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "36" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "36" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "36" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "36" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "36" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "36" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "36" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "37" && x_user == "37"
      cost_p = cost_a
    elsif n_user == "37" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "37" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "37" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "37" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "37" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "37" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "37" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "37" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "38" && x_user == "38"
      cost_p = cost_a
    elsif n_user == "38" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "38" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "38" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "38" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "38" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "38" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "38" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "38" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "39" && x_user == "39"
      cost_p = cost_a
    elsif n_user == "39" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_h
    elsif n_user == "39" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_f
    elsif n_user == "39" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_e
    elsif n_user == "39" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_d
    elsif n_user == "39" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_c
    elsif n_user == "39" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38"
      cost_p = cost_d
    elsif n_user == "39" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_d
    elsif n_user == "39" && x_user == "47"
      cost_p = cost_h
    end

    if n_user == "40" && x_user == "40"
      cost_p = cost_a
    elsif n_user == "40" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "40" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "40" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "40" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "40" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "40" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "40" && x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "40" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "41" && x_user == "41"
      cost_p = cost_a
    elsif n_user == "41" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "41" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "41" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "41" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "41" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "41" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "41" && x_user == "40" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "41" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "42" && x_user == "42"
      cost_p = cost_a
    elsif n_user == "42" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "42" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "42" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "42" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "42" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "42" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "42" && x_user == "40" || x_user == "41" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "42" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "43" && x_user == "43"
      cost_p = cost_a
    elsif n_user == "43" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "43" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "43" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "43" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "43" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "43" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "43" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "43" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "44" && x_user == "44"
      cost_p = cost_a
    elsif n_user == "44" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "44" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "44" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "44" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "44" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "44" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "44" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "45" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "44" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "45" && x_user == "45"
      cost_p = cost_a
    elsif n_user == "45" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "45" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "45" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "45" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "45" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "45" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "45" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "46"
      cost_p = cost_b
    elsif n_user == "45" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "46" && x_user == "46"
      cost_p = cost_a
    elsif n_user == "46" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_i
    elsif n_user == "46" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_h
    elsif n_user == "46" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_g
    elsif n_user == "46" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_f
    elsif n_user == "46" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_e
    elsif n_user == "46" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_d
    elsif n_user == "46" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45"
      cost_p = cost_b
    elsif n_user == "46" && x_user == "47"
      cost_p = cost_g
    end

    if n_user == "47" && x_user == "47"
      cost_p = cost_a
    elsif n_user == "47" && x_user == "1" || x_user == "2" || x_user == "3" || x_user == "4" || x_user == "6" || x_user == "7"
      cost_p = cost_j
    elsif n_user == "47" && x_user == "8" || x_user == "9" || x_user == "10" || x_user == "11" || x_user == "12"
      cost_p = cost_i
    elsif n_user == "47" && x_user == "13" || x_user == "14" || x_user == "15" || x_user == "16" || x_user == "17" || x_user == "18" || x_user == "19" || x_user == "20"
      cost_p = cost_h
    elsif n_user == "47" && x_user == "21" || x_user == "22" || x_user == "23" || x_user == "24"
      cost_p = cost_g
    elsif n_user == "47" && x_user == "25" || x_user == "26" || x_user == "27" || x_user == "28" || x_user == "29" || x_user == "30"
      cost_p = cost_g
    elsif n_user == "47" && x_user == "31" || x_user == "32" || x_user == "33" || x_user == "34" || x_user == "35" || x_user == "36" || x_user == "37" || x_user == "38" || x_user == "39"
      cost_p = cost_g
    elsif n_user == "47" && x_user == "40" || x_user == "41" || x_user == "42" || x_user == "43" || x_user == "44" || x_user == "45" || x_user == "46"
      cost_p = cost_f
    end

    postage = cost_p

  end


  def average_user
    unless labor_cost_high.nil? && labor_cost_low.nil?
      floor = labor_cost_high + labor_cost_low
      average_cost = floor / 2
    end
  end


end
