<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
</head>

<body>

  <!-- Modal -->
  <div class="modal fade" id="newsletterModal" tabindex="-1" role="dialog" aria-labelledby="newsletterModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content ">
        <div class="modal-header ">
          <h5 class="modal-title  " id="newsletterModalLabel">NEWSLETTER</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body text-center">
          <p>Enter your email address to subscribe to our notifications of new <b>PRODUCT</b>   by email.</p>
          <div class="input-group mt-4 mb-4 ">
            <input type="email" class="form-control" placeholder="Enter your email address here..." aria-label="Email"
              aria-describedby="subscribeBtn">
            <div class="input-group-append">
              <button class="btn btn-primary" type="button" id="subscribeBtn">SUBSCRIBE</button>
            </div>
          </div>
          <div class="form-check mt-4 mb-4">
            <input type="checkbox" class="form-check-input" id="hidePopupCheck">
            <label class="form-check-label" for="hidePopupCheck">Don't show this popup again</label>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    // $(document).ready(function () {
    //   if (localStorage.getItem("hidePopup") !== "true") {
    //     $('#newsletterModal').modal('show');
    //   }
    // });

    // $('#subscribeBtn').click(function () {
    //   // Subscribe logic here
    //   // You can add your own code to process the subscription
    //   if ($('#hidePopupCheck').is(':checked')) {
    //     localStorage.setItem("hidePopup", "true");
    //   }
    // });
  </script>

</body>

</html>
