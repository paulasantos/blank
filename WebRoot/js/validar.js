
	$(function() {
		/*
		$("input:eq(0)").keypress(function() {
			$("#div1").show();
		});

		$("input:eq(1)").keypress(function() {
			$("#div2").show();
		});
*/
		$("#ppreco").mask("999999999999.99", {reverse: true});
		
		var messages = {}, itensObrigatoriosList = [];
		$elements = $("#formulario").find(
				"input[type != hidden], select, textarea");
		$elements.each(function() {
			var thisClass = $(this).attr("class");
			if (thisClass && thisClass.match("required")) {
				itensObrigatoriosList.push($(this).attr("name"));
			}
		});
		for ( var i = 0; i < itensObrigatoriosList.length; i++) {
			messages[itensObrigatoriosList[i]] = {
				required : ""
			};
		}

		$("#formulario").validate({
			messages : messages
		});
		
		
		

	});

	