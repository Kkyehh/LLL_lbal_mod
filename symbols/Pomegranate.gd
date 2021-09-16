extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "pomegranate"
    self.value = 3
    self.rarity = "rare"
    self.groups = ["fruit", "food", "cheflikes", "farmerlikes"]
    
    self.texture = load_texture("res://yeah-symbols/symbols/Pomegranate.png")
    self.name = "Pomegranate"
    self.description = "<color_E14A68>Adds<end> <icon_pomegranate_seed> when made to give more <icon_coin> by other symbols. <color_E14A68>Adds 2<end> <icon_pomegranate_half> when <color_E14A68>destroyed<end>."
    self.symbol_adds = ["pomegranate_half", "pomegranate_half"]
	
func add_conditional_effects(symbol):
    symbol.add_effect_to_symbol(i, effect().if_type("farmer").add_symbol_type("pomegranate_seed"))
    #symbol.add_effect(effect().if_destroyed().{"comparisons": [], "tiles_to_add": symbol_adds})