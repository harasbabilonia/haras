class AnimaisController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animais
  # GET /animais.json
  def index
    @animais = Animal.all
  end

  # GET /animais/1
  # GET /animais/1.json
  def show
  end

  # GET /animais/new
  def new
    @animal = Animal.new
  end

  # GET /animais/1/edit
  def edit
  end

  # POST /animais
  # POST /animais.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animais/1
  # PATCH/PUT /animais/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animais/1
  # DELETE /animais/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animais_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:nome, :sexo, :pelagem, :data_nascimento)
    end
end
