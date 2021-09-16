extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "pomegranate_half"
    self.value = 2
    self.rarity = "rare"
    self.groups = ["fruit", "food", "cheflikes", "farmerlikes", "fruitlikes"]
    
    self.texture = load_texture("res://yeah-symbols/symbols/Pomegranate_Half.png")
    self.name = "Pomegranate Half"
    self.description = "<color_E14A68>Adds 5<end> <icon_pomegranate_seed> when <color_E14A68>destroyed<end>."
    self.symbol_adds = ["pomegranate_seed", "pomegranate_seed", "pomegranate_seed", "pomegranate_seed", "pomegranate_seed"]
	
#func add_conditional_effects(symbol, adjacent):
    #symbol.add_effect(effect().if_destroyed().{"comparisons": [], "tiles_to_add": symbol_adds})