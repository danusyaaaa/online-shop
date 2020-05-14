class BoughtsController < ApplicationController
   
        def new
          @wains = Wain.where(user_id: current_user.id)
            @bought = current_user.boughts.build
          end
    
    
          def create
            @bought = current_user.boughts.build(bought_params)
            @bought.save
            redirect_to users_page_path(current_user)
          end
          def destroy
         
            @bought = Bought.find(params[:id])
            @bought.destroy
            redirect_to users_page_path(current_user)
          end
    
         
    
    private  def bought_params
           params.require(:bought).permit(:name,:number_tel,:street,:payment,:deliver,:last_name,:email,:username)
         end
    

end
