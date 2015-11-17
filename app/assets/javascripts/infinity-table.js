function getData(route, callback) {
	$.getJSON(route, callback);
}

function initialload(data) {
	data.forEach(function(record, index){
		table[record["id"]] = record;
	});
}

var table = [];

$(document).ready(function() {
	getData("/patients.json", initialload);
});