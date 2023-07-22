import "../Styles/contact.css"
import ContactItem from "./Components/ContactItem"
import Navigation from "./Components/Navigation"
import Sidebar from "./Components/Sidebar"

const Contact = () => {
  return (
    <>
    <Navigation id="10950660"/>
    <main className="contact_main">
      <aside><Sidebar/></aside>
      <nav>
        <div className="contact_holder">
          <h1 className="Contact_header">Contacts</h1>
          <div className="contactitem">
    <ContactItem name="Mr. Jo" location='Economics Department' office="Friday 6:00pm" email="jo@gmail.com"/>
    <ContactItem name="Dr. Eric Akobeng" location='Chemistry Department' office="Monday 2pm" email="eakobeng@gmail.com"/>
    <ContactItem name="Dr. James Gordon" location='Pyschology Department' office="Monday 1pm" email="jgorden@gmail.com"/>
    <ContactItem name="Dr. CHris Evans" location='Soil Department' office="1:30pm" email="cevans@gmail.com"/>
    <ContactItem name="Mr. Mark Attah Mensah" location='Biology Department' office="3:30pm" email="mamensah@gmail.com"/>
    <ContactItem name="Dr. Nemo" location='d11' office="9am" email="nemo@gmail.com"/>
    </div>
    </div>
    </nav>
    </main>
    </>
  )
}

export default Contact