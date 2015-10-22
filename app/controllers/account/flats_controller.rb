module Account
  class FlatsController < Account::Base
    def index
      @flats = current_user.flats
    end

    def new
      @flat = current_user.flats.build
    end

    def create
      @flat = current_user.flats.build(flat_params)

      if @flat.save
        flash[:notice] = "Votre bien a bien été ajouté, bravo !!"
        redirect_to account_flats_path
      else
        flash[:alert] = "oups ça merdouille, merci de recommencer"
        render :new
      end
    end

    def show
    end

    private

    def flat_params
      params.require(:flat).permit(:title, :description, :beds, :street, :city, :postcode, :price)
    end
  end
end
