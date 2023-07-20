import './App.css'
import Events from './Views/Events'
import Slide from './Views/Slide'
import Contact from './Views/Contact'
import Book from './Views/Book'
import PastQuestion from './Views/PastQuestions'
import Login from './Views/Login'
import Feedback from './Views/Feedback'
import Faq from './Views/Faq'
import News from './Views/News'
import Home from "./Views/Home/Home"
import { Routes, Route } from 'react-router-dom';

function App() {
  return (
    <>
    {/* <News title="Cure for animal cancer that kills animals discovered!" source="vmedinews.com"/> */}
    {/* <Navigation id="10950660"/> */}
    {/* <Contact/> */}
    {/* <News/> */}
    <Routes>
      <Route path="/" element={<Login/>}/>
      <Route path="/home" element={<Home/>}/>
      <Route path="/slides" element={<Slide/>}/>
      <Route path="/books" element={<Book/>}/>
      <Route path="/pastquestions" element={<PastQuestion/>}/>
      <Route path="/news" element={<News/>}/>
      <Route path="/contacts" element={<Contact/>}/>
      <Route path="/feedback" element={<Feedback/>}/>
      <Route path="/events" element={<Events/>}/>
      <Route path="/faq" element={<Faq/>}/>
    </Routes>
    </>
    )
}
export default App
