import { use, useState } from "react";

function LoginComponent() {
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

        alert("button clicked");

    }
    return (
        <div>
            <input type='text' placeholder='username' value={username} onChange={(e)=>{setusername(e.target.value)}}></input>
            <input type='password' placeholder='password' value={password} onChange={(e)=>{setpassword(e.target.value)}}></input>
            <button onClick={()=>{onLoginHandler()}}>Login</button>
        </div>
    );
}
export default LoginComponent;