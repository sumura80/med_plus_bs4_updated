class VotesController < ApplicationController
 	def create
    @post = Post.find_by(id: params[:id])
		#create.js.erbにpost情報を渡したいためインスタンス変数を利用。
	  vote = Vote.create(user_id: current_user.id, comment_id: params[:comment_id])
    @comment = vote.comment
  end

  def destroy
    @post = Post.find_by(id: params[:id])
		#create.js.erbにpost情報を渡したいためインスタンス変数を利用。
		vote = current_user.votes.find_by(comment_id: params[:comment_id])
    @comment = vote.comment
    vote.destroy
  end
 
end
