class ProgramsController < ApplicationController

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    @cards_builder = {}
    params[:program][:cards_builder].reject(&:empty?).each do |day|
      @cards_builder[day.to_sym] = []
    end
    @program.cards_builder = @cards_builder
    @program.user = current_user
    @program.save
    redirect_to edit_program_path(@program)
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    @program.update(program_params)

    @info = params[:program]
    @info.each do |key, value|
      day = key.split('_').first
      @program.cards_builder[day] << {key.split('_').last.to_sym => value}
    end
    @program.cards_builder.each do |key, value|
      @program.cards_builder[key] = @program.cards_builder[key].reduce({}, :merge)
    end
    @program.save
    redirect_to program_cards_path(@program)
  end

  private

  def program_params
    params.require(:program).permit(:swimming_level, cards_builder: {})
  end
end
