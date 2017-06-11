-- @Date:   2017-06-11T12:15:17+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T14:32:01+02:00
-- @License: GNU General Public License v3.0

menu = {

  ft_menuOne = {

    settings = {
      title = "Menu title",
      menuTitle = "Menu",
    },

    buttons = {
      { text = "Callback", callback = callbackExemple, data = { text = "text" } },
      { text = "Client Event", eventClient = "ft_menuExemple:ClExemple", data = { text = "text" } },
      { text = "Server Event", eventServer = "ft_menuExemple:SvExemple", data = { text = "text" } },
      { text = "Open menu", menu = "ft_menuTow" },
      { text = "Open dynamic menu", callback = dynamicMenu },
      { text = "Close menu", close = true },
    },

  },

  ft_menuTow = {

    settings = {
      menuTitle = "Sub menu",
      red = 33,
      blue = 33,
      green = 33,
      back = CallbackBack,
      closable = false,
    },

    buttons = {
      { text = "Button", subText = "1" },
      { text = "Button", subText = "2" },
      { text = "Back menu", back = true },
    },

  },

}
