local status = nil
local isStoped = false

function GetMinimapAnchor()
    -- Safezone goes from 1.0 (no gap) to 0.9 (5% gap (1/20))
    -- 0.05 * ((safezone - 0.9) * 10)
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.height = yscale * (res_y / 5.674)
    Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    Minimap.top_y = Minimap.bottom_y - Minimap.height
    Minimap.x = Minimap.left_x
    Minimap.y = Minimap.top_y
    Minimap.xunit = xscale
    Minimap.yunit = yscale
    return Minimap
end

Citizen.CreateThread(function()
    while true do

        Citizen.Wait(100)
        
        SendNUIMessage({
            show = isStoped,
            health = (GetEntityHealth(GetPlayerPed(-1))-100),
            armor = GetPedArmour(GetPlayerPed(-1)),
            stamina = 100-GetPlayerSprintStaminaRemaining(PlayerId()),
            st = status,
            width = GetMinimapAnchor().width,
            position = 1.0 - GetSafeZoneSize()
        })

        -- if IsControlJustPressed(0, 19) then
		-- 	isStoped = true
		-- end
		
		-- if IsControlJustReleased(0, 19) then
		-- 	isStoped = false
		-- end

    end
end)

RegisterNetEvent('esx_customui:setStatus')
AddEventHandler('esx_customui:setStatus', function(status)
    isStoped = status

end)

RegisterNetEvent('esx_customui:updateStatus')
AddEventHandler('esx_customui:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        st = Status,
    })
end)