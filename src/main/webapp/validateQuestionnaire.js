function validate(){
    let Q1 = document.getElementsByName("test");
    let Q2 = document.getElementsByName("vaccine");
    let Q3 = document.getElementsByName("symptom");
    let Q4 = document.getElementsByName("cluster");
    let Q5 = document.getElementsByName("closeContact");
    let status = 0;
    for(let temp in Q1)
    {
        if(Q1[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The choice of Question 1 cannot be Empty!");
        return false;
    }
    status=0;

    for(let temp in Q2)
    {
        if(Q2[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The choice of Question 2 cannot be Empty!");
        return false;
    }
    status=0;

    for(let temp in Q3)
    {
        if(Q3[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The choice of Question 3 cannot be Empty!");
        return false;
    }
    status=0;

    for(let temp in Q4)
    {
        if(Q4[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The choice of Question 4 cannot be Empty!");
        return false;
    }
    status=0;

    for(let temp in Q5)
    {
        if(Q5[temp].checked)
        {
            status = 1;
        }
    }
    if(status===0)
    {
        alert("The choice of Question 5 cannot be Empty!");
        return false;
    }
    return true;
}