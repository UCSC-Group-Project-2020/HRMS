
var table = document.getElementById('table');

for (var i = 1; i < table.rows.length; i++) {
    table.rows[i].onclick = function () {
        //rIndex = this.rowIndex;
        document.getElementById("comId").value = this.cells[0].innerHTML;
        document.getElementById("date").value = this.cells[1].innerHTML;
        document.getElementById("type").value = this.cells[2].innerHTML;
        document.getElementById("description").value = this.cells[3].innerHTML;
    };
}
