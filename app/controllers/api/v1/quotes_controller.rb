class Api::V1::QuotesController < ApplicationController

  # def show
  #   respond_to do |format|
  #     response = { :status => 200, :content => Quote.find(params[:id]) }
  #     format.json { render( json: response ) }
  #   end
  # end

  def show_all
    respond_to do |format|
      response = { :status => 200, :content => Quote.all }
      format.json { render( json: response ) }
    end
  end

  def filter_true
    respond_to do |format|
      response = { :status => 200, :content => Quote.where(:is_valid => true) }
      format.json { render( json: response ) }
    end
  end

  def filter_false
    respond_to do |format|
      response = { :status => 200, :content => Quote.where(:is_valid => false) }
      format.json { render( json: response ) }
    end
  end

  def catch_all
    respond_to do |format|
      response = { :status => 400, :content => "Bad Request" }
      format.json { render( json: response ) }
    end
  end
end
