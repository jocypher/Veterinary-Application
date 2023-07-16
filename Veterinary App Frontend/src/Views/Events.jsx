
import "../Styles/event.css"
import EventItem from "./Components/EventItem"
import Sidebar from "./Components/Sidebar"
import Navigation from "./Components/Navigation"
const Event = () => {
  
  return (
    <>
    <div className="body">
    <Navigation id="10952541" update="There will be exams on 5th July"/>
    <main className="eventsMain">
      <aside><Sidebar/></aside>
      <nav>
      <div className="events_main">
      <h1>Events</h1>
      <ul className="Events_type">
          <li className="Events_name">Event</li>
          <li className="Events_name">Date</li>
      </ul>
      <div className="events_container">
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      <EventItem Event="Assignment don post finish" Date="08/05/2023"/>
      </div>
      </div>
      </nav>
      </main>
      </div>
    </>
  )
}

export default Event
