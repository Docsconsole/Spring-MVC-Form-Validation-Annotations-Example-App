<!DOCTYPE html>
<html>
   <head></head>
   <body>
      <div style="padding-left: 50px; padding-top: 50px;">
         <h2>Servlet Form App Example</h2>
         <form action="readForm" method="GET">
            <span style="color: #93f3ee;font-size:18px;padding-right: 45px;">First name:</span>
            <input type="text" name="firstname" style="width: 145px;">
            <br><br>
            <span style="color: #93f3ee;font-size:18px;padding-right: 47px;">Last name:</span>
            <input type="text" name="lastname" style="width: 145px;">
            <br><br>
            <span style="color: #93f3ee;font-size:18px;padding-right: 13px;">Phone Number:</span>
            <input type="text" name="phoneNumber" style="width: 145px;">
            <br><br>
            <span style="color: #93f3ee;font-size:18px;">Please select the Gender:</span><br><br>
            <input type="radio" name="gender" value="male"> Male<br>
            <input type="radio" name="gender" value="female"> Female<br>
            <input type="radio" name="gender" value="other"> Other<br><br>
            <span style="color: #93f3ee;font-size:18px;">Please select vehicle Type:</span><br><br>
            <input type="checkbox" name="vehicle1" value="Bike">Bike<br>
            <input type="checkbox" name="vehicle2" value="Car">Car<br><br>
            <span style="color: #93f3ee;font-size:18px;">Please select DOB:</span><br><br>
            <input type="date" name="bday" min="2000-01-02"><br><br>
            <select name="carsType" style="width: 145px;">
               <option value="volvo">Volvo</option>
               <option value="saab">Saab</option>
               <option value="fiat">Fiat</option>
               <option value="audi">Audi</option>
            </select>
            <br><br>
            <input type="submit">
         </form>
      </div>
   </body>
</html>