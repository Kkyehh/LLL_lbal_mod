extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "leprechaun"
    self.value = 2
    self.values = [7, 1.1]
    self.rarity = "rare"
    self.groups = ["human", "organism", "doglikes", "raritymod"]
    self.sfx = ["jump"]
    
    self.texture = load_texture("res://yeah-symbols/symbols/Leprechaun.png")
    self.name = "Leprechaun"
    self.description = "<color_E14A68>Destroys<end> adjacent <all_and_gold>. Gives <color_E14A68><value_1>x<end> the value of <color_E14A68>destroyed<end> symbols. For each symbol <color_E14A68>destroyed<end>, you are <color_E14A68>1.1x<end> more likely to find <color_38769a>Uncommon<end>, <color_f8f87b>Rare<end>, and <color_4a1369>Very Rare<end> symbols."


func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        symbol.add_effect_for_symbol(i, effect().if_group("gold").set_destroyed().animate("bounce", 0, [symbol, i]))
        symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("gold").set_target(symbol).change_value_bonus(i.final_value * values[0]))
        """
        symbol.add_effect_for_symbol(effect().if_destroyed().if_group("gold").set_target(symbol_rarity).multiply_value(uncommon, values[1]))
        symbol.add_effect_for_symbol(effect().if_destroyed().if_group("gold").set_target(symbol_rarity).multiply_value(rare, values[1]))
        symbol.add_effect_for_symbol(effect().if_destroyed().if_group("gold").set_target(symbol_rarity).multiply_value(very_rare, values[1]))
        """