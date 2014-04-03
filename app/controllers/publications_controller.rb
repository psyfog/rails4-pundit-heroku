class PublicationsController < ApplicationController
def new
end
 def create
  @publication = Publication.new(publication_params)
 
  @publication.save
  redirect_to @publication
  end
def show
  @article = Publication.find(params[:id])
end
def index
  @publication = Publications.all
end
private
  def publication_params
    params.require(:publication).permit(:title, :text)
  end

end
