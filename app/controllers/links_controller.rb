class LinksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link, only: [:edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  def show
    @link = Link.find_by_slug(params[:slug]) 
    render 'errors/404', status: 404 if @link.nil?
    @link.update_attribute(:click_count, @link.click_count + 1)
    observable_redirect_to @link.url
  end


  # GET /links/new
  def new
    @link = current_user.links.build(params[:link])
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = current_user.links.create(link_params)

    respond_to do |format|
      if @link.save
        flash[:notice] = 'Link was successfully created.'
        format.html { redirect_to action: "index" }
        format.json { redirect_to action: "index" }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        flash[:notice] = 'Link was successfully created.'
        format.html { redirect_to action: "index" }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.fetch(:link, {}).permit(:url, :slug)
    end
end
