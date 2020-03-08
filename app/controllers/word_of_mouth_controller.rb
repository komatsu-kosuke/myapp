class WordOfMouthController < ApplicationController

  def index
    random = Random.new
    @random = random.rand(1..3)
  end
  
end
