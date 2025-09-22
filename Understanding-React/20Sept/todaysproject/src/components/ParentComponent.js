function Siblings2({setCount}) {
  console.log("Siblings2 rendered");
  return (
    <div>
      <h2>Siblings2 Component</h2>
      <button onClick={() => setCount((c) => c + 1)}>Increment Count</button>
    </div>
  );
}

export default Siblings2;
