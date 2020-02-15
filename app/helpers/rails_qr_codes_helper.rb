module RailsQrCodesHelper
  def display_content(qr_code)
    if qr_code.link?
      link_to qr_code.content, qr_code.content
    else
      qr_code.content 
    end
  end
end
