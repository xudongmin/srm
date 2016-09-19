/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: EN
 */
jQuery.extend(jQuery.validator.messages, {
        required: "This field is required.",
		remote: "Please fix this field.",
		email: "Please enter a valid email address.",
		url: "Please enter a valid URL.",
		date: "Please enter a valid date.",
		dateISO: "Please enter a valid date (ISO).",
		number: "Please enter a valid number.",
		digits: "Please enter only digits.",
		creditcard: "Please enter a valid credit card number.",
		equalTo: "Please enter the same value again.",
		accept: "Please enter a string with a valid suffix name.",
		maxlength: jQuery.validator.format("Please enter no more than {0} characters."),
		minlength: jQuery.validator.format("Please enter at least {0} characters."),
		rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
		range: jQuery.validator.format("Please enter a value between {0} and {1}."),
		max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
		min: jQuery.validator.format("Please enter a value greater than or equal to {0}.")
});
$.validator.addMethod("isPositive",function(value,element){
                var score = /^[0-9]\d*(\.\d+)?$/;
                return this.optional(element) || (score.test(value));
            },"<font color='#E47068'>Please enter a valid number and can not be negative</font>");
$.validator.addMethod("notEqualTo", function(value, element, param) {
return value.toLowerCase() != $(param).val().toLowerCase();
}, $.validator.format("Cannot enter a duplicate value")); 
jQuery.extend(jQuery.validator.defaults,{
    errorElement: "span",
    errorPlacement: function(error,element) {
        if (element.is(':radio') || element.is(':checkbox')) {
            var eid = element.attr('name');
            //alert(error);
            //$('input[name=' + eid + ']:last').next().after(error);
            if($(".error:last",element.parent()).is("span")==false){
            	//error=error.text("必选字段");
            	error.appendTo(element.parent());
            	//element.parent().addClass("error");
            }
        }else{
        	error=error.text("");
        	error.insertAfter(element);
        }
    }
});
