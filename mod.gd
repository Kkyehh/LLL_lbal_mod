extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Babysitter.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Janitor.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Busker.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Shrine_Maiden.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Grim_Reaper.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Goat.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Leprechaun.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Pomegranate.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Pomegranate_Half.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Pomegranate_Seed.gd")
    #modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Black_Hole.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Cult_Leader.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Hermit.gd")
    modloader.add_mod_symbol("res://LLL_lbal_mod/symbols/Tax_Man.gd")

    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/spirit.gd")
    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/urn.gd")
    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/big_urn.gd")
    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/tomb.gd")
    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/coin.gd")
    #modloader.add_symbol_patch("res://LLL_lbal_mod/symbols/patches/golden_egg.gd")
	
#only for testing
#func modify_starting_symbols(current):
    #return ["big_urn", "pomegranate", "pomegranate_half", "mrs_fruit", "big_urn"]