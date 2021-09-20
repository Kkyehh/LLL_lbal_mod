extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "cult_leader"
    self.value = 2
    self.values = [1]
    self.rarity = "very_rare"
    self.groups = ["organism", "human", "doglikes"]
    self.sfx = ["hex"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Cult_Leader.png")
    self.name = "Cult Leader"
    self.description = "Adjacent <all_and_human> are <color_E14A68>transformed<end> into <icon_cultist>. Gives <icon_coin><color_FBF236><value_1><end> more for <color_E14A68>each<end> adjacent <icon_cultist>."
	
func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("human").if_type("cultist").negate().animate("rotate", 0, [symbol, i]).change_type("cultist"))
        symbol.add_effect_for_symbol(i, effect().if_type("cultist").set_target(symbol).change_value_bonus(values[0]))