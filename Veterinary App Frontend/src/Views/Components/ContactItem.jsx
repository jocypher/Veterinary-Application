import "../../Styles/contactItem.css"

const ContactItem = ({name,location,office,email}) => {
  return (
    <>
    <ul className="contact">
      <li className="contact_name">{name}</li>
      <li className="contact_location">{location}</li>
      <li className="contact_office">{office}</li>
      <div className="email_list">
      <li className="contact_email">email: <a href="/" className="email">{email}</a></li>
      </div>
    </ul>
    </>
  )
}

export default ContactItem