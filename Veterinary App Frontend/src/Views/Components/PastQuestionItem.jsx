import "../../Styles/PastQuestionItem.css"
const PastQuestionItem = ({title, year}) => {
  return (
    <>
    <ul className="past">
      <li className="past_items">{title}</li>
      <li className="past_items">{year}</li>
    </ul>
    </>
  )
}

export default PastQuestionItem