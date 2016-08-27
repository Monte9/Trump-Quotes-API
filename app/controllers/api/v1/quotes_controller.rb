class Api::V1::QuotesController < ApplicationController

  def show
    respond_to do |format|
      format.json { render( json: Quote.find(params[:id]) ) }
    end
  end

  def show_all
    respond_to do |format|
      format.json { render( json: Quote.all ) }
    end
  end

  def filter_true
    respond_to do |format|
      format.json { render( json: Quote.where(:is_valid => true) ) }
    end
  end

  def filter_false
    respond_to do |format|
      format.json { render( json: Quote.where(:is_valid => false) ) }
    end
  end
end
