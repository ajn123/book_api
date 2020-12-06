class BooksController < ApplicationController


  def get_book_request
    book = Book.find_by(title: params[:title])
    if book
      book.email = params[:email]
      book.timestamp = Time.now.iso8601
      # User cannot request a book if the email is invalid format
      if book.save
        render json: book
      else
        render json: { errors: book.errors.full_messages }
      end
    else
      render json: "could not find book"
    end
  end


  def retrieve_request
    if params[:id] 
      if Book.exists?(params[:id])
        book = Book.find(params[:id])
        render json: book
      else
        render json: "book id #{params[:id]} cannot be found"
      end
    else
      render json: Book.all
    end

  end

  def delete_request
    if Book.exists?(params[:id])
      Book.find(params[:id]).destroy
    end
    render :json => nil
  end


  def request_params
    params.require(:book).permit(:email, :title)
  end
end
