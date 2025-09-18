
const dummyJason = {
    "firstName": "myFirstName",
    "lastName": "myLastName",
    "target":{
        "value":"ddd"
    }
};

function EventComponent(){
    const onChangeHandler = (myObject)=>(console.log(myObject.firstName));
    return(
       <div>
       <p>Welcome Namiii</p>

       <button onClick={()=>{console.log("button click")}}>click me</button>

       <div style={{background: 'red', padding: '50px'}}
       onMouseEnter={()=>{console.log("Mouse is entered")}}
       >
       This is div
       </div>

       <input type="number" min={1} max={10}></input>
       <input type="text" onChange={(e)=>{console.log(e.target.value)}}></input>
       <input type="text" onChange={(e)=>{EventHandler}}></input>
       </div>
    ); 
    };

export default EventComponent;
