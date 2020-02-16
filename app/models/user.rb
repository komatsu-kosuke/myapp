class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :building
  belongs_to_active_hash :elevator
  belongs_to_active_hash :roadwidth

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

  
    if User.last.n_elevator == "1"
      cost_e = 5500
    end
    if User.last.n_elevator == "2"
      cost_e = 16500
    end

    unless cost.nil? && cost_e.nil?
      cost + cost_e
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

    
    if User.last.n_elevator == "1"
      cost_e = 4500
    end
    if User.last.n_elevator == "2"
      cost_e = 15500
    end

    unless cost.nil? && cost_e.nil?
      cost + cost_e
    end
  end


  def average_user
    unless labor_cost_high.nil? && labor_cost_low.nil?
      floor = labor_cost_high + labor_cost_low
      average_cost = floor / 2
    end
  end


end
