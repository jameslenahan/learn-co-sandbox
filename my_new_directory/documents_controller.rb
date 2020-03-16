class DocumentsController < ApplicationController
  def show
    return head(:forbidden) unless session.include? :user_id
    @document = Document.find(params[:id])
  end
 
  def index
    return head(:forbidden) unless session.include? :user_id
  end
 
  def create
    return head(:forbidden) unless session.include? :user_id
    @document = Document.create(author_id: user_id)
  end
 
  def update
    return head(:forbidden) unless session.include? :user_id
    @document = Document.find(params[:id])
    # code to update a document
  end
end