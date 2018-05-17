skip_before_action :authenticate_user!, only: [:index]

  before_action :set_biopic, only: [:edit, :show, :update, :destroy]


  def index
    @biopics = Biopic.all
  end

  def new
    @biopic = Biopic.new
  end

  def create
    @biopic = Biopic.new(biopic_params)

    if @biopic.save
    redirect_to biopics_path  else
    render 'biopics/new'
    end

  end

  def edit
  end




  def update
     @biopic.update(biopic_params)
    redirect_to biopics_path
  end

  def destroy
    @biopic.destroy
    redirect_to biopics_path
  end



  private

  def set_event
    @event = Biopic.find(params[:id])
  end


  def event_params
    params.require(:biopic).permit(:category, :name, :date, :localisation, :commentary)
  end

