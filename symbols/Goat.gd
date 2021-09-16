extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "goat"
    self.value = 2
    self.values = [5, 1]
    self.rarity = "uncommon"
    self.groups = ["animal", "organism", "farmerlikes", "spawner0"]
    self.sfx = ["jump", "beam"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Goat.png")
    self.name = "Goat"
    self.description = "Has a <color_E14A68><value_1>%<end> chance of <color_E14A68>adding<end> <icon_milk>. Adjacent <all_and_hex> give <icon_coin><color_FBF236><value_2><end> more."
	
func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().if_value_random(0).add_symbol_type("milk").animate("bounce", 0))

    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("hex").change_value_bonus(values[1]).animate("circle", 1, [symbol, i]))