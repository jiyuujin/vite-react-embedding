import React from 'react'
import { EmbedFlutter } from './components/EmbedFlutter'
import HelloWorld from './components/HelloWorld'

const App = () => {
  return (
    <>
      <img alt="React logo" src="@/assets/logo.png" />
      <EmbedFlutter />
      <HelloWorld msg="Hello React 16.13 + Vite" />
    </>
  )
}

export default App
