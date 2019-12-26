class SearchController < ApplicationController
  def search
	method = params[:search_method]
    @word = params[:search_word]
    if params[:search_content] == "User"
	    @users = User.paginate(page: params[:page], per_page: 10).search(method,@word)
	elsif params[:search_content] == "Book"
	    @books = Book.paginate(page: params[:page], per_page: 10).search(method,@word)
	else
	end
  end
end