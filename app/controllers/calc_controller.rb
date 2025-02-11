class CalcController < ApplicationController
  def square_new
    render({:template => "calc_templates/square_new"}) 
  end
end
