function validate(){
    let ICNo = document.getElementById("icNumber");
    let PatientName = document.getElementById("fullName");
    let PhoneNumber = document.getElementById("telNo");
    let Gender = document.getElementsByName("gender");
    let Address = document.getElementById("address");
    let VisitDate = document.getElementById("lastDate");
    let prescription = document.getElementById("prescription");
    let status = 0;
    if(ICNo.value==="")
    {
        alert("IC No. Can Not Be Empty!");
        return false;
    }
    if(PatientName.value==="")
    {
        alert("Patient Name Can Not Be Empty!");
        return false;
    }

    if(PhoneNumber.value==="")
    {
        alert("Phone Number Can Not Be Empty!");
        return false;
    }
    for(let temp in Gender)
    {
        if(Gender[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The Choice of Gender Can Not Be Empty!");
        return false;
    }

   if(Address.value ==="")
   {
       alert("Address Can Not Be Empty!");
       return false;
   }
   if(VisitDate.value ===""){
       alert("Last Visit Day Can Not Be Empty!");
       return false;
   }
   if(prescription.value ==="")
    {
        alert("Prescription Can Not Be Empty!");
        return false;
    }

    return true;
}
