<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>HTML CSS Register Form</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <form class="signup-form" action="/register" method="post">

      <!-- form header -->
      <div class="form-header">
        <h1>Create Account</h1>
      </div>

      <!-- form body -->
      <div class="form-body">

        <!-- Firstname and Lastname -->
        <div class="horizontal-group">
          <div class="form-group left">
            <label for="firstname" class="label-title">First name *</label>
            <input type="text" id="firstname" class="form-input" placeholder="enter your first name" required="required" />
          </div>
          <div class="form-group right">
            <label for="lastname" class="label-title">Last name</label>
            <input type="text" id="lastname" class="form-input" placeholder="enter your last name" />
          </div>
        </div>

        <!-- Email -->
        <div class="form-group">
          <label for="email" class="label-title">Email*</label>
          <input type="email" id="email" class="form-input" placeholder="enter your email" required="required">
        </div>

        <!-- Passwrod and confirm password -->
        <div class="horizontal-group">
          <div class="form-group left">
            <label for="password" class="label-title">Password *</label>
            <input type="password" id="password" class="form-input" placeholder="enter your password" required="required">
          </div>
          <div class="form-group right">
            <label for="confirm-password" class="label-title">Confirm Password *</label>
            <input type="password" class="form-input" id="confirm-password" placeholder="enter your password again" required="required">
          </div>
        </div>

        <!-- Gender and Hobbies -->
        <div class="horizontal-group">
          <div class="form-group left">
            <label class="label-title">Gender:</label>
            <div class="input-group">
              <label for="male"><input type="radio" name="gender" value="male" id="male"> Male</label>
              <label for="female"><input type="radio" name="gender" value="female" id="female"> Female</label>
            </div>
          </div>
          <div class="form-group right">
            <label class="label-title">Hobbies</label>
            <div >
              <label><input type="checkbox" value="Web">Music</label>
              <label><input type="checkbox" value="iOS">Sports</label>
              <label><input type="checkbox" value="Andriod">Travel</label>
              <label><input type="checkbox" value="Game">Movies</label>
            </div>
          </div>
        </div>

        <!-- Source of Income and Income -->
        <div class="horizontal-group">
          <div class="form-group left" >
            <label class="label-title">Source of Income</label>
            <select class="form-input" id="level" >
              <option value="B">Employed</option>
              <option value="I">Self-employed</option>
              <option value="A">Unemployed</option>
            </select>
          </div>
          <div class="form-group right">
            <label for="experience" class="label-title">Income</label>
            <input type="range" min="20" max="100" step="5"  value="0" id="experience" class="form-input" onChange="change();" style="height:28px;width:78%;padding:0;">
            <span id="range-label">20K</span>
          </div>
        </div>

        <!-- Profile picture and Age -->
        <div class="horizontal-group">
          <div class="form-group left" >
            <label for="choose-file" class="label-title">Upload Profile Picture</label>
            <input type="file" id="choose-file" size="80">
          </div>
          <div class="form-group right">
            <label for="experience" class="label-title">Age</label>
            <input type="number" min="18" max="80"  value="18" class="form-input">
          </div>
        </div>

        <!-- Bio -->
        <div class="form-group">
          <label for="choose-file" class="label-title">Bio</label>
          <textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
        </div>
      </div>

      <!-- form-footer -->
      <div class="form-footer">
        <span>* required</span>
        <button type="submit" class="btn">Create</button>
      </div>

    </form>

    <!-- Script for range input label -->
    <script>
      var rangeLabel = document.getElementById("range-label");
      var experience = document.getElementById("experience");

      function change() {
      rangeLabel.innerText = experience.value + "K";
      }
    </script>

  </body>
</html>