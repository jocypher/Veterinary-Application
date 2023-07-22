
import "../Styles/event.css"
import EventItem from "./Components/EventItem"
import Sidebar from "./Components/Sidebar"
import Navigation from "./Components/Navigation"
const Events = () => {
  
  return (
    <>
    <div className="eventsBody">
    <Navigation id="10952541" update="There will be exams on 5th July"/>
    <main className="eventsMain">
      <aside className="eventsAside"><Sidebar/></aside>
      <nav className="eventsNav">
      <div className="events_main">
      <h1>Events</h1>
      <ul className="events_type">
          <li className="Events_name">Event</li>
          <li className="Events_name">Date</li>
      </ul>
      <div className="events_container">
      <EventItem Event="School of veterinary culture day" Date="08/05/2023"/>
      <EventItem Event="" Date="08/05/2023"/>
      <EventItem Event="Teaching begins" Date="08/06/2023"/>
      <EventItem Event="Registration for resit exams" Date="09/05/2023"/>
      <EventItem Event="Course registration deadline" Date="18/05/2023"/>
      <EventItem Event="Interim Assessment" Date="18/06/2023"/>
      <EventItem Event="Course Evaluation" Date="28/05/2023"/>
      <EventItem Event="Teaching Ends" Date="15/07/2023"/>
      <EventItem Event="End of semester Exams" Date="23/07/2023"/>
      <EventItem Event="World Health registration" Date="27/07/2023"/>
      </div>
      </div>
      </nav>
      </main>
      </div>
    </>
  )
}

export default Events
