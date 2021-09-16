extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "pomegranate_seed"
    self.value = 2
    self.rarity = "none"
    self.groups = ["fruit", "food", "cheflikes", "farmerlikes", "fruitlikes"]
    self.findable = false
    self.sfx = ["guillotine"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Pomegranate_Seed.png")
    self.name = "Pomegranate Seed"

    
#test set_removed()
#func add_conditional_effects(symbol, adjacent):
    #for i in adjacent:
        #symbol.add_effect_for_symbol(i, effect().if_type("chef").set_removed().animate("shake", 0, [symbol, i]))