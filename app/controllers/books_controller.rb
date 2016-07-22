class BooksController < ApplicationController
  before_action :get_book, :only => [:show]

  def get_book
    @book = Book.find_by_id(params[:id])
  end

  def show
    @book.detail_info if @book.present?
  end
end
