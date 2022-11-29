-- 基础信息
local base_info = {
	group_id = 133106541
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 133106541,
	collectable_sum = 8
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
	{ config_id = 541001, gadget_id = 70211111, pos = { x = -592.172, y = 169.447, z = 1793.805 }, rot = { x = 359.725, y = 251.491, z = 5.222 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 541002, gadget_id = 70350093, pos = { x = -675.788, y = 169.462, z = 1675.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 19 },
	{ config_id = 541003, gadget_id = 70360001, pos = { x = -675.788, y = 170.427, z = 1675.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 19 },
	{ config_id = 541004, gadget_id = 70290352, pos = { x = -677.825, y = 168.152, z = 1680.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541005, gadget_id = 70290352, pos = { x = -677.243, y = 167.792, z = 1693.006 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541006, gadget_id = 70290352, pos = { x = -676.229, y = 168.206, z = 1708.488 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541007, gadget_id = 70290352, pos = { x = -675.530, y = 200.737, z = 1719.652 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541008, gadget_id = 70290352, pos = { x = -660.809, y = 202.762, z = 1737.954 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541009, gadget_id = 70290352, pos = { x = -649.952, y = 197.141, z = 1751.951 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 19, area_id = 19 },
	{ config_id = 541010, gadget_id = 70290352, pos = { x = -633.879, y = 192.535, z = 1767.627 }, rot = { x = 9.048, y = 54.065, z = 0.751 }, level = 19, area_id = 19 },
	{ config_id = 541011, gadget_id = 70290352, pos = { x = -599.887, y = 174.629, z = 1792.430 }, rot = { x = 29.645, y = 54.369, z = 0.854 }, level = 19, area_id = 19 },
	{ config_id = 541019, gadget_id = 70690001, pos = { x = -677.623, y = 167.792, z = 1686.237 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 541020, gadget_id = 70690001, pos = { x = -676.747, y = 167.792, z = 1700.211 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 541021, gadget_id = 70690013, pos = { x = -675.530, y = 164.701, z = 1719.652 }, rot = { x = 0.000, y = 3.585, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 541022, gadget_id = 70690001, pos = { x = -675.530, y = 197.991, z = 1719.652 }, rot = { x = 90.000, y = 3.585, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 541023, gadget_id = 70690001, pos = { x = -641.685, y = 194.562, z = 1760.625 }, rot = { x = 9.048, y = 54.065, z = 0.751 }, level = 36, area_id = 19 },
	{ config_id = 541024, gadget_id = 70690001, pos = { x = -623.264, y = 190.105, z = 1777.685 }, rot = { x = 25.630, y = 54.303, z = 0.823 }, level = 36, area_id = 19 },
	{ config_id = 541025, gadget_id = 70690001, pos = { x = -609.379, y = 181.112, z = 1787.347 }, rot = { x = 29.645, y = 54.369, z = 0.854 }, level = 36, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1541012, name = "CHALLENGE_SUCCESS_541012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_541012", trigger_count = 0 },
	{ config_id = 1541013, name = "CHALLENGE_FAIL_541013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_541013", trigger_count = 0 },
	{ config_id = 1541014, name = "GADGET_STATE_CHANGE_541014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_541014", action = "action_EVENT_GADGET_STATE_CHANGE_541014", trigger_count = 0 },
	{ config_id = 1541015, name = "ANY_GADGET_DIE_541015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1541016, name = "GADGET_CREATE_541016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_541016", action = "action_EVENT_GADGET_CREATE_541016", trigger_count = 0 },
	{ config_id = 1541017, name = "SELECT_OPTION_541017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_541017", action = "action_EVENT_SELECT_OPTION_541017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1541018, name = "GROUP_LOAD_541018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_541018", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 541002, 541003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_541012", "CHALLENGE_FAIL_541013", "GADGET_STATE_CHANGE_541014", "ANY_GADGET_DIE_541015", "GADGET_CREATE_541016", "SELECT_OPTION_541017", "GROUP_LOAD_541018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 541004, 541005, 541006, 541007, 541008, 541009, 541010, 541011, 541019, 541020, 541021, 541022, 541023, 541024, 541025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 541002 },
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
function action_EVENT_CHALLENGE_SUCCESS_541012(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133106541, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133106541, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为541001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 541001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_541013(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为541003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 541003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106541, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_541014(context, evt)
	if 541002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_541014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 259, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_541016(context, evt)
	if 541003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_541016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133106541, 541003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_541017(context, evt)
	-- 判断是gadgetid 541003 option_id 177
	if 541003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_541017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 541003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 541002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-675.5295，174.8748，1719.652），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-675.5295, y=174.8748, z=1719.652}
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
function action_EVENT_GROUP_LOAD_541018(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为541003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 541003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133106541, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end