import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import '../src/Views/Components/Sidebar.jsx'
import '../src/Views/Components/Navigation.jsx'
import '../src/Views/Components/Recents.jsx'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)

const menu = document.querySelector("#mobile-menu");
const menuLinks = document.querySelector('.sidebar');

menu.addEventListener('click', function(){
       menu.classList.toggle('is-active');
       menuLinks.classList.toggle('active');
})
