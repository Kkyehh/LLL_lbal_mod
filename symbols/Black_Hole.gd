extends "res://modloader/ModSymbol.gd"
func init(modloader: Reference, params):
    self.modloader = modloader
    
    self.id = "black_hole"
    self.value = 5
    self.rarity = "very_rare"
    self.groups = []
    
    self.texture = load_texture("res://yeah-symbols/symbols/Black_Hole.png")
    self.name = "Black Hole"
    self.description = "Adjacent symbols are adjacent to only this symbol and all of this symbol's adjacent symbols."

    self.modifies_adjacent_adjacency = true
	
func modify_adjacent_adjacency(to_modify, to_modify_grid_position, currently_adjacent):
    for i in to_modify:
        return currently_adjacent