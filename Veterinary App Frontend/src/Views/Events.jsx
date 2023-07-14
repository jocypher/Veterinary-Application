import React from "react"
import "../../Styles/eventItem.css"
import Events from "./Components/EventItem"
import Sidebar from "./Components/Sidebar"
import Navigation from "./Components/Navigation"
const EventItem = () => {
  return (
    <>
    <div className="body">
    <header>
      <Navigation id="10952541" update="There will be exams on 5th July"/>
    </header>
    <main>
      <aside><Sidebar/></aside>
      <nav>
    <div className="events_main">
      <h1>Events</h1>
      <ul className="Events_type">
          <li className="Events_name">Event</li>
          <li className="Events_name">Date</li>
      </ul>
      <div className="events_container">
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      <Events Event="Assignment don post finish" Date="08/05/2023"/>
      </div>
      </div>
      </nav>
      </main>
      </div>
    </>
  )
}

export default EventItem