// import Feedback1 from "../assets/Feedback illustratin 1@2x.png"
// import Feedback2 from "../assets/feedbackBlueContainer.png"
// import Feedback3 from "../assets/Tell Me a Secret 1@2x.png"
import "../Styles/feedback.css"
import blueContainer from "../assets/feedbackBlueContainer.png"
import tellSecret from "../assets/secret.png"
import feedbackdes from "../assets/feedbackdes.png"

const Feedback = () => {
  return (

    <main className="feedbackMain">
      <section className="designContainer">
        <img className="feedbackImg1" src={ blueContainer } alt="" />
        <img className="tellSecret" src={ tellSecret } alt="" />
        <img className="feedbackdes" src={ feedbackdes } alt="" />
      </section>
      <section className="inputContainer">
        <div className="feedbackInput">
          <form className="feedbackform" onSubmit={(e) => {e.preventDefault()}}>
            <label className="command">Drop us your feedback</label>
            <textarea name="feedback_input" id="feedback_input"></textarea>
            <div className="options">
              <button className="reset">Reset</button>
              <button className="submit">Submit</button>
              </div>
          </form>
          <form className="feedbackform" onSubmit={(e) => {e.preventDefault()}}>
            <label className="command">Drop us your feedback</label>
            <input id="feedback_star_input"/>
            <div className="options">
              <button className="reset">Reset</button>
              <button className="submit">Submit</button>
              </div>
          </form>
        </div>
      </section>  
   
    </main>
  )
}

export default Feedback