class MessagesController < ApplicationController
  before_action :set_buying, only: [:new]

  def new
    @message = @buying.message.new(parent_id: params[:parent_id])
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @buying = Buying.find(params[:buying_id])
    @message.buying_id = @buying.id
    @message.save!
    @material = Material.find(@buying.material_id)
    redirect_to material_buying_path(@buying.material, @buying, anchor: "message_#{@message.id}"), notice: 'Comment was successfully created.'
  end

  private

  def set_buying
    @buying = Buying.find(params[:buying])
  end

  def message_params
    params.require(:message).permit(:content, :created_at)
  end
end
