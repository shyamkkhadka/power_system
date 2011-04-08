// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Activate/De-activate tabs as according to the index of current tab
function activate_tab(tab_index) {
	$("ul.tabs li").removeClass("active");
	$("ul li:nth-child("+ tab_index+")").addClass("active");
}

// Required for pagination showing servicing histories of generator
function formatLinkForPaginationURL(eqp) {
  $("div.pagination").find("a").each(function() {
        var linkElement = $( this );
        var paginationURL = linkElement.attr("href");
        linkElement.attr({
             "url": paginationURL,
             "href": "#"
        });
		
        linkElement.click(function() {
        			eqp == "generator" ? $("#servicing_history_feed").load( $(this).attr('url') ) : $("#fault_history_feed").load( $(this).attr('url') )
           		return false;
        });			
   });
}
