import { useState } from 'react';
function LoginFormComponent()
{
        const [username,setusername]=useState("")
        const [password,setpassword]=useState("")
      const onLoginHandler=()=>{
        if(username!=="username")
        {
            alert("invalid username")
            return;
        }

        if(password!=="password")
        {
            alert("invalid password")
            return;
        }

        alert("Login Successfull");

    }

    return(
        
        <form onSubmit={onLoginHandler}>
             <input type='text' placeholder='username' value={username} onChange={(e)=>{setusername(e.target.value)}}></input>
            <input type='password' placeholder='password' value={password} onChange={(e)=>{setpassword(e.target.value)}}></input>
            <button type="submit">Login</button>
            <button type="reset">Reset</button>
        </form>

    );
}
export default LoginFormComponent;