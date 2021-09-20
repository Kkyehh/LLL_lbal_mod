extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"
func init(modloader: Reference, params):
    .init(modloader, params)
    self.modloader = modloader

    self.id = "babysitter"
    self.value = 2
    self.values = [3, 1]
    self.rarity = "rare"
    self.groups = ["human", "organism", "doglikes"]
    self.sfx = ["jump"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Babysitter.png")
    self.name = "Babysitter"
    self.description = "Adjacent <icon_toddler> give <color_E14A68><value_1>x<end> more <icon_coin>. Gives <icon_coin><color_FBF236><value_2><end> more for <color_E14A68>each<end> <icon_toddler>."
    #self.modifies_adjacent_adjacency = true

    self.buffs.push_back(buff().set_type("toddler").set_value(values[0]).animate("bounce", 0))
    self.buffs.push_back(buff().set_target({
        "self" : {}
    }).set_buff_type("temporary_bonus").set_value(values[1]))

func add_conditional_effects(symbol, adjacent):
    buffs[1].set_value(count_symbols("reels", {"type" : "toddler"}))
    .add_conditional_effects(symbol, adjacent)