export function Counter(){
    let count = 0;
//    const add = (x,y) => x+y; Arrow function with concise body has implicit return
//    console.log(add(2,3));
//    const addmore = (x,y) => {
//     const sum = x+y;
//     return sum;
//    }; Arrow function with block body needs explicit return statement 

    // function greeting({name = 'Guest', age}){ // Destructuring with default value
    //     return <p>{name} is {age} years old</p>
    // }
    // const user = {name: 'Namitha', info: {city: 'New York'}}; // Nested object
    // // console.log(greeting(user));
    // const{name: userName = 'Aron', info: {city} = {}} = user; // Nested destructuring with default value
    // console.log(userName, city); // object destructuring extracting props from nested object

    // let a = 5, b = 10;
    // [a, b] = [b, a]; // Array destructuring to swap values
    // console.log(a, b); // 10 5
   
    //updates object immutably
    // const prev = {name: 'Namitha', age: 18};
    // const updated = {...prev, age: 19, state: 'AP'}; // Spread operator to update object immutably
    // console.log(prev, updated, updated.state);

    //Spread operator '...' -Array
    const arr1 = [1,2,3];
    const nextItem = 4;
    const arr2 = [...arr1, nextItem];
    console.log(arr1, arr2); // [1,2,3] [1,2,3,4]
    

    const increment = () => {
        count ++;
        document.getElementById('c4').innerText = count;
    }
    const decrement = () => {
        count --;
        document.getElementById('c4').innerText = count;
    }
    return(
    <><h1 id="c4">0</h1><button onClick={increment}>inc</button><button onClick={decrement}>dec</button></>
    )
}