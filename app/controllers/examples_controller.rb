class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @definition = params[:defin]
    @example = Example.new
  end

  def create
      @example = Example.new(example_params)

      respond_to do |format|
        if @example.save
          format.html { redirect_to @example, notice: 'Example was successfully created.' }
          format.json { render :show, status: :created, location: @example }
        else
          format.html { render :new }
          format.json { render json: @example.errors, status: :unprocessable_entity }
        end
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example
      @example = Example.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_params
      params.require(:example).permit(:example, :definition_id)
    end
end
