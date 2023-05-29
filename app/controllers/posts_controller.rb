class PostsController < ApplicationController
    # 投稿された内容を全て取得する
    def index
        # データベースから投稿を全て取得する
        @posts = Post.all
    end
    # 新しい投稿のコントローラ設定
    def new
        # データベースから投稿を全て取得する
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to posts_path
        else
            render :new
        end
    end
    private
    def post_params
        params.require(:post).permit(:title,:content)
    end
end
