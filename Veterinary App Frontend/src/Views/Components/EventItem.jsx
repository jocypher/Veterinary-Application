import "../../Styles/eventItem.css"

const Events = ({Event, Date}) => {
  return (
    <main className="events">
      <ul className="events_items">
        <li className="events_items_l">{Event}</li>
        <li className="events_items_l">{Date}</li>
      </ul>
    </main>
  )
}

export default Events