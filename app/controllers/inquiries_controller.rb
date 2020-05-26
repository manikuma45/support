class InquiriesController < ApplicationController


def new
	 @inquirie = Inquirie.new
end

def create
      @inquirie  = Inquirie.create(inquirie_params)
      #@inquirie =  Support.find_by(id: support[:support_id])
   if @inquirie.save
    redirect_to supports_path, notice: "お問い合わせ"
  else
    render :new
  end
end




private

def inquirie_params

  params.require(:inquirie).permit(:name, :content, :phone_number, :email)

end
end
