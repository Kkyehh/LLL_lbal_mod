extends "res://modloader/SymbolPatcher.gd"

func init(modloader: Reference, params):
    self.modloader = modloader
    self.id = "big_urn"

func patch_groups(groups):
    groups.push_back("dead")
    return groups