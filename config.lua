local blips = {
      {title="BLIPNAME", colour=0, id=498, x = 0, y = 0, z = 0},
  }


Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
      
    end
end)
