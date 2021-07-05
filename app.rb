require_relative "config/environment"

class App < Sinatra::Base

  # This is a sample static route.
  get "/goodbye" do
    "Goodbye World!"
  end

  # This is a sample dynamic route.

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:num1/:num2" do
    @number_1 = params[:num1].to_i
    @number_2 = params[:num2].to_i
    "#{@number_1 * @number_2}"
  end
end

# Code your final two routes here:
