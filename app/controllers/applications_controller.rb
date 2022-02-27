class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
    # render json: @application.to_json
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      # render json: @application.to_json
      redirect_to @application
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def application_params
      params.require(:application).permit(:name, :owner, :techno)
    end
end
