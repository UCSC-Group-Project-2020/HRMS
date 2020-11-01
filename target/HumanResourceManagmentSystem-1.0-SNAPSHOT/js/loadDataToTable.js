var table = document.getElementById('tableResult');

for (var i = 1; i < table.rows.length; i++) {
    table.rows[i].onclick = function () {
        document.getElementById("empId").value = this.cells[0].innerHTML;

    };
}
