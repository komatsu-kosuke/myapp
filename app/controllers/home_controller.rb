class HomeController < ApplicationController

  def index
  end

  def simulator2
    @day = Day.new
  end

  def simulator3
    @day = Day.new(day_params)
    session["day_data"] = {day: @day.attributes}
    @user = User.new
  end

  def simulator4
    @user = User.new(user_params)
    unless @user.valid?
      n_b_floor = @user.errors.full_messages_for(:n_b_floor)
      x_b_floor = @user.errors.full_messages_for(:x_b_floor)
      n_floor = @user.errors.full_messages_for(:n_floor)
      x_floor = @user.errors.full_messages_for(:x_floor)
      if n_b_floor == ["何階建てかを入力してください"]
        @n_b_floor = "何階建てかを入力してください"
      end
      if n_floor == ["何階からお引越しかを入力してください"]
        @n_floor = "何階からお引越しかを入力してください"
      end
      if x_b_floor == ["何階建てかを入力してください"]
        @x_b_floor = "何階建てかを入力してください"
      end
      if x_floor == ["何階へお引越しかを入力してください"]
        @x_floor = "何階へお引越しかを入力してください"
      end
      render :simulator3 and return
    end
    session["user_data"] = {user: @user.attributes}
    @baggage = Baggage.new
  end

  def create
    @day = Day.new(session["day_data"]["day"])
    @user = User.new(session["user_data"]["user"])
    @baggage = Baggage.new(baggage_params)
    unless @baggage.valid?
      baggage_valid = @baggage.errors.full_messages_for(:baggages_valid)
      if baggage_valid == ["Baggages validを入力してください"]
        @baggage_valid = "荷物を最低一つ選択してください"
      end
      render :simulator4 and return
    end
    @day.save
    @user.save
    @baggage.save
    redirect_to("/home/simulator5")
  end

  def simulator5
    @day = Day.last
    @user = User.last
    @baggage = Baggage.last
    @display = @baggage.attributes.compact
    @n_prefecture = Prefecture.find_by(id: @user.n_prefecture)
    @x_prefecture = Prefecture.find_by(id: @user.x_prefecture)
    @overprice = @baggage.overprice
    @lowprice = @baggage.lowprice
    @labor_cost_high = @user.labor_cost_high
    @labor_cost_low = @user.labor_cost_low
    @day_cost_high = @day.day_cost_high
    @day_cost_low = @day.day_cost_low
    if @user.average_user.nil?
      @average = @baggage.average_baggage + @day.average_day
    else
      @average = @baggage.average_baggage + @user.average_user + @day.average_day
    end
  end

  # helper_method :average


  private

  def day_params
    params.require(:day).permit(
      :year,
      :day,
      :time,
      :n_people
    )
  end

  def user_params
    params.require(:user).permit(
      :n_zipcode,
      :n_prefecture,
      :n_building,
      :n_b_floor,
      :n_floor,
      :n_elevator,
      :n_roadwidth,
      :x_zipcode,
      :x_prefecture,
      :x_building,
      :x_b_floor,
      :x_floor,
      :x_elevator,
      :x_roadwidth
    )
  end

  def baggage_params
    params.require(:baggage).permit(
      :d_bed,
      :sd_bed,
      :s_bed,
      :sofa_3,
      :sofa_2,
      :sofa_1,
      :syokkidana,
      :sideboad,
      :big_tansu,
      :min_tansu,
      :isyoucase,
      :hondana,
      :big_table,
      :min_table,
      :kotatu,
      :doresser,
      :big_tv,
      :min_tv,
      :conpo,
      :pc,
      :syoumei,
      :sutobu,
      :big_reizouko,
      :min_reizouko,
      :renzi,
      :kansouki,
      :big_sentaku,
      :min_sentaku,
      :eacon,
      :huton,
      :kapetto,
      :tree,
      :tyari,
      :butudan,
      :bike,
      :piano,
      :danboru
    )
  end
end