class MagazinesController < ApplicationController
  # before action: set_magazine, only: [:show, :update, :edit, :destroy]
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  end

  def new
    @magazine = Magazine.new
    render partial: 'form'
  end

  def edit 
    render partial: 'form'
  end

  def create
    @magazine = Magazine.new(magazine_params)

    if @magazine.save
      redirect_to magazines_path
    else
      render :new
    end
  end

  def update
    if @magazine.update(magazine_params)
      redirect_to @magazine
    else
      render :edit
    end 
  end 

  def destroy
    @magazine.destroy
    redirect_to magazine_path 
  end 

  private 

    def set_magazine
      @magazine = Magazine.find(params[:id])
    end

    def magazine_params
      params.require(:magazine).permit(:list_name)
    end 

  
end
