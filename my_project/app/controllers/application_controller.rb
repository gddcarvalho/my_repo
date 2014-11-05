class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render text: "Hello MODAFOKASSSS!!!!"
  end

#Argumentos splat são argumentos precedidos por *, que sinaliza: "Ei Ruby, Eu não sei quantos argumentos serão passados, mas pode ser mais de um."
  def what_up(greeting, *bros)
    bros.each { |bro| puts "#{greeting}, #{bro}!" }
  end

#This method organizes in reverse mode, sort!
  def alphabetize (arr, rev=false)
    if rev==true
      arr.reverse!
#{|firstItem, secondItem| secondItem <=> firstItem}
    else
      rev==false
      arr.sort!
    end
  end

#This method returns each value of an array * its own value
  def multiply_element(array)
    array.each do |x|
      x=x*x
    end
  end
end