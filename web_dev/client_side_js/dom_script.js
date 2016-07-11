 console.log("HOWDY!!!");


 function make_green_bg(event) {
 	console.log(event);
 	event.target.style.backgroundColor= 'green';
 }

var div1 = document.getElementById('test');
div1.addEventListener("click", make_green_bg);



