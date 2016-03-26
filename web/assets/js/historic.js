$(function(){
	$('#tabela-historico').DataTable({
		"language": {
			"processing":   "a processar...",
			"lengthMenu":   "mostrar _MENU_ registos",
			"zerorecords":  "não foram encontrados resultados",
			"info": 		"Monstrando página _PAGE_ de _PAGES_",
			"infoempty":    "mostrando de 0 até 0 de 0 registos",
			"infofiltered": "(filtrado de _MAX_ registos no total)",
			"infopostfix":  "",
			"search":       "procurar:",
			"paginate": {
			    "first":    "primeiro",
			    "previous": "anterior",
			    "next":     "seguinte",
			    "last":     "último"
			}
		}
	});
} ) ;