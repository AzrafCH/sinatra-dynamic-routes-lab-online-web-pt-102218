require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse = params[:name].to_s.reverse!
      "#{@reverse}"
  end

  get '/square/:number' do
    n = params[:number].to_i
    "#{n*n}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    arr = []
    @number.times do |words|
      arr << @phrase
    end
    arr.join(" ")
  end

  get 'say/:word1/:word2/:word3/:word4/:word5'do
  #  one = params[:word1].to_s  doesnt work
  #  two = params[:word1].to_s
  #  three = params[:word1].to_s
  #  four = params[:word1].to_s
  #  five = params[:word1].to_s
  #  "#{one two three four five}."

  #  @one = params[:word1].to_s
  #  @two = params[:word1].to_s
  #  @three = params[:word1].to_s doesnt work
  #  @four = params[:word1].to_s
  #  @five = params[:word1].to_s
  #  "#{@one} #{@two} #{@three} #{@four} #{@five}."

  # "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}." doesnt work kms

    @word1 = params[:word].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s 
    @word5 = params[:word5].to_s 
    "#{@word} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  if params[:operation].to_s.downcase == 'add'
    @math = @number1 + @number2
  elsif params[:operation].to_s.downcase == 'subtract'
    @math = @number1 - @number2
  elsif params[:operation].to_s.downcase == 'multiply'
    @math = @number1 * @number2
  else
    @math = @number1 / @number2
  end
  "#{@math}"
  end
end
