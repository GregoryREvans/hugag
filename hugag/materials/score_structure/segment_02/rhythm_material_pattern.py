from hugag.materials.rhythm import (
    rhythm_handler_one,
    rhythm_handler_two,
    silence_handler,
)

rhythm_material_list = [
    rhythm_handler_one, # voice 1
    silence_handler,
    silence_handler, # voice 2
    silence_handler, # voice 3
    rhythm_handler_one, # voice 4
    silence_handler, # voice 5
    silence_handler,
]
