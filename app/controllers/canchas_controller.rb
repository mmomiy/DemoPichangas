class CanchasController < ApplicationController
    # GET /canchas/1
    def show
	    @cancha = Cancha.find(params[:id])

	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @cancha }
	    end
    end
end
