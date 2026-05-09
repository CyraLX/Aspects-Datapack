# Get ID for Bossbar
function aspectlib:expose/player/id
# Create the bossbar
function aspects:aspect_group/hydrophobic/logic/bossbar/create with storage aspectlib:cache temp
# Set the value of the Bossbar
function aspects:aspect_group/hydrophobic/logic/bossbar/set_value with storage aspectlib:cache temp
