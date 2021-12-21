function deleteConfirm(id, name) {
    if (confirm("are you sure to delete patient " + name + " ?")) {
        document.location = 'doDeletePatient.jsp?id=' + id;
    } else {
        console.log("do nothing..");
    }
}