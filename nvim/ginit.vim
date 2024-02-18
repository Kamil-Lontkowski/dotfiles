set mouse=a

if exists('GuiFont')
    GuiFont! JetBrainsMono NF:h12
endif

if exists('GuiScrollBar')
    GuiScrollBar 1
endif

if exists('g:GuiLoaded')
  GuiTabline 0
  GuiPopupmenu 0
endif
