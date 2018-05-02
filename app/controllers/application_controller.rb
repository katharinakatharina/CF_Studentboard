class ApplicationController < ActionController::Base

  def index
    @students_articles = StudentsArticle.all
  end

end
