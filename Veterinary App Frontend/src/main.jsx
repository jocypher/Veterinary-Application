import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import '../src/Views/Components/Sidebar.jsx'
import '../src/Views/Components/Navigation.jsx'
import '../src/Views/Components/Recents.jsx'
import Past from './Past.jsx'
import Book from './Books.jsx'
import Slide from './Views/Slide.jsx'
import Slides from './Styles/Slides.jsx'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <Slide/>
  </React.StrictMode>
)