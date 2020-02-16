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
    session["user_data"] = {user: @user.attributes}
    @baggage = Baggage.new
    
  end

  def create
    @day = Day.new(session["day_data"]["day"])
    @user = User.new(session["user_data"]["user"])
    @baggage = Baggage.new(baggage_params)
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
    @time = Timer.find_by(id: @day.time)
    @n_building = Building.find_by(id: @user.n_building)
    @x_building = Building.find_by(id: @user.x_building)
    @n_elevator = Elevator.find_by(id: @user.n_elevator)
    @x_elevator = Elevator.find_by(id: @user.x_elevator)
    @n_roadwidth = Roadwidth.find_by(id: @user.n_roadwidth)
    @x_roadwidth = Roadwidth.find_by(id: @user.x_roadwidth)
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