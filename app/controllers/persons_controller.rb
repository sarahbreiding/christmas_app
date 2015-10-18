class PersonsController < ApplicationController

  def index
    @persons = Person.all
    @person = Person.new
  end

  def new
    @person = Person.new
  end

  def create
      @person = Person.new(person_params)
      if @person.save
        redirect_to persons_url(@persons)
      else
        render 'new'
      end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      redirect_to persons_url(@person)
    else
      render 'edit'
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to persons_url(@persons)
  end

  private
    def person_params
      params.require(:person).permit(:name, :ideas, :gift_id)
    end

end

