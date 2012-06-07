// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Activate/De-activate tabs as according to the index of current tab
function activate_tab(tab_index) {
	$("ul.tabs li").removeClass("active");
	$("ul li:nth-child("+ tab_index+")").addClass("active");
}

// Required for pagination showing servicing histories of generator
function formatLinkForPaginationURL() {
  console.log("Called");
  $("div.list_pagination").find("a").each(function() {
        var linkElement = $( this );
        var paginationURL = linkElement.attr("href");
        linkElement.attr({
             "url": paginationURL,
             "href": "#"
        });
		
        linkElement.click(function() {
        		//eqp == "generator" ? $("#servicing_history_feed").load( $(this).attr('url') ) : $("#fault_history_feed").load( $(this).attr('url') );
			$("#stations").load( $(this).attr('url') );
           		return false;
        });			
   });
}

$(document).ready(function() {
	// Focus out/in event for servicing changed part nos 
	$("#servicing_changed_quantity .changed_part_no").each(function() {
		$(this).focus(function () {
			$(this).val("");
		});
		
		$(this).blur(function () {
			//$(this).val("Changed part no");
		});
	});
	
	// Focus out/in event for servicing quantities
	$("#servicing_changed_quantity .changed_part_quantity").each(function() {
		$(this).focus(function () {
			$(this).val("");
		});
		
		$(this).blur(function () {
			//$(this).val("Changed part quantity");
		});
	});
	
	
	// Add servicing part nos and quantity
	$("#add_new_servicing_detail").click(function () {
	$("#servicing_history_changed_part_no").val(encodeURIComponent($(".changed_part_no").first().val()));
	$("#servicing_changed_quantity").append('<div><input class="changed_part_no" type="text" value ="Changed part no"/>'+
		'<input class="changed_part_quantity" type="text" value ="Changed part quantity"/>'+
		'<span class="delete_servicing_quantity">Delete</span></div>');
	});
	
	
	// Event handler for grouping by account office
	$("#group_stations").change(function() {
		var acct_office = $(this +"option:selected").val().toUpperCase();
                $("#stations").load("/stations/list?group_by="+acct_office);
	});	
		
});

// Remove servicing part nos and quantity
$(".delete_servicing_quantity").live('click',function() {
	$(this).parent("div").remove();
});

// Save value in hidden input fields separted by ','. Extra ',' will be appended.
/*$(".save_servicing_quantity").live('click',function() {
	var changed_part_no = $("#servicing_history_changed_part_no").val();
	
	var new_part_no = $(this).siblings("input.changed_part_no").val();
	var str = changed_part_no + "," + encodeURIComponent(new_part_no) ;
	$("#servicing_history_changed_part_no").val(str);
	
	
});*/

// Save part nos and quantities changed in hidden field
function checkParts() {
	var part_nos = [ ];
	$("input.changed_part_no").each(function () {
		part_nos.push(encodeURIComponent($(this).val()));
	});
	$("#servicing_history_changed_part_no").val(encodeURIComponent(part_nos));
	var val = $("#servicing_history_changed_part_no").val();

	
	var part_quantities = [ ];
	$("input.changed_part_quantity").each(function () {
		part_quantities.push(encodeURIComponent($(this).val()));
	});
	$("#servicing_history_changed_part_quantity").val(encodeURIComponent(part_quantities));
	var val = $("#servicing_history_changed_part_quantity").val();
	return true;
}
	
	
	

