class SakayasController < ApplicationController

before_action :set_event, :only => [ :show, :edit, :update, :destroy]	

	def index
		@sakayas = Sakaya.page(params[:page]).per(5)

	end

	def new
		@sakaya = Sakaya.new
	end

	def show
		@sakaya = Sakaya.find(params[:id])
	end

	def creat
		@sakaya = Sakaya.new(sakaya_params)
  	if @sakaya.save
  			flash[:notice] = "sakaya was successfully created1"
    		redirect_to sakaya_url 
  	else
    		render :action => :new	
	  end
	end
	
	def edit	
	end

	def update	
		if @sakaya.update(sakaya_params)
	    redirect_to events_url 
	  else
	    render :action => :edit
	  end
	end


	def destory
		 @sakaya.destroy
  		redirect_to :action => :index
	end
end
private

	def event_params
  		params.require(:sakaya).permit(:title, :description)	
	end

	def set_event
  		@sakaya = Sakaya.find(params[:id])
	end
