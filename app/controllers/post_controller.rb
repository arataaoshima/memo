class PostController < ApplicationController
    
    def index
        @posts =Post.all
    end
    
    def new 
    end
    
    def create
        @post = Post.new
        @post.post = params[:post]
        @post.description = params[:description]
        @post.save
        redirect_to("/post/index")
    end
    
    def edit
        @post = Post.find_by(id: params[:id])
    end
    
    def update
        @post = Post.find_by(id: params[:id])
        @post.post = params[:post]
        @post.description = params[:description]
        @post.save
        redirect_to("/post/index")
    end
    
    def show
        @post = Post.find_by(id: params[:id])
    end
    
    def delete
         @post = Post.find_by(id: params[:id])
         @post.destroy
         redirect_to("/post/index")
    end
    
    
end