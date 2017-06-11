  -- @Date:   2017-06-11T12:15:17+02:00
  -- @Project: FiveM Tools
-- @Last modified time: 2017-06-11T18:02:32+02:00
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
        { text = "No closable menu", menu = "ft_menuNoClosable" },
        { text = "Left top", menu = "ft_menuLeftTop" },
        { text = "left center", menu = "ft_menuLeftCenter" },
        { text = "Right top menu", menu = "ft_menuRigthTop" },
        { text = "Center center menu", menu = "ft_menuCenterCenter" },
        { text = "Center top menu", menu = "ft_menuCenterTop" },
        { text = "Open dynamic menu", callback = dynamicMenu },
        { text = "Freeze Menu Client", callback = freezeMenu, freeze = true },
        { text = "Freeze Menu Server", eventServer = "ft_menuExemple:SvFreeze", freeze = true },
        { text = "Close menu", close = true },
      },

    },

    ft_menuNoClosable = {

      settings = {
        title = "title",
        menuTitle = "default menu",
        red = 33,
        blue = 33,
        green = 33,
        back = CallbackBack,
        closable = false,
      },

      buttons = {
        { text = "Button", subText = "1" },
        { text = "Back menu", back = true },
      },

    },

    ft_menuLeftTop = {

        settings = {
          title = "title",
          menuTitle = "Left top menu",
          top = true,
          left = true,
        },

        buttons = {
          { text = "Back menu", back = true },
        },
    },

      ft_menuLeftCenter = {

        settings = {
          title = "title",
          menuTitle = "Left center menu",
          left = true,
        },

        buttons = {
          { text = "Back menu", back = true },
        },

      },

      ft_menuRigthTop = {

          settings = {
            title = "title",
            menuTitle = "Right top menu",
            top = true,
          },

          buttons = {
            { text = "Back menu", back = true },
          },

      },

      ft_menuCenterCenter = {

          settings = {
            title = "title",
            menuTitle = "Center Center menu",
            center = true,
          },

          buttons = {
            { text = "Back menu", back = true },
          },

      },

      ft_menuCenterTop = {

          settings = {
            title = "title",
            menuTitle = "Center Top menu",
            center = true,
            top = true,
          },

          buttons = {
            { text = "Back menu", back = true },
          },

      },

  }
