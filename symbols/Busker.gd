extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "busker"
    self.value = 0
    self.values = [1]
    self.rarity = "uncommon"
    self.groups = ["human", "organism", "doglikes"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Busker.png")
    self.name = "Busker"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> more for each adjacent <all_and_human>."
	
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("human").set_target(symbol).change_value_bonus(values[0]))