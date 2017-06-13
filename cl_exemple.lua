-- @Date:   2017-06-11T13:20:38+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-13T11:22:35+02:00
-- @License: GNU General Public License v3.0

function callbackExemple(data)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString("Callback Exemple")
    DrawNotification(false, false)

  end)
end

function freezeMenu(data)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString("Freeze Menu")
    DrawNotification(false, false)

    exports.ft_menuBuilder:Freeze(true)
    Citizen.Wait(1000)

    SetNotificationTextEntry('STRING')
    AddTextComponentString("UnFreeze Menu")
    DrawNotification(false, false)

    exports.ft_menuBuilder:Freeze(false)

  end)
end

function CallbackBack(data)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString("Back Exemple")
    DrawNotification(false, false)

  end)
end

function dynamicMenu(data)
  Citizen.CreateThread(function()

    local rand = math.random(100)

    local settings = {
      title = "Dynamic menu",
      menuTitle = "Random menu",
    }

    local buttons = {}

    for i=1, rand do
      table.insert(buttons, { text = "Button", subText = i } )
    end

    exports.ft_menuBuilder:Add("ft_dynamicMenu", buttons, settings)
    exports.ft_menuBuilder:Next("ft_dynamicMenu")

  end)
end

RegisterNetEvent('ft_menuExemple:ClExemple')
AddEventHandler('ft_menuExemple:ClExemple', function(data)
  Citizen.CreateThread(function()

    SetNotificationTextEntry('STRING')
    AddTextComponentString("Event Exemple")
    DrawNotification(false, false)

  end)
end)
