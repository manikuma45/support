
class InquiriesController < ApplicationController


def new
	#@support = Support.find_by(params[:support_id])
	#inquirie = @support.id
	@inquiry = Inquiry.new
	@support = params[:support_id]
	#@inquirie = support.inquirie.new(@support_id)
	 #@inquirie = Inquirie.new(params[:support_id])
end

def create
	@support = Support.find_by(params[:support_id])
	#support = @support.id
	@inquiry = @support.inquiries.build(inquiry_params)
	#@inquirie = Inquirie.create([inquirie_params])
	#@inquirie  = Inquirie.create(inquirie_params)
	#@support = Support.find_by(id: params[:support_id])
    #@inquirie  = @support.inquiries.create(inquirie_params)
      #@inquirie =  Support.find_by(id: support[:support_id])
   if @inquiry.save
    redirect_to supports_path, notice: "お問い合わせありがとうございました"
  else
    render :new
  end
end



private

def inquiry_params

  params.require(:inquiry).permit(:name, :content, :phone_number, :email)

end
end


