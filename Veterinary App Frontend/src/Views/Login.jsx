import img1 from "../assets/loginImg1.png"
import img2 from "../assets/loginImg2.png"
import img3 from "../assets/loginImg3.png"
import "../Styles/login.css"
const Login = () => {
  return (
    <main className="loginContainer">
    <section>
    <div className="pd">Pd <strong> VetMed</strong></div>
    <div className="images">
    <img src={img2} alt="Image1" />
    <img src={img3} alt="Image2" />
    <img src={img1} alt="Image3" />
    </div>
    <div>
      <p>The University of Ghana Veterinary Students <br />Resource Application</p>
    </div>
    </section>

    <section className="section2">
    <h1 className="welcome">Welcome!</h1>
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
      <input type="Submit" id="submit_button" value="Login"/>
    </form>
    </section>
    </main>

    
  )
}

export default Login