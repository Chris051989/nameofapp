$(document).ready(function(){
var$header_display=$('#header_display');
$header_display.flapper({
width:7,
chars_preset:'alpha'
});

setTimeout(function(){
$header_display.val('FLAPPER').change();
vartoggle=true;
setInterval(function(){
if(toggle){
$header_display.val('FLAPPER').change();
}else{
$header_display.val('').change();
}
toggle=!toggle;
},5000);
},1000);

});
