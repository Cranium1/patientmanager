function getData(route, callback) {
	$.getJSON(route, callback);
}

function initialload(data) {
	data.forEach(function(record, index){
		table[record["id"]] = record;
	});
  grid = new Slick.Grid("#myGrid", table, columns, options);
}

var table = [];

$(document).ready(function() {
	getData("/patients.json", initialload);
});

var grid;
var columns = [
{id: "id", name: "ID", field: "id"},
{id: "name_first", name: "First", field: "name_first"},
{id: "name_last", name: "Last", field: "name_last"}
];

var options = {
  enableCellNavigation: true,
  enableColumnReorder: false
};