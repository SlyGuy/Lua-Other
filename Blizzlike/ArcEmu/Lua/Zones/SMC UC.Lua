--[[ SMC UC.lua - Author: Shorts
********************************
*                                                            *
* The LUA++ Scripting Project        *
*                                                            *
********************************

This software is provided as free and open source by the
staff of The LUA++ Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- LUA++ staff, March 26, 2008. ]]


--[[ Silvermoon -> Undercity Translocate Orb Script]]--

function SMCUC_Orb(pGameObject, event, pMisc)
    pMisc:Teleport(0, 1805.70, 323.19, 71.0)
end

RegisterGameObjectEvent(184502, 2, "SMCUC_Orb")