extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"
func init(modloader: Reference, params):
    .init(modloader, params)
    self.modloader = modloader

    self.id = "tax_man"
    self.value = 0
    self.values = [1, 2]
    self.rarity = "common"
    self.groups = ["human", "organism", "doglikes"]
    self.sfx = ["coinjingle"]
    
    self.texture = load_texture("res://LLL_lbal_mod/symbols/Tax_Man.png")
    self.name = "Tax Man"
    self.description = "Gives <icon_coin><color_FBF236><value_1><end> more for <color_E14A68>each<end> adjacent symbol that gives <icon_coin><color_FBF236>0<end>. Gives <color_E14A68><value_2>x<end> the <icon_coin> <color_E14A68>lost<end> to adjacent symbols that give <color_E14A68>less than<end> <icon_coin><color_FBF236>0<end>."

func add_conditional_effects(symbol, adjacent):

    
    for i in adjacent:
        var i_effect = effect().if_final_value_less_than(0).set_target(symbol).change_value_bonus(0).dynamic_symbol_value(i, values[1] * -1, true).animate("shake", 1, [symbol, i])

        i_effect.effect_dictionary.erase("diff")

        symbol.add_effect_for_symbol(i, effect().if_final_value_equals(0).if_type("empty").negate().set_target(symbol).change_value_bonus(values[0]))

        symbol.add_effect_for_symbol(i, i_effect)