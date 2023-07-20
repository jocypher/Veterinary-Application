import '../../Styles/Sidebar.css'
import { Link } from 'react-router-dom';

const Sidebar = () => {
  return (
    <>
    <div className="sidebar">
      <h2>Side menu</h2>
      <ul className="menu-list">
        <li><Link to="/home" className='list-name'>Dictionary</Link></li>
        <li><Link to="/home" className='list-name'>Ug Library</Link></li>
        <li><Link to="/events" className='list-name'>Events</Link></li>
        <li><Link to="/faq" className='list-name'>FAQ</Link></li>
        <li><Link to="/feedback" className='list-name'>Feedback</Link></li>
        <li><Link to="/contacts" className='list-name'>Contact</Link></li>
        <li><Link to="/home" className='list-name'>Upload</Link></li>
      </ul>
      <div className="menu-log">
        <a href="/" className='list-log'>Log Out</a>
      </div>
    </div>
    </>
  )
}

export default Sidebar