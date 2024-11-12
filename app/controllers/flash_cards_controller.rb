class FlashCardsController < ApplicationController
  def index
    @flash_cards = FlashCard.all
    @flash_card = FlashCard.new
  end

  def create
    @flash_card = FlashCard.new(flash_card_params)
    if @flash_card.save
      redirect_to root_path, notice: 'Card was successfully created.'
    else
      @flash_cards = FlashCard.all
      render :index, status: :unprocessable_entity
    end
  end

  def review
    # TODO all cards should be available and clicking "next" should just move us to the next 
    # card instead of whatever the fuck is happening now
    session[:review_mode] = params[:mode] if params[:mode]
    session[:current_cards] = FlashCard.random_batch.pluck(:id)
    if session[:current_cards].empty?
      redirect_to root_path, notice: "Review session completed!"
      return
    end

    @card = FlashCard.find(session[:current_cards].first)
    @mode = session[:review_mode] || 'english_to_pashto'
    @showing_front = true
  end

  def next_card
    session[:current_cards].shift
    redirect_to review_flash_cards_path
  end

  def check_answer
    @card = FlashCard.find(params[:card_id])
    correct_answer = params[:mode] == 'pashto_to_english' ? @card.english_text : @card.pashto_text
    
    if params[:answer].downcase.strip == correct_answer.downcase.strip
      session[:current_cards].shift
      flash[:notice] = "Correct!"
    else
      flash[:alert] = "Incorrect. The correct answer was: #{correct_answer}"
    end

    redirect_to review_flash_cards_path
  end

  def edit
    @flash_card = FlashCard.find(params[:id])
  end

  def update
    @flash_card = FlashCard.find(params[:id])
    if @flash_card.update(flash_card_params)
      redirect_to root_path, notice: 'Card was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flash_card = FlashCard.find(params[:id])
    @flash_card.destroy
    redirect_to root_path, notice: 'Card was successfully deleted.'
  end

  private

  def flash_card_params
    params.require(:flash_card).permit(:english_text, :pashto_text)
  end
end 