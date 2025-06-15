const username = document.getElementById("username");
const password = document.getElementById("password");
const confirmpassword = document.getElementById("confirmpassword");
const firstname = document.getElementById("firstname");
const middlename = document.getElementById("middlename");
const lastname = document.getElementById("lastname");
const address = document.getElementById("address");
const birthday = document.getElementById("birthday");
const mobilenumber = document.getElementById("mobilenumber");
const form = document.getElementById("form");
const errorElement = document.getElementById("error");
const usermessage = document.getElementById("usermessage");
const usermessage1 = document.getElementById("usermessage1");
const usermessage2 = document.getElementById("usermessage2");
const usermessage3 = document.getElementById("usermessage3");
const usermessage4 = document.getElementById("usermessage4");
const usermessage5 = document.getElementById("usermessage5");
const usermessage6 = document.getElementById("usermessage6");
const usermessage7 = document.getElementById("usermessage7");
const usermessage8 = document.getElementById("usermessage8");
const usermessage9 = document.getElementById("usermessage9");
const usermessage10 = document.getElementById("usermessage10");

//Executing the js after clicking the submit button.

form.addEventListener('submit', (e) => {
    
    var x = username.value.trim();
    var v = password.value.trim();
    var w = confirmpassword.value.trim();
    var y = firstname.value.trim();
    var z = middlename.value.trim();
    var q = lastname.value.trim();
    var s = address.value.trim();
    var t = birthday.value.trim();
    var u = mobilenumber.value.trim();

    //Checking if all required fields have input.

    if (x === "") {
        usermessage.innerText = "Username is required.";
        username.classList.add('error');
        e.preventDefault();
    }else {
        usermessage.innerText = "";
        username.classList.remove('error');
       
    }
    if (v === "") {
        usermessage1.innerText = "Password is required.";
        password.classList.add('error');
        e.preventDefault();
    }else {
        usermessage1.innerText = "";
        password.classList.remove('error');
     
    }
    if (w === "") {
        usermessage2.innerText = "Confirm password is required.";
        confirmpassword.classList.add('error');
        e.preventDefault();
    }else{
        usermessage2.innerText = "";
        confirmpassword.classList.remove('error');
       
    }
    if (y === "") {
        usermessage3.innerText = "Firstname is required.";
        firstname.classList.add('error');  
        e.preventDefault();
    }else {
        usermessage3.innerText = "";
        firstname.classList.remove('error');  
     
    }
    if (q === "") {
        usermessage4.innerText = "Lastname is required.";
        lastname.classList.add('error');
        e.preventDefault();
    }else {
        usermessage4.innerText = "";
        lastname.classList.remove('error');
        
    }
    if (s === "") {
        usermessage5.innerText = "Complete address is required.";
        address.classList.add('error');
        e.preventDefault();
    } else {
        usermessage5.innerText = "";
        address.classList.remove('error');
        
    }
    if (t === "") {
        usermessage6.innerText = "Birthday is required.";
        birthday.classList.add('error');
        e.preventDefault();
    }else {
        usermessage6.innerText = "";
        birthday.classList.remove('error');
        
    }
    if (u === "") {
        usermessage7.innerText = "Mobile number is required.";
        mobilenumber.classList.add('error');
        e.preventDefault();
    }else {
        usermessage7.innerText = "";
        mobilenumber.classList.remove('error');
        
    }

    //If all required fields have input.

    if (x !== "" && v !== "" && w !== "" && y !== "" && q !== "" && s !== "" && t !== "" && u !== "") {
        function myFunction() {
            myUsername(x);
            userPassword(v);
            firstName(y);
            middleName(z);
            lastName(q);
            completeAddress(s);
            userBirthday(t);
            userMobilenumber(u);
            var a = myUsername(x);
            var i = userPassword(v);
            var b = firstName(y);
            var c = middleName(z);
            var d = lastName(q);
            var f = completeAddress(s);
            var g = userBirthday(t);
            var h = userMobilenumber(u);
            inputValidation(a, b, c, d, f, g, h, i, v, w);
        }

        //Input Validation.
        function myUsername(x) {
            var username = x;
            var validation = /^[\w\s]{4,12}$/.test(username);
            return validation;
        }

        function userPassword(v) {
            var password = v;
            var validation1 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[-_!@#$&*])/.test(password);
            return validation1;
        }

        function firstName(y) {
            var firstname = y;
            var validation2 = /^[a-zA-Z-\s]{1,99}$/.test(firstname);
            return validation2;
        }
        function middleName(z) {
            var middlename = z;
            var validation3 = /^[a-zA-Z]{0,99}$/.test(middlename);
            return validation3;
        }
        function lastName(q) {
            var lastname = q;
            var validation4 = /^[a-zA-Z]{2,99}$/.test(lastname);
            return validation4;
        }

        function completeAddress(s) {
            var address = s;
            var validation5 = /^[a-zA-Z0-9-\s]+$/.test(address);
            return validation5;
        }

        function userBirthday(t) {
            var birthday = t;
            var validation6 = /\d{1,2}-\d{1,2}-\d{4}/.test(birthday);
            return validation6;
        }
        function userMobilenumber(u) {
            var mobile = u;
            var validation7 = /^\d{11,11}$/.test(mobile);
            return validation7;
        }

        //Setting the if conditions.
        function inputValidation(a, b, c, d, f, g, h, i, v, w) {
            if (a === false) {
                usermessage.innerText = "4-12 characters, no special characters allowed!";
                username.classList.add('error');
                username.classList.remove('success');
                e.preventDefault();
            }else{
                username.classList.add('success');
                username.classList.remove('error');
                usermessage.innerText = "";
                
            }
            if (i === false || v.length < 8 || v.length > 16) {
                usermessage1.innerText = "8-16 characters, atleast 1 capital and small letter,";
                usermessage9.innerText = "a number and a special character!";
                password.classList.add('error');
                password.classList.remove('success');
                e.preventDefault();
            }else{
                password.classList.add('success');
                password.classList.remove('error');
                usermessage1.innerText = "";
                usermessage9.innerText = "";
            }
            if (v !== w) {
                usermessage2.innerText = "Password does not match";
                confirmpassword.classList.add('error');
                confirmpassword.classList.remove('success');
                e.preventDefault();
            }else{
                confirmpassword.classList.add('success');
                confirmpassword.classList.remove('error');
                usermessage2.innerText = "";
            }
            if (b === false) {
                usermessage3.innerText = "Numbers and special characters are not allowed!";
                firstname.classList.add('error');
                firstname.classList.remove('success');
                e.preventDefault();
            }else{
                firstname.classList.add('success');
                firstname.classList.remove('error');
                usermessage3.innerText = "";
            }
            if (c === false) {
                usermessage8.innerText = "Numbers and special characters are not allowed!";
                middlename.classList.add('error');
                middlename.classList.remove('success');
                e.preventDefault();
            }else{
                middlename.classList.add('success');
                middlename.classList.remove('error');
                usermessage8.innerText = "";
            }
            if (d === false) {
                usermessage4.innerText = "Numbers and special characters are not allowed,";
                usermessage10.innerText = "minimum of 2 characters!";
                lastname.classList.add('error');
                lastname.classList.remove('success');
                e.preventDefault();
            }else{
                lastname.classList.add('success');
                lastname.classList.remove('error');
                usermessage4.innerText = "";
                usermessage10.innerText = "";
            }
            if (f === false) {
                usermessage5.innerText = "Special characters are not allowed!";
                address.classList.add('error');
                address.classList.remove('success');
                e.preventDefault();
            }else{
                address.classList.add('success');
                address.classList.remove('error');
                usermessage5.innerText = "";
            }
            if (g === false) {
                usermessage6.innerText = "Numbers only, please follow the correct format!";
                birthday.classList.add('error');
                birthday.classList.remove('success');
                e.preventDefault();
            }else{
                birthday.classList.add('success');
                birthday.classList.remove('error');
                usermessage6.innerText = "";
            }
            if (h === false) {
                usermessage7.innerText = "Please enter your 11-digit mobile number.";
                mobilenumber.classList.add('error');
                mobilenumber.classList.remove('success');
                e.preventDefault();
            }else{
                mobilenumber.classList.add('success');
                mobilenumber.classList.remove('error');
                usermessage7.innerText = "";
                
            }
            if (a === true && b === true && c === true && d === true && f === true && g === true && h === true && v === w && i === true && v.length >= 8 && v.length <= 14) {
                alert("Success");
                return true;
                
            } else {
                document.getElementById("form");
                return false;
            }
        }
        myFunction();
    }
});



