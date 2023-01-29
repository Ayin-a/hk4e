-- 基础信息
local base_info = {
	group_id = 133313283
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133313283,
	collectable_sum = 21
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
	{ config_id = 283001, gadget_id = 70211111, pos = { x = -115.871, y = 217.732, z = 5594.750 }, rot = { x = 359.675, y = 279.592, z = 355.135 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 283002, gadget_id = 70330343, pos = { x = -230.913, y = 173.355, z = 5623.865 }, rot = { x = 2.953, y = 317.190, z = 10.101 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 283003, gadget_id = 70360001, pos = { x = -231.084, y = 174.260, z = 5623.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 32 },
	{ config_id = 283004, gadget_id = 70290501, pos = { x = -213.398, y = 166.991, z = 5607.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283005, gadget_id = 70290501, pos = { x = -208.692, y = 169.032, z = 5604.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283006, gadget_id = 70290501, pos = { x = -204.280, y = 170.726, z = 5600.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283007, gadget_id = 70290501, pos = { x = -199.702, y = 172.412, z = 5596.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283008, gadget_id = 70290501, pos = { x = -195.735, y = 173.876, z = 5593.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283009, gadget_id = 70290501, pos = { x = -191.559, y = 175.706, z = 5589.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283010, gadget_id = 70290501, pos = { x = -187.423, y = 177.787, z = 5586.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283011, gadget_id = 70290501, pos = { x = -183.214, y = 180.014, z = 5583.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 32 },
	{ config_id = 283019, gadget_id = 70290501, pos = { x = -179.298, y = 182.243, z = 5581.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283020, gadget_id = 70290501, pos = { x = -175.771, y = 184.271, z = 5579.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283021, gadget_id = 70290501, pos = { x = -171.753, y = 186.517, z = 5578.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283022, gadget_id = 70290501, pos = { x = -166.997, y = 189.115, z = 5576.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283023, gadget_id = 70290501, pos = { x = -162.644, y = 191.694, z = 5576.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283024, gadget_id = 70290501, pos = { x = -157.959, y = 194.842, z = 5576.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283025, gadget_id = 70290501, pos = { x = -152.328, y = 198.683, z = 5577.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283026, gadget_id = 70290501, pos = { x = -147.473, y = 201.993, z = 5578.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283027, gadget_id = 70290501, pos = { x = -142.757, y = 205.572, z = 5580.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283028, gadget_id = 70290501, pos = { x = -138.082, y = 208.864, z = 5582.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283029, gadget_id = 70290501, pos = { x = -133.331, y = 212.434, z = 5584.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283030, gadget_id = 70290501, pos = { x = -129.199, y = 215.316, z = 5587.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 283031, gadget_id = 70290501, pos = { x = -124.221, y = 217.326, z = 5590.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1283012, name = "CHALLENGE_SUCCESS_283012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_283012", trigger_count = 0 },
	{ config_id = 1283013, name = "CHALLENGE_FAIL_283013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_283013", trigger_count = 0 },
	{ config_id = 1283014, name = "GADGET_STATE_CHANGE_283014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_283014", action = "action_EVENT_GADGET_STATE_CHANGE_283014", trigger_count = 0 },
	{ config_id = 1283015, name = "ANY_GADGET_DIE_283015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1283016, name = "GADGET_CREATE_283016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_283016", action = "action_EVENT_GADGET_CREATE_283016", trigger_count = 0 },
	{ config_id = 1283017, name = "SELECT_OPTION_283017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_283017", action = "action_EVENT_SELECT_OPTION_283017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1283018, name = "GROUP_LOAD_283018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_283018", trigger_count = 0 }
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
		gadgets = { 283002, 283003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_283012", "CHALLENGE_FAIL_283013", "GADGET_STATE_CHANGE_283014", "ANY_GADGET_DIE_283015", "GADGET_CREATE_283016", "SELECT_OPTION_283017", "GROUP_LOAD_283018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 283004, 283005, 283006, 283007, 283008, 283009, 283010, 283011, 283019, 283020, 283021, 283022, 283023, 283024, 283025, 283026, 283027, 283028, 283029, 283030, 283031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 283002 },
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
function action_EVENT_CHALLENGE_SUCCESS_283012(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133313283, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133313283, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为283001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_283013(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为283003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313283, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_283014(context, evt)
	if 283002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_283014(context, evt)
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
function condition_EVENT_GADGET_CREATE_283016(context, evt)
	if 283003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_283016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313283, 283003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_283017(context, evt)
	-- 判断是gadgetid 283003 option_id 177
	if 283003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_283017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 283003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 283002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-213.3984, y=166.9912, z=5607.652}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-213.3984, y=166.9912, z=5607.652}
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
function action_EVENT_GROUP_LOAD_283018(context, evt)
	-- 将configid为 283002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 283002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为283003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 283003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313283, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end