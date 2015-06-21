class SakayasController < ApplicationController

before_action :set_sakaya, :only => [ :show, :edit, :update, :destroy]

  def index
    @sakayas = Sakaya.page(params[:page]).per(5)

  end

  def new
    @sakaya = Sakaya.new
  end

  def show
    @sakaya = Sakaya.find(params[:id])
    @page_title = @sakaya.title
  end

  def create
    @sakaya = Sakaya.new(sakaya_params)
    if @sakaya.save
      flash[:notice] = "sake was successfully created1"
      redirect_to sakayas_url
  else
      render :action => :new
  end
  end

  def edit
  end

  def update
    if @sakaya.update(sakaya_params)
      redirect_to sakayas_url
  else
    render :action => :edit
  end
  end

  def destroy
    @sakaya.destroy
    redirect_to :action => :index
  end
  end

  private

  def sakaya_params
    params.require(:sakaya).permit(:title, :date, :price, :description, :stock)
  end

  def set_sakaya
    @sakaya = Sakaya.find(params[:id])
  end
