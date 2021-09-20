extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "golden_egg"

func patch_groups(groups):
    groups.push_back("gold")
    return groups