class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # 下記、合っているか不明　5章参照
    @books = @user.books.reverse_order
  end

  #下記、 プロフィール画像入れるとき5章参照

  def user_params
    params.require(:user).permit(:name)
  end

end
