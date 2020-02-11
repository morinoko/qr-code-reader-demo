class CreateRailsQrCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :rails_qr_codes do |t|
      t.string :content

      t.timestamps
    end
  end
end
