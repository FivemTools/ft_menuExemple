-- @Date:   2017-06-11T11:53:02+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-14T21:33:53+02:00
-- @License: GNU General Public License v3.0

local FirstJoinProper = false
-- Load client at 100%
Citizen.CreateThread(function()

  while true do
    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      if not FirstJoinProper then
          -- Send menu to Menu Generator
        exports.ft_menuBuilder:Generator(menu)
      end

      -- Press F1
      if IsControlJustPressed(1, 288) then
        if not exports.ft_menuBuilder:IsOpened() and GetLastInputMethod(2) then
          exports.ft_menuBuilder:Open("ft_menuOne")
        else
          exports.ft_menuBuilder:Close()
        end
      end

      FirstJoinProper = true
    end

  end
end)
