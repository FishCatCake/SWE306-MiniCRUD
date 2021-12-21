function validateForm(){
    let Q1 = document.getElementsByName("q1");
    let Q2 = document.getElementsByName("q2");
    let Q3 = document.getElementsByName("q3");
    let Q4 = document.getElementsByName("q4");
    let Q5 = document.getElementsByName("q5");
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