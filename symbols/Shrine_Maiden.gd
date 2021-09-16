extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "shrine_maiden"
    self.value = 3
    self.values = [4, 2, 2]
    self.rarity = "very_rare"
    self.groups = ["human", "organism", "doglikes"]
    self.sfx = ["spirit", "ding"]
    
    self.texture = load_texture("res://yeah-symbols/symbols/Shrine_Maiden.png")
    self.name = "Shrine Maiden"
    self.description = "<color_E14A68>Adds<end> <icon_spirit> every <color_E14A68><value_1><end> spins. Adjacent <icon_spirit> give <color_E14A68><value_2>x<end> more <icon_coin> and must give <icon_coin> <color_E14A68><value_3><end> more times to be <color_E14A68>destroyed<end>."
	
func update_value_text (symbol, values):
    symbol.value_text = values[0] - (symbol.times_displayed % values[0])
    symbol.value_text_color = "<color_E14A68>"

func add_conditional_effects(symbol, adjacent):
    if (symbol.times_displayed % values[0]) == 0:
        symbol.add_effect(effect().add_symbol_type("spirit").animate("shake", 0))

    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_type("spirit").add_to_value("times_coins_given", 0 - values[2]).animate("circle", 1, [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_type("spirit").change_value_multiplier(values[1]))