#
# This file is only needed for Compass/Sass integration.
#

# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the FireSass-compatible debug_info.
firesass = false
#firesass = true

# Require any additional compass plugins installed on your system.
#require 'singularitygs'

# Location of the resources.
css_dir         = "assets/css"
sass_dir        = "assets/scss"
#extensions_dir  = "assets/sass-extensions"
images_dir      = "assets/images"
javascripts_dir = "assets/js"

# Increase the number of decimal places to get more precide percentages
Sass::Script::Number.precision = 10

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed

# To enable relative paths to assets via compass helper functions.
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}