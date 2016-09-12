class PlayerInLeaguesController < ApplicationController
  before_action :set_player_in_league, only: [:show, :edit, :update, :destroy]

  # GET /player_in_leagues
  # GET /player_in_leagues.json
  def index
    @player_in_leagues = PlayerInLeague.all
  end

  # GET /player_in_leagues/1
  # GET /player_in_leagues/1.json
  def show
  end

  # GET /player_in_leagues/new
  def new
    @player_in_league = PlayerInLeague.new
  end

  # GET /player_in_leagues/1/edit
  def edit
  end

  # POST /player_in_leagues
  # POST /player_in_leagues.json
  def create
    @player_in_league = PlayerInLeague.new(player_in_league_params)

    respond_to do |format|
      if @player_in_league.save
        format.html { redirect_to @player_in_league, notice: 'Player in league was successfully created.' }
        format.json { render :show, status: :created, location: @player_in_league }
      else
        format.html { render :new }
        format.json { render json: @player_in_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_in_leagues/1
  # PATCH/PUT /player_in_leagues/1.json
  def update
    respond_to do |format|
      if @player_in_league.update(player_in_league_params)
        format.html { redirect_to @player_in_league, notice: 'Player in league was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_in_league }
      else
        format.html { render :edit }
        format.json { render json: @player_in_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_in_leagues/1
  # DELETE /player_in_leagues/1.json
  def destroy
    @player_in_league.destroy
    respond_to do |format|
      format.html { redirect_to player_in_leagues_url, notice: 'Player in league was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_in_league
      @player_in_league = PlayerInLeague.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_in_league_params
      params.require(:player_in_league).permit(:player_id, :league_id)
    end
end
