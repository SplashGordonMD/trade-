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
     redirect_to "/stocks/#{stock.id}"
    end
  def show
     stock_id = params[:id]
     @stock = Stock.find_by(id: stock_id)
     render 'show.html.erb'
    end
  def edit
     stock_id = params[:id]
     @stock = Stock.find_by(id: stock_id)
     render 'edit.html.erb'
    end
  def update
    stock_id = params[:id]
    stock = Stock.find_by(id: stock_id)
    stock.name = params[:name]
    stock.price = params[:price]
    stock.save
    flash[:success] = "Stock successfully updated"
    redirect_to "/stocks/#{stock.id}"
    end
  def destroy
    stock_id = params[:id]
    stock = Stock.find_by(id: stock_id)
    stock.destroy 
    redirect_to "/stocks"
    end


end
