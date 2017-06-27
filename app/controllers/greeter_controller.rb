class GreeterController < ApplicationController
  def hello
    @name = params[:name].upcase
    @params = params
  end

  def generic
    @name = 'Stranger'
  end
end
