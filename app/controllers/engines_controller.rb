class EnginesController < ApplicationController
  def index
    @engines = Engine.find(:all)
    
    respond_to do |format|
      format.html {}
      format.json {}
      format.js   {}
    end
  end
  
  def new
    @engine = Engine.new
  end
  
  def create
  end
end
