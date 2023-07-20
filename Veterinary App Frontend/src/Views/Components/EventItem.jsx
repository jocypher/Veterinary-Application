import "../../Styles/eventItem.css"


const EventItem = ({Event, Date}) => {
  return (
    <>
      <ul className="events_items">
        <li className="events_items_l">{Event}</li>
        <li className="events_items_l">{Date}</li>
      </ul>
    </>
  )
}

export default EventItem