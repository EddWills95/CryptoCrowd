class MainController < ApplicationController
  def index
    @propositions = Proposition.all.limit(10)
  end
end
