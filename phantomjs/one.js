 var page = require('webpage').create();
 page.open('http://localhost:8080/dsat_template/app#/dashboard/', function(status) {
   console.log(status);
   if(status === "success") {
   	 console.log('taking screenshot');
     page.render('./phantomjs/screenshots/login.png');
   }
   phantom.exit();
 }); 
