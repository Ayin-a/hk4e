-- 基础信息
local base_info = {
	group_id = 133308113
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133308113,
	collectable_sum = 12
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
	{ config_id = 113001, gadget_id = 70211101, pos = { x = -1801.294, y = 158.361, z = 4908.689 }, rot = { x = 24.286, y = 335.743, z = 352.382 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 113002, gadget_id = 70330343, pos = { x = -1833.411, y = 140.319, z = 5000.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 113003, gadget_id = 70360001, pos = { x = -1833.411, y = 141.283, z = 5000.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 26 },
	{ config_id = 113004, gadget_id = 70290501, pos = { x = -1827.849, y = 142.226, z = 4983.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
	{ config_id = 113005, gadget_id = 70330392, pos = { x = -1832.514, y = 138.605, z = 4991.347 }, rot = { x = 11.358, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113006, gadget_id = 70330392, pos = { x = -1827.964, y = 140.643, z = 4982.643 }, rot = { x = 11.358, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113007, gadget_id = 70290501, pos = { x = -1823.548, y = 144.026, z = 4975.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113008, gadget_id = 70330392, pos = { x = -1818.788, y = 143.482, z = 4965.182 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113009, gadget_id = 70330392, pos = { x = -1827.664, y = 143.482, z = 4960.526 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113010, gadget_id = 70330392, pos = { x = -1836.477, y = 143.482, z = 4955.902 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113011, gadget_id = 70330392, pos = { x = -1831.862, y = 143.482, z = 4947.105 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113019, gadget_id = 70330392, pos = { x = -1827.223, y = 143.482, z = 4938.262 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113020, gadget_id = 70330392, pos = { x = -1818.412, y = 143.482, z = 4942.884 }, rot = { x = 0.000, y = 332.318, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113021, gadget_id = 70330392, pos = { x = -1814.056, y = 145.218, z = 4934.338 }, rot = { x = 0.000, y = 244.445, z = 338.831 }, level = 32, area_id = 26 },
	{ config_id = 113022, gadget_id = 70330392, pos = { x = -1810.060, y = 148.722, z = 4925.824 }, rot = { x = 0.000, y = 244.445, z = 338.831 }, level = 32, area_id = 26 },
	{ config_id = 113023, gadget_id = 70290501, pos = { x = -1818.797, y = 145.002, z = 4965.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113024, gadget_id = 70290501, pos = { x = -1827.494, y = 145.002, z = 4960.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113025, gadget_id = 70290501, pos = { x = -1827.494, y = 145.002, z = 4960.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113026, gadget_id = 70290501, pos = { x = -1836.355, y = 145.002, z = 4956.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113027, gadget_id = 70290501, pos = { x = -1831.826, y = 145.002, z = 4947.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113028, gadget_id = 70290501, pos = { x = -1827.096, y = 145.002, z = 4938.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113029, gadget_id = 70290501, pos = { x = -1818.412, y = 145.002, z = 4942.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 113030, gadget_id = 70290501, pos = { x = -1813.728, y = 146.815, z = 4933.986 }, rot = { x = 19.041, y = 1.415, z = 9.426 }, level = 32, area_id = 26 },
	{ config_id = 113031, gadget_id = 70290501, pos = { x = -1809.422, y = 150.763, z = 4924.744 }, rot = { x = 19.045, y = 1.392, z = 9.419 }, level = 32, area_id = 26 },
	{ config_id = 113032, gadget_id = 70290501, pos = { x = -1803.855, y = 157.611, z = 4914.514 }, rot = { x = 17.079, y = 1.195, z = 359.681 }, level = 32, area_id = 26 },
	{ config_id = 113033, gadget_id = 70330392, pos = { x = -1806.331, y = 152.069, z = 4918.027 }, rot = { x = 0.000, y = 244.445, z = 338.831 }, level = 32, area_id = 26 },
	{ config_id = 113034, gadget_id = 70330392, pos = { x = -1823.383, y = 142.553, z = 4973.942 }, rot = { x = 11.358, y = 332.318, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113012, name = "CHALLENGE_SUCCESS_113012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_113012", trigger_count = 0 },
	{ config_id = 1113013, name = "CHALLENGE_FAIL_113013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_113013", trigger_count = 0 },
	{ config_id = 1113014, name = "GADGET_STATE_CHANGE_113014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113014", action = "action_EVENT_GADGET_STATE_CHANGE_113014", trigger_count = 0 },
	{ config_id = 1113015, name = "ANY_GADGET_DIE_113015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1113016, name = "GADGET_CREATE_113016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_113016", action = "action_EVENT_GADGET_CREATE_113016", trigger_count = 0 },
	{ config_id = 1113017, name = "SELECT_OPTION_113017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_113017", action = "action_EVENT_SELECT_OPTION_113017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1113018, name = "GROUP_LOAD_113018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_113018", trigger_count = 0 }
}

-- 变量
variables = {
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
		gadgets = { 113002, 113003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_113012", "CHALLENGE_FAIL_113013", "GADGET_STATE_CHANGE_113014", "ANY_GADGET_DIE_113015", "GADGET_CREATE_113016", "SELECT_OPTION_113017", "GROUP_LOAD_113018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 113004, 113005, 113006, 113007, 113008, 113009, 113010, 113011, 113019, 113020, 113021, 113022, 113023, 113024, 113025, 113026, 113027, 113028, 113029, 113030, 113031, 113032, 113033, 113034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 113002, 113005, 113006, 113008, 113009, 113010, 113011, 113019, 113020, 113021, 113022, 113033, 113034 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_113012(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133308113, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308113, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为113001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_113013(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为113003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308113, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113014(context, evt)
	if 113002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_113016(context, evt)
	if 113003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308113, 113003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_113017(context, evt)
	-- 判断是gadgetid 113003 option_id 177
	if 113003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_113017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 113003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 113002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1828.449，141.9714，4988.348），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1828.449, y=141.9714, z=4988.348}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_113018(context, evt)
	-- 将configid为 113002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为113003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308113, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end