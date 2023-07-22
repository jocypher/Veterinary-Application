import PastQuestionItem from "./Components/PastQuestionItem"
import "../Styles/pastquestions.css"
import Navigation from "./Components/Navigation"
const Mainpast = () => {
    return (
      <main className="pasco">
      <header><Navigation id="10952541"/></header>
      <div className="past_main">
      <div className="pastmain_container">
      <h1>Past Questions</h1>
      <ul className="main_type">
          <li className="past_name">Title</li>
          <li className="past_name">Year</li>
      </ul>
      <div className="past_container">
      <PastQuestionItem title="Vertinarian Introduction" year="2016"/>
      <PastQuestionItem title="Nature of Work" year="2017"/>
      <PastQuestionItem title="Working conditions" year="2016"/>
      <PastQuestionItem title="Training, Qualifications and Advancement" year="2015"/>
      <PastQuestionItem title="Job Outlook/ Employment" year="2021"/>
      <PastQuestionItem title="Electrocardiography of the Dog and Cat, Diagnosis of Arrhythmias" year="2019"/>
      <PastQuestionItem title="Miller and Evans'\ Anatomy of the Dog" year="2022"/>
      <PastQuestionItem title="Essentials of Small Animal Anesthesia and Analgesia" year="2023"/>
      <PastQuestionItem title="Manual of Canine and Feline Cardiology" year="2019"/>
      </div>
      </div>
      </div>
      </main>
    )
  }
  
  export default Mainpast