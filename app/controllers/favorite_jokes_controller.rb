class FavoriteJokesController < ApplicationController
  before_action :authenticate_user!

  # GET /favorite_jokes or /favorite_jokes.json
  def index
    @favorite_jokes = current_user.favorite_jokes.all.order(id: :desc)
  end

  # GET /favorite_jokes/new
  def new
    caller = CallNorris.new
    @joke = caller.get_joke
    @favorite_joke = FavoriteJoke.new
  end

  # POST /favorite_jokes or /favorite_jokes.json
  def create
    @favorite_joke = FavoriteJoke.new(favorite_joke_params)

    respond_to do |format|
      if @favorite_joke.save
        format.html { redirect_to favorite_jokes_url, notice: "Joke was succesfully saved" }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to new_user_session_path
      end
    end

    # Only allow a list of trusted parameters through.
    def favorite_joke_params
      params.require(:favorite_joke).permit(:value, :icon_url, :joke_id, :url, :user_id)
    end
end
