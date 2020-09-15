class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create

    msg1 = Msg.new
    msg1.name = params[:name]
    msg1.e_mail = params[:e_mail]
    msg1.message = params[:message]
    msg1.save

    #下では１項目ごとにテーブル更新を行ってしまうため、3レコードできてしまう
    #Msg.create(name: params[:name])
    #Msg.create(e_mail: params[:e_mail])
    #Msg.create(message: params[:message])

  end
end
