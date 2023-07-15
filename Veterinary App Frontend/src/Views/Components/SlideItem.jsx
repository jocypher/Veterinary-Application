import React from "react"
import "../../Styles/slideItem.css"
const SlideItem = ({title, Session, Slides}) => {
  return (
    <>
    <ul className="slides">
      <li className="slides_items">{title}</li>
      <li className="slides_items">{Session}</li>
      <li className="slides_items">{Slides}</li>
    </ul>
    </>
  )
}

export default SlideItem