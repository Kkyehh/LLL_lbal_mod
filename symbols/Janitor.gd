extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "janitor"
    self.value = 1
    self.values = [7]
    self.rarity = "common"
    self.groups = ["human", "organism", "doglikes"]
    self.sfx = ["farmer"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Janitor.png")
    self.name = "Janitor"
    self.description = "<color_E14A68>Destroys<end> adjacent <icon_banana_peel>. Gives <icon_coin><color_FBF236><value_1><end> for each <icon_banana_peel> <color_E14A68>destroyed<end>."
	
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("banana_peel").set_destroyed())
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_type("banana_peel").set_target(symbol).change_value_bonus(values[0]).animate("circle", 0, [symbol, i]))