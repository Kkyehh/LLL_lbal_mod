extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Babysitter.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Janitor.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Busker.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Shrine_Maiden.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Grim_Reaper.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Goat.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Leprechaun.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Pomegranate.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Pomegranate_Half.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Pomegranate_Seed.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Black_Hole.gd")
    modloader.add_mod_symbol("res://yeah-symbols/symbols/Cult_Leader.gd")

    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/spirit.gd")
    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/urn.gd")
    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/big_urn.gd")
    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/tomb.gd")
    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/coin.gd")
    modloader.add_symbol_patch("res://yeah-symbols/symbols/patches/golden_egg.gd")
	
#only for testing
func modify_starting_symbols(current):
    return ["hooligan", "hooligan", "cult_leader", "hooligan", "hooligan"]