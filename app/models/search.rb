module Search
  class SearchArticle
    def initialize(params)
      @params = params
      @title = Registracije.arel_table[:title]
      @content = Registracije.arel_table[:content]
    end

    def find
      if(@params.has_key?(:search))
        Registracije.where(@content.matches("%#{@params[:search]}%"))
               .or(Registracije.where(@title.matches("%#{@params[:search]}%")))
               .paginate(page: @params[:page],per_page:5)
      else
        Registracije.paginate(page: @params[:page],per_page:5)
      end
    end
  end
end