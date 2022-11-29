-- 基础信息
local base_info = {
	group_id = 133304368
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
	{ config_id = 368001, gadget_id = 70330238, pos = { x = -1371.935, y = 304.848, z = 1968.231 }, rot = { x = 338.663, y = 358.194, z = 359.126 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	{ config_id = 368002, gadget_id = 70290563, pos = { x = -1344.440, y = 305.730, z = 1936.460 }, rot = { x = 357.338, y = 198.409, z = 6.438 }, level = 30, isOneoff = true, persistent = true, mark_flag = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底设置删除花201
	{ config_id = 1368004, name = "GROUP_LOAD_368004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_368004", action = "action_EVENT_GROUP_LOAD_368004", trigger_count = 0 },
	{ config_id = 1368005, name = "GADGET_STATE_CHANGE_368005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_368005", action = "action_EVENT_GADGET_STATE_CHANGE_368005" },
	-- 设置variable
	{ config_id = 1368006, name = "GADGET_STATE_CHANGE_368006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_368006", action = "action_EVENT_GADGET_STATE_CHANGE_368006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1368003, name = "GADGET_STATE_CHANGE_368003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_368003", action = "action_EVENT_GADGET_STATE_CHANGE_368003", trigger_count = 0 }
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
	end_suite = 0,
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
		gadgets = { 368001, 368002 },
		regions = { },
		triggers = { "GROUP_LOAD_368004", "GADGET_STATE_CHANGE_368005", "GADGET_STATE_CHANGE_368006" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_368004(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_368004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	ScriptLib.KillEntityByConfigId(context, { config_id = 368002 }) 
	
	-- 将configid为 368001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 368001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_368005(context, evt)
	if 368001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_368005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-1344，305，1936），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1344, y=305, z=1936}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_368006(context, evt)
	if 368001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_368006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end