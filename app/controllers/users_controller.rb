# 使ってないコントローラー　11/11

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # 下記、合っているか不明　5章参照
    @books = @user.books.reverse_order
    @book = Book.find(params[:id])
  end

end
