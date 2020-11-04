var table = document.getElementById('tresult');
alert("");
for (var i = 1; i < table.rows.length; i++) {
    table.rows[i].onclick = function () {
        alert("this.cells[0].innerHTML");
        document.getElementById("leaveId").value = this.cells[0].innerHTML;
        alert(this.cells[1].innerHTML);
        document.getElementById("name").value = this.cells[1].innerHTML;
        alert(this.cells[2].innerHTML);
        document.getElementById("from").value = this.cells[2].innerHTML;
        alert(this.cells[3].innerHTML);
        document.getElementById("to").value = this.cells[3].innerHTML;
        document.getElementById("reason").value = this.cells[4].innerHTML;
        alert(this.cells[5].innerHTML);
        document.getElementById("annualLeaves").value = this.cells[5].innerHTML;
        document.getElementById("remainLeaves").value = this.cells[6].innerHTML;
        document.getElementById("takenLeaves").value = this.cells[7].innerHTML;
        alert(this.cells[7].innerHTML);

}}