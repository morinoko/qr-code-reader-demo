module RailsQrCodesHelper
  def display_data(qr_code)
    if qr_code.link?
      link_to qr_code.data, qr_code.data
    else
      qr_code.data 
    end
  end
end
