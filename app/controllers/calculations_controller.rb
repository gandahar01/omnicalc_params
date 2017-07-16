class CalculationsController < ApplicationController
  #! START QUARE
  def flex_square
    @user_number = params["a_number"].to_i
    @squared_number = @user_number**2
    render("calculations/flexible_square_template.html.erb")
  end

  def process_square
    @user_number = params["the_user_number"].to_f
    @squared_number = @user_number**2
    render("calculations/square_results_template.html.erb")
  end
  
  def square_form
   render("calculations/square_form_template.html.erb")
  end
  #! END SQUARE

#! START SQUARE_ROOT
  def flex_square_root
    @user_number = params["a_number"].to_f
    @squareroot_number = @user_number**(0.5)
    render("calculations/flexible_square_root_template.html.erb")
  end
  
  def process_square_root
    @user_number = params["the_user_number"].to_f
    @squareroot_number = @user_number**(0.5)
    render("calculations/square_root_results_template.html.erb")
  end  
  
  def square_root_form
   render("calculations/square_root_form_template.html.erb")
  end
#! END SQUARE_ROOT

#! START PAYMENT
 def flex_payment
    @apr = params["basis_points"].to_f
    @years = params["number_of_years"].to_i
    @principal = params["present_value"].to_f
    @apr2 = (@apr / 100)
    @rate = (@apr/120000)
    @term = (@years*12)
    @n = (@rate*@principal)
    @d = 1 - ((1 + @rate)**-@term)
    @monthly_payment =(@n/@d).round(2)
    render("calculations/flexible_payment_template.html.erb")
 end
 
  def process_payment
    @apr = params["apr_number"].to_f
    @years = params["years_number"].to_i
    @principal = params["principal_number"].to_f
    @apr2 = (@apr / 100)
    @rate = (@apr/1200)
    @term = (@years*12)
    @n = (@rate*@principal)
    @d = 1 - ((1 + @rate)**-@term)
    @monthly_payment =(@n/@d).round(2)
    render("calculations/payment_results_template.html.erb")
  end  
  
  def payment_form
   render("calculations/payment_form_template.html.erb")
  end 
  #! END PAYMENT
 
  #! START Random
  def flex_min_max_random
    @min_num = params["min"].to_i
    @max_num = params["max"].to_i
    @random_num = rand(@min_num..@max_num)
    render("calculations/flexible_minmax_template.html.erb")
  end
  
  def process_random
    @min_num = params["user_min"].to_f
    @max_num = params["user_max"].to_f
    @random_num = rand(@min_num..@max_num)
    render("calculations/random_results_template.html.erb")
  end  
  
  def random_form
   render("calculations/random_form_template.html.erb")
  end


end