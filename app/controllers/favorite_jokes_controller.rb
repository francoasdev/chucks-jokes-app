class FavoriteJokesController < ApplicationController
  before_action :set_favorite_joke, only: %i[ show edit update destroy ]

  # GET /favorite_jokes or /favorite_jokes.json
  def index
    @favorite_jokes = FavoriteJoke.all
  end

  # GET /favorite_jokes/1 or /favorite_jokes/1.json
  def show
  end

  # GET /favorite_jokes/new
  def new
    @favorite_joke = FavoriteJoke.new
  end

  # GET /favorite_jokes/1/edit
  def edit
  end

  # POST /favorite_jokes or /favorite_jokes.json
  def create
    @favorite_joke = FavoriteJoke.new(favorite_joke_params)

    respond_to do |format|
      if @favorite_joke.save
        format.html { redirect_to favorite_joke_url(@favorite_joke), notice: "Favorite joke was successfully created." }
        format.json { render :show, status: :created, location: @favorite_joke }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_jokes/1 or /favorite_jokes/1.json
  def update
    respond_to do |format|
      if @favorite_joke.update(favorite_joke_params)
        format.html { redirect_to favorite_joke_url(@favorite_joke), notice: "Favorite joke was successfully updated." }
        format.json { render :show, status: :ok, location: @favorite_joke }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favorite_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_jokes/1 or /favorite_jokes/1.json
  def destroy
    @favorite_joke.destroy

    respond_to do |format|
      format.html { redirect_to favorite_jokes_url, notice: "Favorite joke was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_joke
      @favorite_joke = FavoriteJoke.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_joke_params
      params.require(:favorite_joke).permit(:value, :icon_url, :joke_id, :url)
    end
end