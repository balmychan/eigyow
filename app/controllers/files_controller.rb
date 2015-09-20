class FilesController < ApplicationController

  def download
    file = Proposal.find(params[:format])
    send_data(file.upload_file, filename: file.upload_file_name) 
  end

end
