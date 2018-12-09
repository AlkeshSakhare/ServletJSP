/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function ajaxindicatorstart()
{
    console.log('Show');
    var text="Loading Please Wait...";
	if(jQuery('body').find('#resultLoading').attr('id') !== 'resultLoading'){
	jQuery('body').append('<div id="resultLoading" style="display:none"><div><img src="./img/demo/_small/loading.gif"><div>'+text+'</div></div><div class="bg"></div></div>');
	}

	jQuery('#resultLoading').css({
		'width':'100%',
		'height':'100%',
		'position':'fixed',
		'z-index':'10000000',
		'top':'0',
		'left':'0',
		'right':'0',
		'bottom':'0',
		'margin':'auto'
	});

	jQuery('#resultLoading .bg').css({
		'background':'#000000',
		'opacity':'0.9',
		'width':'100%',
		'height':'100%',
		'position':'absolute',
		'top':'0'
	});

	jQuery('#resultLoading>div:first').css({
		'width': '250px',
		'height':'75px',
		'text-align': 'center',
		'position': 'fixed',
		'top':'0',
		'left':'0',
		'right':'0',
		'bottom':'0',
		'margin':'auto',
		'font-size':'16px',
		'z-index':'10',
		'color':'#ffffff'

	});

    jQuery('#resultLoading .bg').height('100%');
    jQuery('#resultLoading').fadeIn(300);
    jQuery('body').css('cursor', 'wait');
}

function ajaxindicatorstop()
{
    console.log('End');
    jQuery('#resultLoading .bg').height('100%');
       jQuery('#resultLoading').fadeOut(300);
    jQuery('body').css('cursor', 'default');
}

function ajaxindicatorstart1()
{
    console.log('Show');
    var text="Logging off...";
	if(jQuery('body').find('#resultLoading1').attr('id') !== 'resultLoading'){
	jQuery('body').append('<div id="resultLoading1" style="display:none"><div><img src="./Images/ajax-loader.gif"><div>'+text+'</div></div><div class="bg"></div></div>');
	}

	jQuery('#resultLoading1').css({
		'width':'100%',
		'height':'100%',
		'position':'fixed',
		'z-index':'10000000',
		'top':'0',
		'left':'0',
		'right':'0',
		'bottom':'0',
		'margin':'auto'
	});

	jQuery('#resultLoading1 .bg').css({
		'background':'#000000',
		'opacity':'0.9',
		'width':'100%',
		'height':'100%',
		'position':'absolute',
		'top':'0'
	});

	jQuery('#resultLoading1>div:first').css({
		'width': '250px',
		'height':'75px',
		'text-align': 'center',
		'position': 'fixed',
		'top':'0',
		'left':'0',
		'right':'0',
		'bottom':'0',
		'margin':'auto',
		'font-size':'16px',
		'z-index':'10',
		'color':'#ffffff'

	});

    jQuery('#resultLoading1 .bg').height('100%');
       jQuery('#resultLoading1').fadeIn(300);
    jQuery('body').css('cursor', 'wait');
}

function ajaxindicatorstop1()
{
    console.log('End');
    jQuery('#resultLoading1 .bg').height('100%');
       jQuery('#resultLoading1').fadeOut(300);
    jQuery('body').css('cursor', 'default');
}

var trueArray=["87612","85389","97251","66289","12543","90444","45654","65398","15786","45765","98642","16784"];
var falseArray=["01613","15479","54693","98307","20834","10462","12898","00136","54682","43685","78689","98574"];
function ValueDecrypt(val){
    /*var actual=val;//"encryptedstring";
    var key = 100; //Any integer value
    var result="";    
    for(i=0; i<actual.length; i++)
    {
        result += String.fromCharCode(key^actual.charCodeAt(i));
    }
    var deVal=getDecodedText(result);
    if($.inArray(deVal, trueArray) > -1){
       // console.log("true");
	   return true;
    }
    else if(($.inArray(deVal, falseArray) > -1)){
        
       // console.log("false");
	   return false;
    }
    else{
	return false;
       // console.log("false1")
    }
  //  console.log(deVal);*/
  var deVal=getDecodedText(val);
if($.inArray(deVal, trueArray) > -1){
       // console.log("true");
	   return true;
    }
    else if(($.inArray(deVal, falseArray) > -1)){
        
       // console.log("false");
	   return false;
    }
    else{
	return false;
       // console.log("false1")
    }
}

function getDecodedText(plainText){
//    return plainText;
    
    try{
        var encryped_ = window.atob(plainText);
        return encryped_;
    }
    catch(e){
        
        //        console.log("Exception in create table "+e.message);
        return "";
    }
    
    
}
function onlyDecrypt(val)
{
 var deVal=getDecodedText(val);
if($.inArray(deVal, trueArray) > -1){
       // console.log("true");
	   return true;
    }
    else if(($.inArray(deVal, falseArray) > -1)){
        
       // console.log("false");
	   return false;
    }
    else{
	return false;
       // console.log("false1")
    }
}



