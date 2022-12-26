class AttachmentsController < ApplicationController
  def destroy
    attachment = ActiveStorage::Attachment.find(params[:id])
    attachment.purge_later
    redirect_to attachment.record
  end
end
