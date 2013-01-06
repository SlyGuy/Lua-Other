--[[
-- Copyright (C) 2007 - 2008 LUAScripts <http://mmoforge.org/svn/luascripts>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
]]--


--[[ QUEST: The Balance of Nature ]]--
function TheBalanceOfNature_Quest_onAccept (pUnit, Event)
	pUnit:Emote(2);
end
RegisterQuestEvent (456, 2, "TheBalanceOfNature_Quest_onAccept")

function TheBalanceOfNature2_Quest_onAccept (pUnit, Event)
	pUnit:Emote(2);
end
RegisterQuestEvent (457, 2, "TheBalanceOfNature2_Quest_onAccept")


--[[ QUEST: Seek Redemption ]]--
function SeekRedemption_transf(pUnit)
	pUnit:SetModel(901);
end

function SeekRedemption_normal(pUnit)
	pUnit:SetModel(10035);
end

function SeekRedemption_Quest_onComplete (pUnit, Event)
	pUnit:SendChatMessage(11, 1, "Ribbit! No!! This cannot...ribbit...be! You have duped me with...ribbit...your foul trickery! Ribbit!")
	pUnit:RegisterEvent("SeekRedemption_transf",4000,0)
	pUnit:RegisterEvent("SeekRedemption_normal",60000,0)
end
RegisterQuestEvent (489, 1, "SeekRedemption_Quest_onComplete")
