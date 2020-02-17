class CreateQrCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :qr_codes do |t|
      t.string :data

      t.timestamps
    end
  end
end
