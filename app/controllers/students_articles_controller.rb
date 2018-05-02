class StudentsArticlesController < ApplicationController
  before_action :set_students_article, only: [:show, :edit, :update, :destroy]

  # GET /students_articles
  # GET /students_articles.json
  def index
    @students_articles = StudentsArticle.all
  end

  # GET /students_articles/1
  # GET /students_articles/1.json
  def show
  end

  # GET /students_articles/new
  def new
    @students_article = StudentsArticle.new
  end

  # GET /students_articles/1/edit
  def edit
  end

  # POST /students_articles
  # POST /students_articles.json
  def create
    @students_article = StudentsArticle.new(students_article_params)

    respond_to do |format|
      if @students_article.save
        format.html { redirect_to @students_article, notice: 'Students article was successfully created.' }
        format.json { render :show, status: :created, location: @students_article }
      else
        format.html { render :new }
        format.json { render json: @students_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students_articles/1
  # PATCH/PUT /students_articles/1.json
  def update
    respond_to do |format|
      if @students_article.update(students_article_params)
        format.html { redirect_to @students_article, notice: 'Students article was successfully updated.' }
        format.json { render :show, status: :ok, location: @students_article }
      else
        format.html { render :edit }
        format.json { render json: @students_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_articles/1
  # DELETE /students_articles/1.json
  def destroy
    @students_article.destroy
    respond_to do |format|
      format.html { redirect_to students_articles_url, notice: 'Students article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_article
      @students_article = StudentsArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def students_article_params
      params.require(:students_article).permit(:blog_id, :user_id, :date, :blog_text, :blog_title, :user_img, :blog_link, :blog_img, :blog_upload)
    end
end
