class CalcController < ApplicationController
  def square_new
    render({:template => "calc_templates/square_new"}) 
  end

  def square_results
    @the_num = params.fetch("user_number").to_f
    @result = @the_num ** 2
    render({:template => "calc_templates/square_results"})
  end
end
