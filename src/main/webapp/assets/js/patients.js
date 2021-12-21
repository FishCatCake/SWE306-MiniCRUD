function deleteConfirm(id, name) {
    if (confirm("Are you sure to delete patient " + name + " ?")) {
        document.location = 'doDeletePatient.jsp?id=' + id;
    } else {
        console.log("do nothing..");
    }
}

function editConfirm(id, name) {
    if (confirm("Are you sure to update patient " + name + " ?")) {
        document.location = 'doEditPatient.jsp?id=' + id;
    } else {
        console.log("do nothing..");
    }
}