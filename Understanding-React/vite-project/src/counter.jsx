export function Counter(){
    let count = 0;
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