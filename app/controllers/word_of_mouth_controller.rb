class WordOfMouthController < ApplicationController

  def index
    random = Comment.all
    
    @random = random.order("RAND()").limit(10)
  end
  
end
