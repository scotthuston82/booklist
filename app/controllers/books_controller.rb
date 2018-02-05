class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      format.csv do
        Book.generate_csv(@books)
      end
      format.json do
        render json: @books
      end
    end
  end

end

# def index
#   @people = Person.all
#
#   respond_to do |format|
#     format.html
#     format.js
#     format.xml { render xml: @people }
#   end
# end
