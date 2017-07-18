class GreeterController < ApplicationController
  def hello
    name = params[:name].upcase
    @user = UserVisit.find_by(name: name)
    if @user.present?
      @user.visit_count +=1
      @user.save
    else
      @user = UserVisit.create(name: @name, visit_count: 1)
    end
  end

  def index
    @top_users = UserVisit.order('visit_count desc')
      .limit(10)
  end
end
