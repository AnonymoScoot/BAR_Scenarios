if not gadgetHandler:IsSyncedCode() then
    Spring.Echo("Gadget: "..gadget:GetInfo().name.." is unsynced")
	return
end

local objectiveUnits = {
    [1] = {
    {name = 'mission_command_tower', x = 5380, y = 16, z = 2885, rot = 0, team = 0, queue = {}, objectiveUnitID = 2},
    --{name = 'mission_command_tower', x = 932, y = 34, z = 491, rot = 0, teamID = 0, queue = {}, objectiveUnitID = 3},
    },
}

function gadget:UnitDestroyed(unitID, unitDefID, unitTeamID, attackerID)
  Spring.Echo("Unit "..unitID.." from team "..unitTeamID.." just got destroyed by enemy unit "..attackerID)
end

function gadget:GameFrame(frameNum)
    local n = frameNum
    if n == 1 then
        Spring.Echo("Frame "..n)
    end
end