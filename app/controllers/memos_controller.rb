class MemosController < ApplicationController
    def index
        @memos = Memo.all
    end
    
    def create
        params.permit!
        @memo = Memo.new(params[:memo])
        
        @memo.save
        redirect_to memos_path
    end
    
    def destroy
        memo = Memo.find(params[:id])
        memo.destroy
        
        redirect_to memos_path
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        params.permit!
        @memo = Memo.find(params[:id])
        @memo.update(params[:memo])
        
        redirect_to memos_path
    end
end
