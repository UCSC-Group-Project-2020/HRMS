var table = document.getElementById('tresult');

for (var i = 1; i < table.rows.length; i++) {
    table.rows[i].onclick = function () {

        document.getElementById("leaveId").value = this.cells[0].innerHTML;
        document.getElementById("name").value = this.cells[1].innerHTML;
        document.getElementById("from").value = this.cells[2].innerHTML;
        document.getElementById("to").value = this.cells[3].innerHTML;
        document.getElementById("reason").value = this.cells[4].innerHTML;
    };
}