class Day < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :timer

  def day_cost_high
    if Day.last.year == "2020年 3月"
      cost_yh = 22000
    end
    if Day.last.year == "2020年 4月"
      cost_yh = 22000
    end
    if Day.last.year == "2020年 5月"
      cost_yh = 11000
    end
    if Day.last.year == "2020年 6月"
      cost_yh = 11000
    end
    if Day.last.year == "2020年 7月"
      cost_yh = 11000
    end
    if Day.last.year == "2020年 8月"
      cost_yh = 11000
    end
    day_yh = cost_yh
    
  end

  def day_cost_low
    if Day.last.year == "2020年 3月"
      cost_yl = 21000
    end
    if Day.last.year == "2020年 4月"
      cost_yl = 21000
    end
    if Day.last.year == "2020年 5月"
      cost_yl = 10000
    end
    if Day.last.year == "2020年 6月"
      cost_yl = 10000
    end
    if Day.last.year == "2020年 7月"
      cost_yl = 10000
    end
    if Day.last.year == "2020年 8月"
      cost_yl = 10000
    end
    day_yl = cost_yl
    
  end

  def average_day
    date = day_cost_high + day_cost_low
    average_day = date / 2
  end

    
end
