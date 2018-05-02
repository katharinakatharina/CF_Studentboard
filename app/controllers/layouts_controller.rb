class LayoutsController < ApplicationController



  def landing_page
    @students_article = StudentsArticle.all
  end

end
