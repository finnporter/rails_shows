class ShowsController < ApplicationController
  
  def show_params
    params.require(:show).permit( [ :title, :series, :description, :image, :programmeID ] )    
  end

  def index
    shows = Show.all
    render :json => shows
  end

  def create
    show = Show.create( show_params )
    render :json => show
  end

  def destroy
      show = Show.find( params[:id] )

      if show.destroy!
        render :json => {status: :sucess}
      else
        render :json => {status: :delete_failed}
      end
    end

end