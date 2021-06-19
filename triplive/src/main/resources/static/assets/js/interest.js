
    $(()=>{
    	$(".btn").click(function(){
    		let selector = $(this)
    		$.ajax({
				url:'deleteInterest.do',
				data: ({"hostId" : $("#delete_btn").parent().parent().find("td:first-child").text().trim()}),
	            success: function(data){
	            	if(data = "1"){
	            		selector.parent().parent().remove();
	            	}
	        	}
			})
    	})
    })
