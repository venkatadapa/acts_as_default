class PeopleController < ApplicationController
  def index
    @persons = Person.find(:all)
  end

end
