import { type } from '@testing-library/user-event/dist/type';
import React, { useReducer, useState } from 'react';
import { useNavigate } from 'react-router-dom';


export default function Login()
{
    const init ={

        email:"",
        password:""

    }

    const reducer = (state , action)=>{
        switch(action.type)
        {
            case 'update':
               return {...state , [action.fld]:action.val}
           
            case 'reset':
               return init;
        }
    }

  const[info,dispatch]=useReducer(reducer,init);
  const[msg,setMsg]=useState("");
  const navigate=useNavigate();

  const sendData=(e)=>
  {
    e.preventDefault();
    const reqOptions={
        method:"POST",
        headers:{'content-type':'application/json'},
        body:JSON.stringify(info)
    }
    fetch("http://localhost:8080/checklogin",reqOptions)
    .then(resp=>resp.text())
    .then(text=>text.length ? JSON.parse(text):{})
    .then(obj=>{

        if(Object.keys(obj).length===0)
        {
            setMsg("Wrong email or password");
        }
        else
        {
            if(obj.staus_id === false  )
            {
                alert("Request has not been approved")
            }
            else{
                if(obj.role.id === 302) //302 user  // 301 dealer
                {
                    navigate("/user");
                }
                else if(obj.role.id === 301)
                {
                    navigate("/dealer");
                }
                else if(obj.role.id === 303)
                {
                    navigate("/admin");
                }


            }

        }
             })
  }


    return (
 
        <div>
            <div class="col-5">
        <form class = 'card p-3 bg-light'>


<div class="col-md-5">
<label htmlFor='Email' class="form-label" >Email</label>
 <input type="email" class="form-control" id="email" name='email' value={info.email}
 onChange={(e)=>{dispatch({type:'update',fld:'email',val:e.target.value})}}/>
</div>

<div class="col-md-5">
 <label htmlFor='Paassword' class="form-label" >Password</label>
 <input type="password" class="form-control" name="password" id="Password"  value={info.password}
  onChange={(e)=>{dispatch({type:'update',fld:'password',val:e.target.value})}}
 />
</div>

<div >
 <button type="submit" class="btn btn-primary mb-3" onClick={(e)=>{sendData(e)}} >Login</button>
 <button type='reset' class="btn btn-primary mb-3" onClick={()=>{dispatch({type:'reset'})}} > reset</button>
</div>
</form>
</div>


<p>{JSON.stringify(info)}</p>
<p>{msg}</p>
        </div>



    );
}