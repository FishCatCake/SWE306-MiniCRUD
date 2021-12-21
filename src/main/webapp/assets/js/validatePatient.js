function validate(){
    let ICNo = document.getElementById("icNumber");
    let PatientName = document.getElementById("fullName");
    let PhoneNumber = document.getElementById("telNo");
    let Gender = document.getElementsByName("gender");
    let Address = document.getElementById("address");
    let VisitDate = document.getElementById("lastDate");
    let prescription = document.getElementById("prescription");
    let status = 0;
    if(ICNo.value=== null)
    {
        alert("IC No. Can Not Be Empty!");
        return false;
    }
    if(PatientName.value===null)
    {
        alert("Patient Name Can Not Be Empty!");
        return false;
    }

    phoneNumber(PhoneNumber)

   /* if(PhoneNumber.value==="")
    {
        alert("Phone Number Can Not Be Empty!");
        return false;
    }*/
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

   if(Address.value ===null)
   {
       alert("Address Can Not Be Empty!");
       return false;
   }
   if(VisitDate.value ===null){
       alert("Last Visit Day Can Not Be Empty!");
       return false;
   }
   if(prescription.value ===null)
    {
        alert("Prescription Can Not Be Empty!");
        return false;
    }
    return true;
}

function phoneNumber(inputTelNo) {

    /* Phone number format
    XXX-XXX-XXXX
    XXX.XXX.XXXX
    XXX XXX XXXX*/
    let phoneNo = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    if (inputTelNo.value.match(phoneNo)) {
        return true;
    }
    else if (inputTelNo.value ===null){
        alert("Phone Number Can Not Be Empty!");
        return false;
    }
    else {
        alert("Wrong Phone Number Format!");
        return false;
    }
}