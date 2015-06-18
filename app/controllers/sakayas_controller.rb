class SakayasController < ApplicationController

	def index
		@sakayas = Sakaya.page(params[:page]).per(5)

	end

	def new

		
	end

	def show
		
	end

	def creat
		
	end
	def edit
		
	end

	def update
		
	end

	def destory
		
	end



end
