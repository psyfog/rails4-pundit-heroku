class PublicationsController < ApplicationController
	def new
	end
 def create
  @publication = Publication.new(publication_params)
 
  @publication.save
  redirect_to @publication
  end
def show
  @publication = Publication.find(params[:id])
end
def index
  @publication = Publication.all
end
def destroy
  #@publication = Publication.destroy
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to(:back)
    flash[:error] = "Post was destroyed!"
end
private
  def publication_params
    params.require(:publication).permit(:title, :text)
  end

end
