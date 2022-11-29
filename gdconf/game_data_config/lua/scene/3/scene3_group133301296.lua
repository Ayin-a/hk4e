-- 基础信息
local base_info = {
	group_id = 133301296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296001, gadget_id = 70330238, pos = { x = -565.364, y = 32.358, z = 3778.713 }, rot = { x = 2.746, y = 273.119, z = 15.021 }, level = 33, persistent = true, mark_flag = 5, area_id = 25 },
	{ config_id = 296002, gadget_id = 70290563, pos = { x = -529.391, y = 26.865, z = 3773.332 }, rot = { x = 0.804, y = 41.931, z = 13.869 }, level = 33, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 },
	{ config_id = 296006, gadget_id = 70230112, pos = { x = -563.793, y = 34.941, z = 3773.283 }, rot = { x = 280.200, y = 180.297, z = 61.230 }, level = 33, persistent = true, mark_flag = 5, area_id = 25 },
	{ config_id = 296007, gadget_id = 70230112, pos = { x = -565.679, y = 32.257, z = 3777.867 }, rot = { x = 354.898, y = 68.232, z = 91.607 }, level = 33, persistent = true, mark_flag = 5, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296005, name = "GADGET_STATE_CHANGE_296005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_296005", action = "action_EVENT_GADGET_STATE_CHANGE_296005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1296003, name = "GADGET_STATE_CHANGE_296003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_296003", action = "action_EVENT_GADGET_STATE_CHANGE_296003", trigger_count = 0 },
		{ config_id = 1296004, name = "GROUP_LOAD_296004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_296004", action = "action_EVENT_GROUP_LOAD_296004", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 296001, 296002, 296006, 296007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_296005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_296005(context, evt)
	if 296001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_296005(context, evt)
	-- 将configid为 296007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 296007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-563.793, y=34.94116, z=3773.283}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-563.793, y=34.94116, z=3773.283}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V3_0/DeathFieldStandard"