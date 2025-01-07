local default_enemy_color = data.raw["utility-constants"]["default"]["chart"]["default_enemy_color"]
local unit_types = {"unit-spawner", "segment", "segmented-unit", "spider-unit", "unit"}
for _, unit_type in pairs(unit_types) do
    for _, prototype in pairs(data.raw[unit_type]) do
        if not prototype.enemy_map_color then
            prototype.enemy_map_color = default_enemy_color
        end
    end
end

data.raw["utility-constants"]["default"]["chart"]["default_enemy_territory_color"] = {0, 0, 0, 0}
data.raw["utility-constants"]["default"]["chart"]["default_enemy_color"] = {0, 0, 0, 0}