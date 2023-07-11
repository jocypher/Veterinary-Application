// import Feedback1 from "../assets/Feedback illustratin 1@2x.png"
// import Feedback2 from "../assets/feedbackBlueContainer.png"
// import Feedback3 from "../assets/Tell Me a Secret 1@2x.png"
import "../Styles/feedback.css"
const Feedback = () => {
  return (

    <main>
      <section>
        {/* <img src={Feedback1} alt="Feedback" /> */}
      </section>
      <section>
        <h1>Drop us your feedback</h1>
        <form action="/">
          <textarea name="TextBox" id="TextBox" cols="10" rows="5"placeholder="Feel free to say anything about our app!"></textarea>
          <div>
            <input type="submit" id="feedback_submit" value="Submit"/>
            <input type="Reset" name="Reset" id="reset" />
          </div>
        </form>
      </section>
    </main>
  )
}

export default Feedback