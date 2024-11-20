library(hexSticker)


#### Pour enlever le fond d'une image
# https://www.remove.bg/fr


# Create the sticker
sticker(
  subplot = "inst/image.png",
  filename = "inst/logo.png",  # Output file name
  #img = "C:/Users/MARTHINETEX/Documents/02 - Code/logo.png",     # Path to your background image
  package = "anageR",                 # Package name
  p_size = 24,
  p_y = 1,
  p_x = 1.33,# Text size
  s_x = 0.5,                            # X position of the image
  s_y = 1,                         # Y position of the image
  s_width = 0.35,                      # Width of the image
  h_fill = "#FFFFFF",                 # Background color
  h_color = "#201A1C",                # Hex border color
  p_color = "#201A1C",                # Package name color
  layout = "straight",                # Text layout
  text_y = 1.2                       # Y position of the text
)
