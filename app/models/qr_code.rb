class QrCode < ApplicationRecord
  def link?
    data.starts_with?('http')
  end
end