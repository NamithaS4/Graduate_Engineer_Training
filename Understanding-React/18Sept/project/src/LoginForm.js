import React, { useState, useEffect } from "react";

function LoginFormWithEffect() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [loggedIn, setLoggedIn] = useState(false);
  const [suggestions, setSuggestions] = useState([]);

  // Predefined usernames (mock DB)
  const users = ["alice", "alex", "albert", "bob", "bobby", "carol", "charlie", "namii", "koushi", "rakesh"];

  // useEffect → filter suggestions whenever username changes
  useEffect(() => {
    if (username.trim() === "") {
      setSuggestions([]);
      return;
    }

    // Filter users that start with what the user typed
    const filtered = users.filter((u) =>
      u.toLowerCase().startsWith(username.toLowerCase())
    );
    setSuggestions(filtered);
  }, [username]); // runs when username changes

  // 🔹 handle submit
  const handleSubmit = (e) => {
    e.preventDefault();
    if (username === "alice" && password === "12345") {
      setLoggedIn(true);
    } else {
      alert("❌ Invalid credentials!");
    }
  };

  // 🔹 effect when loggedIn changes
  useEffect(() => {
    if (loggedIn) {
      alert(`✅ Welcome ${username}!`);
    }
  }, [loggedIn]);

  return (
    <div style={{ maxWidth: "300px", margin: "auto", marginTop: "50px" }}>
      <h2>Login (with Suggestions & useEffect)</h2>
      <form onSubmit={handleSubmit}>
        {/* Username input */}
        <div>
          <label>Username:</label><br />
          <input
            type="text"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            required
          />
        </div>

        {/* Suggestions box */}
        {suggestions.length > 0 && (
          <ul style={{ listStyle: "none", padding: 0, marginTop: "10px" }}>
            {suggestions.map((s, index) => {
              // make size depend on match length
              const size = username.length * 2 + 12; // dynamic font size
              return (
                <li
                  key={index}
                  style={{
                    fontSize: `${size}px`,
                    cursor: "pointer",
                    transition: "all 0.2s ease-in-out",
                  }}
                  onClick={() => setUsername(s)} // click to autofill
                >
                  {s}
                </li>
              );
            })}
          </ul>
        )}

        {/* Password input */}
        <div style={{ marginTop: "10px" }}>
          <label>Password:</label><br />
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>

        {/* Submit button */}
        <button type="submit" style={{ marginTop: "15px" }}>
          Login
        </button>
      </form>
    </div>
  );
}

export default LoginFormWithEffect;
