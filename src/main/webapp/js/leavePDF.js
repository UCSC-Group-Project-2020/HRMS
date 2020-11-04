function toPDF() {
    const  rowCount = document.getElementById("myTable").rows.length;
    const row = document.getElementById("myTable").rows[0].cells.length;

    const generateData = function (amount) {
        var result = [];

        for (var i = 0; i < amount; i += 1) {

            const Leave = document.getElementById("myTable").rows[i].cells.item(0).innerHTML;
            var Employee = document.getElementById("myTable").rows[i].cells.item(1).innerHTML;
            var Applied = document.getElementById("myTable").rows[i].cells.item(2).innerHTML;
            var From = document.getElementById("myTable").rows[i].cells.item(3).innerHTML;
            var To = document.getElementById("myTable").rows[i].cells.item(4).innerHTML;
            var Reason = document.getElementById("myTable").rows[i].cells.item(5).innerHTML;
            var Status = document.getElementById("myTable").rows[i].cells.item(6).innerHTML;
            var Authorized = document.getElementById("myTable").rows[i].cells.item(7).innerHTML;

            var data = {
                Leave_Id: Leave,
                Employee_Id: Employee,
                Applied_Date: Applied,
                From: From,
                To_Date: To,
                Reason: Reason,
                Status: Status,
                Authorized_Id: Authorized
            };
            result.push(Object.assign({}, data));
        }
        return result;
    };
    function createHeaders(keys) {
        var result = [];
        for (var i = 0; i < keys.length; i += 1) {
            result.push({
                id: keys[i],
                name: keys[i],
                prompt: keys[i],
                width: 45,
                height:10,
                top:5,
                align: "center",
                padding: 0
            });
        }
        return result;
    }
    var headers = createHeaders([
        "Leave_Id",
        "Employee_Id",
        "Applied_Date",
        "From_Date",
        "To_Date",
        "Reason",
        "Status",
        "Authorized_Id"
    ]);


    var doc = new jsPDF({orientation: "landscape" });
    doc.setFontType("bold");
    doc.setFontSize(30);
    doc.text("Human Resource Management System",55,25);


    doc.setFontType("normal");
    doc.setFontSize(14);
    doc.text("Staff Members Leaves ",130,32);

    doc.setLineWidth(0.5);
    doc.line(0, 45, 320, 45);

    doc.setFontSize(20);
    doc.setTextColor("#000");
    doc.table(15,50, generateData(rowCount), headers);
    doc.save("asaSAS");

}