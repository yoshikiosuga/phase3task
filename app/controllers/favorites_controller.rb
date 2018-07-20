class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to pictures_url, notice: "#{favorite.picture.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    path = Rails.application.routes.recognize_path(request.referer)
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    if path[:controller] == "users"
      redirect_to user_path(current_user.id), notice: "#{favorite.picture.user.name}さんのブログをお気に入り解除しました"
    end
    if path[:controller] == "pictures"
      redirect_to pictures_url, notice: "#{favorite.picture.user.name}さんのブログをお気に入り解除しました"
    end
  end
end
