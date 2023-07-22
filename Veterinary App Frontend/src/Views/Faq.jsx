import "../Styles/faq.css"
import Navigation from "./Components/Navigation"

const Faq = () => {
  return (
    <>
    <body className="faq_body">
    <Navigation id="10950660"/>
    <main className="faq_main">
      <h1 className="faq_name">Frequently Asked Question</h1>
      <section className="faq_quest">
        <div className="faq_container">
          <h3 className="faq_title">How do I request for an official transcript?</h3>
          <h4 className="question">When ordering online, you can place a hold on your official transcript until your degree is conferred but please be aware of the 30 day window. After 30 days, your order will be canceled. The registrar’s office recommends using the transcript request form to place orders for official transcripts with holds for degree conferral (or requests greater than 30 days)</h4>
        </div>
        <div className="faq_container">
          <h3 className="faq_title">What are core electives in third year?</h3>
          <p className="question">During the third year, students are required to take a minimum number of core elective credits in the fall and the spring</p>
        </div>
        <div className="faq_container">
          <h3 className="faq_title">How do I reset my password?</h3>
          <p className="question">To reset the password just click the the reset button to reset it</p>
        </div>
        <div className="faq_container">
          <h3 className="faq_title">How do I access my slides page?</h3>
          <p className="question">To access slides click on the home section and select the slide page on the home section</p>
        </div>
        <div className="faq_container">
          <h3 className="faq_title">How do I go to the news page?</h3>
          <p className="question">To access news click on the home section and select the slide page on the home section</p>
        </div>
      </section>
      <div className="btn">
      <button className="anything" type="button">Ask Anything</button>
      </div>
    </main>
    </body>
    </>
  )
}

export default Faq