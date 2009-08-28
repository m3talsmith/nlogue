class Admins::EnginesController < AdminsController
  def index
    @engines = Engine.find(:all)
    
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  
  def new
    @engine = Engine.new
    
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  
  def create
    engine = Engine.create!(params[:engine])
    respond_to do |format|
      format.html do
        if engine
          flash[:notice] = "Your engine has been installed"
          redirect_to admins_engines_path
        else
          flash[:error] = "We were unable to install the engine"
          redirect_to new_admins_engine_path
        end
      end
      
      format.json {}
    end
  end
end
