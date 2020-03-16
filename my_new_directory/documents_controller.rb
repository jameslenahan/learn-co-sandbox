class DocumentsController
  def show
    @document = Document.find(params[:id])
  end
end