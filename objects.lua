---@meta

-- =======================================================================
-- Type Aliases & Dependencies
-- (Expand these in your other definition files if they exist elsewhere)
-- =======================================================================

---@alias Vector3 {x: number, y: number, z: number}
---@alias ObjectProperties table
---@alias PlayerPhysicsOverride table
---@alias HudElement table
---@alias SkyParameters table
---@alias SunParameters table
---@alias MoonParameters table
---@alias StarParameters table
---@alias CloudParameters table

---@class ItemStack
---@class InvRef
---@class PlayerMetaRef

-- =======================================================================
-- ObjectRef Class
-- =======================================================================

---@class ObjectRef
local ObjectRef = {}

---@return boolean
function ObjectRef:is_valid() end

function ObjectRef:remove() end

---@return integer?
function ObjectRef:get_guid() end

---@return Vector3
function ObjectRef:get_pos() end

---@param pos Vector3
function ObjectRef:set_pos(pos) end

---@param pos Vector3
function ObjectRef:add_pos(pos) end

---@param pos Vector3
---@param continuous? boolean
function ObjectRef:move_to(pos, continuous) end

---@param puncher? ObjectRef
---@param time_from_last_punch? number
---@param tool_capabilities? table
---@param dir? Vector3
function ObjectRef:punch(puncher, time_from_last_punch, tool_capabilities, dir) end

---@param clicker? ObjectRef
function ObjectRef:right_click(clicker) end

---@param hp integer
---@param reason? table
function ObjectRef:set_hp(hp, reason) end

---@return integer
function ObjectRef:get_hp() end

---@return InvRef
function ObjectRef:get_inventory() end

---@return string
function ObjectRef:get_wield_list() end

---@return integer
function ObjectRef:get_wield_index() end

---@return ItemStack
function ObjectRef:get_wielded_item() end

---@param item ItemStack|string|table
function ObjectRef:set_wielded_item(item) end

---@param groups table<string, integer>
function ObjectRef:set_armor_groups(groups) end

---@return table<string, integer>
function ObjectRef:get_armor_groups() end

---@param frame_range table {x: number, y: number}
---@param frame_speed? number
---@param frame_blend? number
---@param frame_loop? boolean
function ObjectRef:set_animation(frame_range, frame_speed, frame_blend, frame_loop) end

---@return table frame_range, number frame_speed, number frame_blend, boolean frame_loop
function ObjectRef:get_animation() end

---@param frame_speed number
function ObjectRef:set_animation_frame_speed(frame_speed) end

---@param anim string
---@param frame_speed? number
---@param frame_blend? number
---@param frame_loop? boolean
function ObjectRef:play_animation(anim, frame_speed, frame_blend, frame_loop) end

---@param anim string
---@param frame_speed? number
---@param frame_blend? number
---@param frame_loop? boolean
function ObjectRef:update_animation(anim, frame_speed, frame_blend, frame_loop) end

---@param anim string
function ObjectRef:stop_animation(anim) end

---@return table<string, table>
function ObjectRef:get_animations() end

---@param idle table
---@param walk table
---@param dig table
---@param walk_while_dig table
---@param frame_speed number
function ObjectRef:set_local_animation(idle, walk, dig, walk_while_dig, frame_speed) end

---@return table idle, table walk, table dig, table walk_while_dig, number frame_speed
function ObjectRef:get_local_animation() end

---@param firstperson Vector3
---@param thirdperson_back Vector3
---@param thirdperson_front Vector3
function ObjectRef:set_eye_offset(firstperson, thirdperson_back, thirdperson_front) end

---@return Vector3 firstperson, Vector3 thirdperson_back, Vector3 thirdperson_front
function ObjectRef:get_eye_offset() end

---@param camera_params? table
function ObjectRef:set_camera(camera_params) end

---@return table
function ObjectRef:get_camera() end

---@param pos Vector3
function ObjectRef:send_mapblock(pos) end

---@param bone string
---@param position Vector3
---@param rotation Vector3
function ObjectRef:set_bone_position(bone, position, rotation) end

---@param bone string
---@return Vector3 position, Vector3 rotation
function ObjectRef:get_bone_position(bone) end

---@param bone string
---@param override table
function ObjectRef:set_bone_override(bone, override) end

---@param bone string
---@return table
function ObjectRef:get_bone_override(bone) end

---@return table
function ObjectRef:get_bone_overrides() end

---@param parent ObjectRef
---@param bone? string
---@param position? Vector3
---@param rotation? Vector3
---@param force_visible? boolean
function ObjectRef:set_attach(parent, bone, position, rotation, force_visible) end

---@return ObjectRef? parent, string bone, Vector3 position, Vector3 rotation, boolean force_visible
function ObjectRef:get_attach() end

---@return ObjectRef[]
function ObjectRef:get_children() end

function ObjectRef:set_detach() end

---@param properties ObjectProperties
function ObjectRef:set_properties(properties) end

---@return ObjectProperties
function ObjectRef:get_properties() end

---@param observers string[]
function ObjectRef:set_observers(observers) end

---@return string[]
function ObjectRef:get_observers() end

---@return string[]
function ObjectRef:get_effective_observers() end

---@return boolean
function ObjectRef:is_player() end

---@param attributes table
function ObjectRef:set_nametag_attributes(attributes) end

---@return table
function ObjectRef:get_nametag_attributes() end

---@param velocity Vector3
function ObjectRef:set_velocity(velocity) end

---@param velocity Vector3
function ObjectRef:add_velocity(velocity) end

---@return Vector3
function ObjectRef:get_velocity() end

---@param acceleration Vector3
function ObjectRef:set_acceleration(acceleration) end

---@return Vector3
function ObjectRef:get_acceleration() end

---@param rotation Vector3
function ObjectRef:set_rotation(rotation) end

---@return Vector3
function ObjectRef:get_rotation() end

---@param yaw number
function ObjectRef:set_yaw(yaw) end

---@return number
function ObjectRef:get_yaw() end

---@param mod string
function ObjectRef:set_texture_mod(mod) end

---@return string
function ObjectRef:get_texture_mod() end

---@param start_frame table {x: number, y: number}
---@param num_frames integer
---@param framelength number
---@param select_x_by_camera? boolean
function ObjectRef:set_sprite(start_frame, num_frames, framelength, select_x_by_camera) end

---@return string
function ObjectRef:get_entity_name() end

---@return table?
function ObjectRef:get_luaentity() end

---@return string
function ObjectRef:get_player_name() end

---@return Vector3
function ObjectRef:get_look_dir() end

---@return number
function ObjectRef:get_look_pitch() end

---@return number
function ObjectRef:get_look_yaw() end

---@return number
function ObjectRef:get_look_vertical() end

---@return number
function ObjectRef:get_look_horizontal() end

---@param radians number
function ObjectRef:set_look_vertical(radians) end

---@param radians number
function ObjectRef:set_look_horizontal(radians) end

---@param radians number
function ObjectRef:set_look_pitch(radians) end

---@param radians number
function ObjectRef:set_look_yaw(radians) end

---@param degrees number
---@param is_multiplier? boolean
---@param transition_time? number
function ObjectRef:set_fov(degrees, is_multiplier, transition_time) end

---@return number degrees, boolean is_multiplier, number transition_time
function ObjectRef:get_fov() end

---@param breath integer
function ObjectRef:set_breath(breath) end

---@return integer
function ObjectRef:get_breath() end

---@param attribute string
---@param value any
function ObjectRef:set_attribute(attribute, value) end

---@param attribute string
---@return any
function ObjectRef:get_attribute(attribute) end

---@return PlayerMetaRef
function ObjectRef:get_meta() end

---@param formspec string
function ObjectRef:set_inventory_formspec(formspec) end

---@return string
function ObjectRef:get_inventory_formspec() end

---@param formspec string
function ObjectRef:set_formspec_prepend(formspec) end

---@return string
function ObjectRef:get_formspec_prepend() end

---@return table
function ObjectRef:get_player_control() end

---@return integer
function ObjectRef:get_player_control_bits() end

---@param override_table PlayerPhysicsOverride
function ObjectRef:set_physics_override(override_table) end

---@return PlayerPhysicsOverride
function ObjectRef:get_physics_override() end

---@param hud HudElement
---@return integer id
function ObjectRef:hud_add(hud) end

---@param id integer
function ObjectRef:hud_remove(id) end

---@param id integer
---@param stat string
---@param data any
function ObjectRef:hud_change(id, stat, data) end

---@param id integer
---@return HudElement
function ObjectRef:hud_get(id) end

---@return HudElement[]
function ObjectRef:hud_get_all() end

---@param flags table<string, boolean>
function ObjectRef:hud_set_flags(flags) end

---@return table<string, boolean>
function ObjectRef:hud_get_flags() end

---@param hotbar_itemcount integer
function ObjectRef:hud_set_hotbar_itemcount(hotbar_itemcount) end

---@return integer
function ObjectRef:hud_get_hotbar_itemcount() end

---@param name string
function ObjectRef:hud_set_hotbar_image(name) end

---@return string
function ObjectRef:hud_get_hotbar_image() end

---@param name string
function ObjectRef:hud_set_hotbar_selected_image(name) end

---@return string
function ObjectRef:hud_get_hotbar_selected_image() end

---@param sky_parameters SkyParameters
function ObjectRef:set_sky(sky_parameters) end

---@return SkyParameters
function ObjectRef:get_sky() end

---@return table
function ObjectRef:get_sky_color() end

---@param sun_parameters SunParameters
function ObjectRef:set_sun(sun_parameters) end

---@return SunParameters
function ObjectRef:get_sun() end

---@param moon_parameters MoonParameters
function ObjectRef:set_moon(moon_parameters) end

---@return MoonParameters
function ObjectRef:get_moon() end

---@param star_parameters StarParameters
function ObjectRef:set_stars(star_parameters) end

---@return StarParameters
function ObjectRef:get_stars() end

---@param cloud_parameters CloudParameters
function ObjectRef:set_clouds(cloud_parameters) end

---@return CloudParameters
function ObjectRef:get_clouds() end

---@param ratio? number
function ObjectRef:override_day_night_ratio(ratio) end

---@return number?
function ObjectRef:get_day_night_ratio() end

---@param modes table
function ObjectRef:set_minimap_modes(modes) end

---@param lighting table
function ObjectRef:set_lighting(lighting) end

---@return table
function ObjectRef:get_lighting() end

function ObjectRef:respawn() end

---@param flags string
function ObjectRef:set_flags(flags) end

---@return string
function ObjectRef:get_flags() end
