require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    result = ""
    @number.times do
      result += "#{@phrase}\n"
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      result = @number1 + @number2
    elsif @operation == "subtract"
      result = @number2 - @number1
    elsif @operation == "divide"
      result = @number1 / @number2
    elsif @operation == "multiply"
      result = @number1 * @number2
    else
      result "Unable to perform/unknown math sign"
    end
    "#{result}"

  end
end
