# Base16 Styling Guidelines:

base00='#212121'   # - Default
base01='#303030' # - Lighter Background (Used for status bars)
base02='#353535' # - Selection Background
base03='#4A4A4A' # - Comments, Invisibles, Line Highlighting
base04='#B2CCD6' # - Dark Foreground (Used for status bars)
base05='#EEFFFF' # - Default Foreground, Caret, Delimiters, Operators
base06='#EEFFFF' # - Light Foreground (Not often used)
base07='#FFFFFF' # - Light Background (Not often used)
base08='#F07178' # - Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
base09='#F78C6C' # - Integers, Boolean, Constants, XML Attributes, Markup Link Url
base0A='#FFCB6B' # - Classes, Markup Bold, Search Text Background
base0B='#C3E88D' # - Strings, Inherited Class, Markup Code, Diff Inserted
base0C='#89DDFF' # - Support, Regular Expressions, Escape Characters, Markup Quotes
base0D='#82AAFF' # - Functions, Methods, Attribute IDs, Headings
base0E='#C792EA' # - Keywords, Storage, Selector, Markup Italic, Diff Changed
base0F='#FF5370' # - Deprecated, Opening/Closing Embedded Language Tags, e.g. <? php ?>

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# default statusbar colors
set-option -g status-style fg=$base02,bg=$base00,default

set-window-option -g window-status-style fg=$base03,bg=$base00
set-window-option -g window-status-format " #I #W"

# active window title colors
set-window-option -g window-status-current-style fg=$base0C,bg=$base00
set-window-option -g window-status-current-format " #I #[bold]#W"

# pane border colors
set-window-option -g pane-active-border-style fg=$base0C
set-window-option -g pane-border-style fg=$base03

# message text
set-option -g message-style bg=$base00,fg=$base0C

# pane number display
set-option -g display-panes-active-colour $base0C
set-option -g display-panes-colour $base01

# clock
set-window-option -g clock-mode-colour $base0C

tm_session_name="#[default,bg=$base00,fg=$base0E] #S "
set -g status-left "$tm_session_name"

tm_date="#[default,bg=$base00,fg=$base0C] %R"
tm_host="#[fg=$base0E,bg=$base00] #h "
set -g status-right "$tm_date $tm_host"
