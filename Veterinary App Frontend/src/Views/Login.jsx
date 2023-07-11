import img1 from "../assets/loginImg1.png"
import img2 from "../assets/loginImg2.png"
import img3 from "../assets/loginImg3.png"
import "../Styles/login.css"
const Login = () => {
  return (
    <main>
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

    <section>
    <h1 className="welcome">Welcome</h1>
    <input type="text" id="studentid" value="Student ID"/><br />
    <input type="text" id="pin" value="PIN"/><br/>
    <input type="submit" id="login" value="Login"/>
    </section>
    </main>

    
  )
}

export default Login