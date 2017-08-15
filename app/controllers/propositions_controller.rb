class PropositionsController < ApplicationController
  def new
    @proposition = Proposition.new
  end

  def create
    @proposition = Proposition.new(params)
    if @proposition.save 
      redirect '/'
    else
      # N.B. come back to change this
      puts "something bad"  
    end  
  end
end
