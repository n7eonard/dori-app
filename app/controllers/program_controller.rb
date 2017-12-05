class ProgramController < ApplicationController

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    @program.save
  end

  def edit
    @program = Program.find(params[:id])
    @program.update(program_params)
  end

  private

  def program_params
    params.require(:program).permit(:swimming_level , :user_id, :cards_builder)
  end
end
