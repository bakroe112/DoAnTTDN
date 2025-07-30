import React from 'react'
import ClientHeader from './header'
import { Outlet } from 'react-router-dom'
import { ClientFooter } from './footer'

export const ClientLayout = () => {
  return (
    <>
      <ClientHeader/>
      <Outlet/>
      <ClientFooter/>
    </>
  )
}

