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


  def payment_new
    render({:template => "calc_templates/payment_new"})
  end

  def payment_results
    
    @the_apr = params.fetch("user_apr").to_f / 100 / 12
      @show_the_apr = @the_apr.to_fs(:percentage, {:precision => 4})

    @the_num_yrs = params.fetch("user_num_yrs").to_i
      @the_num_mos = @the_num_yrs * 12

    @principle = params.fetch("user_pri").to_f
      @show_principle = @principle.to_fs(:currency)

    @n = @the_num_yrs/12

    @numerator = @the_apr * @principle
    @denominator = 1 - (1 + @the_apr) ** (-@the_num_mos)

    @monthly_payment = @numerator/@denominator
      @formatted_monthly_payment = @monthly_payment.to_fs(:currency)
    
    render({:template => "calc_templates/payment_results"})
  
  end


  def random_new
    render({:template => "calc_templates/random_new"})
  end

  def random_results
    @the_min_num = params.fetch("user_min").to_f
    @the_max_num = params.fetch("user_max").to_f
    @random_result = rand(@the_min_num..@the_max_num)
    render({:template => "calc_templates/random_results"})
  end

end
