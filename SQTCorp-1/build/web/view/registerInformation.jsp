
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       
    </head>
    <body>
        <form>
          <div class="mb-3">
            <label class="form-label">Name</label><br>
            <input type="text" class="form-control" >
          </div><br>
          <div class="mb-3">
            <label class="form-label">Sex</label><br>
            <select name="sex">
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="other">Other</option>
            </select>
          </div><br>
          <div class="mb-3">
              <label class="form-label">Birthday</label><br>
              <fieldset id="birthdate">
                <label for="birthday_day" class="offset">Day</label>
                <input type="text" name="birthday_day" id="birthday_day" size="2" maxlength="2" />

                <label for="birthday_month" class="offset">Month</label>
                <input type="text" name="birthday_month" id="birthday_month" size="2" maxlength="2"  />

                <label for="birthday_year" class="offset">Year</label>
                <input type="text" name="birthday_year" id="birthday_year" size="4" maxlength="4" />
              </fieldset>
          </div><br>
          <div class="mb-3">
            <label class="form-label">Phone Number</label><br>
            <input type="text" class="form-control" >
          </div><br>
          <div class="mb-3">
            <label class="form-label">Email Address</label><br>
            <input type="text" class="form-control" >
          </div><br>
          <div class="mb-3">
            <label class="form-label">Role</label><br>
            <select name="sex">
              <option value="male">Buyer</option>
              <option value="female">Seller</option>
            </select>
          </div><br>
          <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </body>
</html>
