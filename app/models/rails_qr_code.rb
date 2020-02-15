class RailsQrCode < ApplicationRecord
  def link?
    content.starts_with?('http')
  end
end