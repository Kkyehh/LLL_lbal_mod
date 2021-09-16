extends "res://modloader/ModSymbol.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "grim_reaper"
    self.value = 2
    self.values = [2, 1]
    self.rarity = "very_rare"
    self.groups = ["organism"]
    self.sfx = ["guillotine"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Grim_Reaper.png")
    self.name = "Grim Reaper"
    self.description = "<color_E14A68>Destroys<end> adjacent <all_and_dead>. Gives <color_E14A68><value_1>x<end> the value of <color_E14A68>destroyed<end> symbols. Permanently gives <icon_coin><color_FBF236><value_2><end> more for each symbol <color_E14A68>destroyed<end>."

func add_conditional_effects(symbol, adjacent):
    for i in adjacent:
        if (modloader.globals.items.item_types.has("undertaker")):
            symbol.add_effect_for_symbol(i, effect().if_group("spiritbox").set_destroyed().animate("shake", 0, [symbol, i]))
            symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("spiritbox").set_target(symbol).change_value_bonus(i.final_value * values[0]))
            symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("spiritbox").set_target(symbol).add_permanent_bonus(1))
        else:
            symbol.add_effect_for_symbol(i, effect().if_group("dead").set_destroyed().animate("shake", 0, [symbol, i]))
            symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("dead").set_target(symbol).change_value_bonus(i.final_value * values[0]))
            symbol.add_effect_for_symbol(i, effect().if_destroyed().if_group("dead").set_target(symbol).add_permanent_bonus(1))