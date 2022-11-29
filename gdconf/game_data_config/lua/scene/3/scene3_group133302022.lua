-- 基础信息
local base_info = {
	group_id = 133302022
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
	{ config_id = 22001, gadget_id = 70310006, pos = { x = -789.804, y = 161.457, z = 2285.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	-- 开门机关
	{ config_id = 22005, gadget_id = 70900050, pos = { x = -772.970, y = 163.077, z = 2286.081 }, rot = { x = 0.000, y = 73.799, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	-- 破碎开门机关
	{ config_id = 22014, gadget_id = 70310214, pos = { x = -772.970, y = 163.077, z = 2286.081 }, rot = { x = 0.000, y = 73.799, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 22024, gadget_id = 70290517, pos = { x = -756.647, y = 162.819, z = 2285.966 }, rot = { x = 342.699, y = 277.086, z = 352.852 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门
	{ config_id = 1022013, name = "GADGET_STATE_CHANGE_22013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22013", action = "action_EVENT_GADGET_STATE_CHANGE_22013" },
	-- 监听破碎开门机关
	{ config_id = 1022016, name = "GADGET_STATE_CHANGE_22016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_22016", action = "action_EVENT_GADGET_STATE_CHANGE_22016", trigger_count = 0 },
	{ config_id = 1022025, name = "GROUP_LOAD_22025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_22025", action = "action_EVENT_GROUP_LOAD_22025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "isopen", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 22002, gadget_id = 70360001, pos = { x = -756.665, y = 163.630, z = 2283.772 }, rot = { x = 0.000, y = 278.389, z = 0.000 }, level = 27, area_id = 24 }
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
	end_suite = 2,
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
		gadgets = { 22001, 22014, 22024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 22001, 22014, 22024 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_22013", "GADGET_STATE_CHANGE_22016", "GROUP_LOAD_22025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_22013(context, evt)
	if 22005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22013(context, evt)
	-- 将本组内变量名为 "isopen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isopen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 22024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-755.8107, y=159.7283, z=2284.144}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-755.8107, y=159.7283, z=2284.144}
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
function condition_EVENT_GADGET_STATE_CHANGE_22016(context, evt)
	if 22014 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_22016(context, evt)
	-- 创建id为22005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 22005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6085, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_22025(context, evt)
	-- 判断变量"isopen"为1
	if ScriptLib.GetGroupVariableValue(context, "isopen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22025(context, evt)
	-- 将configid为 22005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 22024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 22024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end