class InquiriesController < ApplicationController


def new
	#@support = Support.find_by(params[:support_id])
	#inquirie = @support.id
	@inquirie = Inquirie.new
	#@inquirie = support.inquirie.new(@support_id)
	 #@inquirie = Inquirie.new(params[:support_id])
end

def create
	@support = Support.find_by(params[:support_id])
	support = @support.id
	#@inquirie = @support.inquiries.build([inquirie_params])
	#@inquirie = Inquirie.create([inquirie_params])
	#@inquirie  = Inquirie.create(inquirie_params)
	#@support = Support.find_by(id: params[:support_id])
    @inquirie  = support.inquirie.create(inquirie_params)
      #@inquirie =  Support.find_by(id: support[:support_id])
   if @inquirie.save
    redirect_to supports_path, notice: "お問い合わせ"
  else
    render :new
  end
end



private

def inquirie_params

  params.require(:inquirie).permit(:name, :content, :phone_number, :email, :support_id)

end
end
