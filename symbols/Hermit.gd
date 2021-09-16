extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "hermit"
    self.value = -6
    self.values = [1]
    self.rarity = "very_rare"
    self.groups = ["human", "organism", "doglikes"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Hermit.png")
    self.name = "Hermit"
    self.description = "Permanently gives <icon_coin><color_FBF236><value_1><end> more every spin."

func add_conditional_effects(symbol, adjacent):
    symbol.add_effect(effect().add_permanent_bonus(values[0]))