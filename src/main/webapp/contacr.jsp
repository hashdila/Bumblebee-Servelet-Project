<%--
  Created by IntelliJ IDEA.
  User: Dilan Nawarathna
  Date: 3/11/2023
  Time: 7:20 AM
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<div class="container " style="max-width: 1200px;margin:0 auto; padding-top: 20px;">
    <div class="row">
        <div class="col-md-6">
            <!-- Map -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2806.9789993131826!2d-73.98565578413971!3d40.74844047932807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc4b235cbe75fd7a4!2sEmpire%20State%20Building!5e0!3m2!1sen!2sus!4v1613425361505!5m2!1sen!2sus" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <div class="col-md-6">
            <!-- Contact Form -->
            <form>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter your name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number">
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message</label>
                    <textarea class="form-control" id="message" rows="5" placeholder="Enter your message"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <!-- Contact Information -->
            <div class="mt-5">
                <h5>Contact Information</h5>
                <p><i class="bi bi-geo-alt-fill"></i> 350 5th Ave, New York, NY 10118, United States</p>
                <p><i class="bi bi-envelope-fill"></i> example@email.com</p>
                <p><i class="bi bi-phone-fill"></i> +1 123-456-7890</p>
            </div>
        </div>
    </div>
</div>
