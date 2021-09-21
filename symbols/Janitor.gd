extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "janitor"
    self.value = 1
    self.values = [8]
    self.rarity = "common"
    self.groups = ["human", "organism", "doglikes"]
    self.sfx = ["farmer"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Janitor.png")
    self.name = "Janitor"
    self.description = "<color_E14A68>Destroys<end> adjacent <icon_banana_peel>. Gives <color_E14A68><value_1>x<end> the value of <color_E14A68>destroyed<end> symbols."
	
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:

        var i_effect = effect().if_destroyed().if_type("banana_peel").set_target(symbol).change_value_bonus(0).dynamic_symbol_value(i, values[0], true).animate("circle", 0, [symbol, i])

        i_effect.effect_dictionary.erase("diff")

        symbol.add_effect_for_symbol(i, effect().if_type("banana_peel").set_destroyed())

        symbol.add_effect_for_symbol(i, i_effect)