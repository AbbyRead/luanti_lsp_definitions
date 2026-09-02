---@meta

---@param craft_recipe CraftRecipe
function core.register_craft(craft_recipe) end

-- Table shape depends on `type`; each variant below documents only what
-- differs from the others.

-- old_item accepts groups (group:x); new_item is a plain itemstring.
-- Matches consume input items in order and each pair is used at most once,
-- so repeat a pair to replace multiple matching stacks (e.g. 4 buckets).
-- Unmatched pairs are ignored; unreplaced inputs are consumed normally.
-- The new item lands in the craft grid (stack size 1), else inventory,
-- else drops on the ground if neither has room.
---@alias CraftReplacement {[1]:ItemStackAny, [2]:ItemStackAny}

---@class CraftRecipeBase
---@field replacements? CraftReplacement[]

---@class ShapedCraftRecipe : CraftRecipeBase
---@field type? "shaped" -- default when omitted
---@field output ItemStackAny
-- Rows top-to-bottom, columns left-to-right; empty slots are "".
-- Player's grid must be >= this matrix in both dimensions.
---@field recipe ItemStackAny[][]

---@class ShapelessCraftRecipe : CraftRecipeBase
---@field type "shapeless"
---@field output ItemStackAny
---@field recipe ItemStackAny[] -- placement in the grid doesn't matter

-- Registers a repair recipe for every tool lacking the disable_repair=1
-- group: two equal tools in any 2+ slot grid combine into one repaired tool.
-- additional_wear shifts the result; negative values repair, positive wear it
-- down further. Resulting wear below 0 clamps to 0; at/above 65536 the combo
-- can't be crafted at all.
---@class ToolRepairCraftRecipe
---@field type "toolrepair"
---@field additional_wear? number -- multiplier of 65536

---@class CookingCraftRecipe : CraftRecipeBase
---@field type "cooking"
---@field output ItemStackAny
---@field recipe ItemStackAny -- single input, not a list
---@field cooktime? number -- seconds, default 3.0

---@class FuelCraftRecipe : CraftRecipeBase
---@field type "fuel"
---@field recipe ItemStackAny -- single input, not a list
---@field burntime? number -- seconds, default 1.0

---@alias CraftRecipe
---| ShapedCraftRecipe
---| ShapelessCraftRecipe
---| ToolRepairCraftRecipe
---| CookingCraftRecipe
---| FuelCraftRecipe
