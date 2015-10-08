class GiftsController < ApplicationController

  def create
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.create(gift_params)
    redirect_to persons_url(@persons)
  end

  def edit
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.find(params[:id])
  end

  def update
    gift = Gift.find(params[:id])
    gift.update_attributes(gift_params)
    redirect_to persons_url
  end

  def show
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:person_id])
    @gift = @person.gifts.find(params[:id])
    @gift.destroy
    redirect_to persons_url(@persons)
  end

  private
    def gift_params
      params.require(:gift).permit(:name, :status, :location)
    end

end
