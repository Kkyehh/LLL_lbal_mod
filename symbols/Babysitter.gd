extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader

    self.id = "babysitter"
    self.value = 2
    self.values = [2]
    self.rarity = "rare"
    self.groups = ["human", "organism", "doglikes"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Babysitter.png")
    self.name = "Babysitter"
    self.description = "Adjacent <icon_toddler> give <color_E14A68>2x<end> more <icon_coin> and are considered adjacent to all symbols."
    #self.modifies_adjacent_adjacency = true
    
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("toddler").change_value_multiplier(values[0]).animate("bounce", 0, [symbol, i]))

"""func modify_adjacent_adjacency(currently_adjacent, symbol_grid):
    for i in currently_adjacent:
        if (symbol_type == "toddler"):
            return symbol_grid"""

#func modify_adjacent_adjacency(myself, grid_position, currently_adjacent, symbol_grid):