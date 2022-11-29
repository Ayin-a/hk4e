-- 基础信息
local base_info = {
	group_id = 133103552
}

-- Trigger变量
local defs = {
	duration = 38,
	group_id = 133103552
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
	{ config_id = 552001, gadget_id = 70211111, pos = { x = 849.732, y = 352.658, z = 1762.215 }, rot = { x = 7.247, y = 131.895, z = 5.596 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 552002, gadget_id = 70350083, pos = { x = 993.388, y = 329.265, z = 1509.518 }, rot = { x = 0.000, y = 287.018, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 552003, gadget_id = 70360001, pos = { x = 993.388, y = 330.050, z = 1509.512 }, rot = { x = 0.000, y = 287.018, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 552004, gadget_id = 70690001, pos = { x = 985.537, y = 310.657, z = 1530.974 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552011, gadget_id = 70690001, pos = { x = 980.143, y = 314.656, z = 1540.546 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552012, gadget_id = 70690001, pos = { x = 975.184, y = 318.332, z = 1549.347 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552013, gadget_id = 70690001, pos = { x = 967.949, y = 297.418, z = 1560.364 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552014, gadget_id = 70690001, pos = { x = 961.147, y = 302.461, z = 1572.436 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552015, gadget_id = 70690001, pos = { x = 954.464, y = 307.416, z = 1584.296 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552016, gadget_id = 70690001, pos = { x = 947.947, y = 312.248, z = 1595.863 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552017, gadget_id = 70690001, pos = { x = 936.580, y = 295.366, z = 1613.458 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552018, gadget_id = 70690001, pos = { x = 931.227, y = 299.335, z = 1622.959 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552019, gadget_id = 70690001, pos = { x = 926.133, y = 303.112, z = 1631.998 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552020, gadget_id = 70690001, pos = { x = 920.673, y = 307.160, z = 1641.689 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552021, gadget_id = 70690001, pos = { x = 915.244, y = 311.186, z = 1651.324 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552022, gadget_id = 70690001, pos = { x = 904.972, y = 298.200, z = 1666.579 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552023, gadget_id = 70690001, pos = { x = 899.338, y = 302.377, z = 1676.577 }, rot = { x = 340.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552024, gadget_id = 70690001, pos = { x = 893.523, y = 306.688, z = 1686.897 }, rot = { x = 330.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552025, gadget_id = 70690001, pos = { x = 887.123, y = 311.433, z = 1698.255 }, rot = { x = 330.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552026, gadget_id = 70690001, pos = { x = 883.383, y = 314.234, z = 1704.894 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552027, gadget_id = 70690001, pos = { x = 879.337, y = 318.992, z = 1712.074 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552028, gadget_id = 70690001, pos = { x = 875.212, y = 323.844, z = 1719.395 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552029, gadget_id = 70690001, pos = { x = 866.814, y = 333.720, z = 1734.298 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552030, gadget_id = 70690001, pos = { x = 870.576, y = 329.296, z = 1727.622 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552031, gadget_id = 70690001, pos = { x = 862.428, y = 338.879, z = 1742.083 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552032, gadget_id = 70690001, pos = { x = 858.639, y = 343.981, z = 1748.806 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552033, gadget_id = 70690001, pos = { x = 855.375, y = 348.903, z = 1754.598 }, rot = { x = 320.000, y = 330.600, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 552034, gadget_id = 70900201, pos = { x = 850.041, y = 353.663, z = 1762.288 }, rot = { x = 0.000, y = 36.764, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1552005, name = "CHALLENGE_SUCCESS_552005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_552005" },
	{ config_id = 1552006, name = "CHALLENGE_FAIL_552006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_552006", trigger_count = 0 },
	{ config_id = 1552007, name = "GADGET_STATE_CHANGE_552007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_552007", action = "action_EVENT_GADGET_STATE_CHANGE_552007", trigger_count = 0 },
	{ config_id = 1552008, name = "GADGET_STATE_CHANGE_552008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_552008", action = "", tag = "202" },
	{ config_id = 1552009, name = "GADGET_CREATE_552009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_552009", action = "action_EVENT_GADGET_CREATE_552009", trigger_count = 0 },
	{ config_id = 1552010, name = "SELECT_OPTION_552010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_552010", action = "action_EVENT_SELECT_OPTION_552010", trigger_count = 0 }
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
		gadgets = { 552002, 552003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_552005", "CHALLENGE_FAIL_552006", "GADGET_STATE_CHANGE_552007", "GADGET_STATE_CHANGE_552008", "GADGET_CREATE_552009", "SELECT_OPTION_552010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 552001, 552004, 552011, 552012, 552013, 552014, 552015, 552016, 552017, 552018, 552019, 552020, 552021, 552022, 552023, 552024, 552025, 552026, 552027, 552028, 552029, 552030, 552031, 552032, 552033, 552034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 552002 },
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
function action_EVENT_CHALLENGE_SUCCESS_552005(context, evt)
	-- 将configid为 552002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 552002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103552, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103552, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_552006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103552, 2)
	
	-- 将configid为 552002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 552002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为552003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 552003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_552007(context, evt)
	if 552002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_552007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
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
function condition_EVENT_GADGET_STATE_CHANGE_552008(context, evt)
	if 552001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_552009(context, evt)
	if 552003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_552009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103552, 552003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_552010(context, evt)
	-- 判断是gadgetid 552003 option_id 177
	if 552003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_552010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 552003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 552002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 552002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end