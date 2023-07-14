import React from "react"
import PastQuestionItem from "./Components/PastQuestionItem"
import "../../Styles/pastquestions.css"
import Navigation from "./Components/Navigation"
const Mainpast = () => {
    return (
      <>
      <header><Navigation id="10952541"/></header>
      <div className="past_main">
      <h1>Past Questions</h1>
      <ul className="main_type">
          <li className="past_name">Title</li>
          <li className="past_name">Year</li>
      </ul>
      <div className="past_container">
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      <PastQuestionItem title="Introduction to computer organization" year="2017"/>
      </div>
      </div>
      </>
    )
  }
  
  export default Mainpast