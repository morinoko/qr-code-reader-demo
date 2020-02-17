import { BrowserQRCodeReader } from '@zxing/library';
import Rails from '@rails/ujs'; // Use to make an ajax post request to Rails

const codeReader = new BrowserQRCodeReader();

codeReader
  .decodeFromInputVideoDevice(undefined, 'video')
  .then((result) => {
    let qrDataFromReader = result.text;

    // Prepare a post request so it can be sent to the Rails controller
    let formData = new FormData();

    let qrCodeParams = {
      qr_data: qrDataFromReader
    };

    formData.append("qr_code_json_data", JSON.stringify(qrCodeParams));

    // Send QR code data as JSON to the 
    // qr_codes#create action using Rails UJS
    Rails.ajax({
      url: "/qr_codes",
      type: "post",
      data: formData
    });

  })
  .catch(error => {
    console.error(error);
  });
