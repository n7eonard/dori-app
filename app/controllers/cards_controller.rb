class CardsController < ApplicationController

  def index
    @cards = Card.all
    @program = Program.find(params["program_id"])
  end
end
