-- @Date:   2017-06-11T12:18:01+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-13T11:22:56+02:00
-- @License: GNU General Public License v3.0

function wait(seconds)
	local _start = os.time()
	local _end = _start+seconds
	while (_end ~= os.time()) do
	end
end

RegisterServerEvent('ft_menuExemple:SvExemple')
AddEventHandler('ft_menuExemple:SvExemple', function(data)

  print("[ft_menuExemple] Exemple menu")

end)

RegisterServerEvent('ft_menuExemple:SvFreeze')
AddEventHandler('ft_menuExemple:SvFreeze', function()

  print("[ft_menuExemple] FreezeMenu")
  wait(1)

  print("[ft_menuExemple] UnFreezeMenu")
  TriggerClientEvent("ft_menuBuilder:ClFreeze", source, false)

end)
