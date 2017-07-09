class StocksController < ApplicationController
  def index
     @stocks = Stock.all
     render 'index.html.erb'
    end
  def new
     render 'new.html.erb'
    end
  def create
     stock = Stock.new(name: params[:name], price: params[:price])
     stock.save
     render 'create.html.erb'
    end
  def show
     @stock = Stock.find_by(id: params[:id])
     render 'show.html.erb'
    end
  def edit
      @stock = Stock.find_by(id: params[:id])
     render 'edit.html.erb'
    end
  def update
    @stock = Stock.find_by(id: params[:id])
    @stock.name = params[:name]
    @stock.price = params[:price]
    @stock.save
    render 'update.html.erb'
    end
  def destroy
    @stock = Stock.find_by(id: params[:id])
    @stock.destroy 
     render 'destroy.html.erb'
    end


end
