import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
// import App from './App.jsx'
import ListaDeCompra from './ListaDeCompra';

createRoot(document.getElementById('root')).render(
  <ListaDeCompra/>
  // <StrictMode>
  //   <App />
  // </StrictMode>,
)
