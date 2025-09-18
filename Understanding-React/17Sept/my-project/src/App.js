import logo from './logo.svg';
import './App.css';
import EventComponent from './EventComponent';
import LoginComponent from './LoginComponent';
function App() {
  return (
    <div>
      <p>
        <LoginComponent/>
        <EventComponent/>
      </p>
    </div>
  );
}

export default App;
