class CalcController < ApplicationController
  def square_new
    render({:template => "calc_templates/square_new"}) 
  end

  def square_results
    @the_num = params.fetch("user_number").to_f
    @result = @the_num ** 2
    render({:template => "calc_templates/square_results"})
  end


  def square_root_new
    render({:template => "calc_templates/square_root_new"})
  end

  def square_root_results
    @the_num = params.fetch("user_number").to_f
    @result = @the_num ** 0.5
    render({:template => "calc_templates/square_root_results"})
  end


  def payment
    render({:template => "calc_templates/payment"})
  
  end


end
