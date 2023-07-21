import img1 from "../assets/loginImg1.png"
import img2 from "../assets/loginImg2.png"
import img3 from "../assets/loginImg3.png"
import "../Styles/login.css"
import { useNavigate } from "react-router-dom"

const Login = () => {
  const navigate = useNavigate();
  return (
    <main className="loginContainer">
    <section className="loginSection1">
    <h1 className="pd">Pd <strong> VetMed</strong></h1>
    <div className="vetImages">
    <img src={img2} alt="Image1" className="loginimg1"/>
    <img src={img3} alt="Image2" className="loginimg2"/>
    <img src={img1} alt="Image3" className="loginimg3"/>
    </div>
      <p className="loginMessage">The University of Ghana Veterinary Students <br />Resource Application</p>
    </section>

    <section className="section2">
    <h1 className="loginWelcome">Welcome!</h1>
    <form action="/">
      <div className="input_container">
        <div className="input_id">
          <label htmlFor="id" id="student_id">Student ID</label>
          <input type="text" name="id" id="std_id" required/><br/>
        </div>
        <div className="input_pin"> 
          <label htmlFor="pin" id="student_pin">PIN</label>
          <input type="password" name="pin" id="std_pin" required />
        </div>
      </div>
      <button type="submit" id="submit_button" onClick={(e) => {e.preventDefault(); navigate('/home')}}>Login</button>
    </form>
    </section>
    </main>

    
  )
}

export default Login