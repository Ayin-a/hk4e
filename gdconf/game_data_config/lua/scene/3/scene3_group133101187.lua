-- 基础信息
local base_info = {
	group_id = 133101187
}

-- Trigger变量
local defs = {
	duration = 45,
	group_id = 133101187
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
	{ config_id = 187001, gadget_id = 70211111, pos = { x = 1295.482, y = 281.095, z = 1449.688 }, rot = { x = 8.437, y = 19.561, z = 6.584 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 187002, gadget_id = 70350083, pos = { x = 1334.722, y = 270.047, z = 1539.781 }, rot = { x = 7.719, y = 359.626, z = 357.023 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 187003, gadget_id = 70360001, pos = { x = 1334.653, y = 271.042, z = 1539.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 6 },
	{ config_id = 187009, gadget_id = 70360046, pos = { x = 1329.844, y = 269.047, z = 1533.856 }, rot = { x = 0.000, y = 287.289, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187010, gadget_id = 70360046, pos = { x = 1323.997, y = 268.982, z = 1530.588 }, rot = { x = 0.000, y = 215.572, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187011, gadget_id = 70360046, pos = { x = 1318.236, y = 268.933, z = 1526.792 }, rot = { x = 0.000, y = 215.572, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187012, gadget_id = 70360046, pos = { x = 1313.833, y = 268.933, z = 1521.878 }, rot = { x = 0.000, y = 177.301, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187013, gadget_id = 70360046, pos = { x = 1310.279, y = 268.715, z = 1515.160 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187014, gadget_id = 70360046, pos = { x = 1307.203, y = 268.617, z = 1508.301 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187015, gadget_id = 70360046, pos = { x = 1304.981, y = 268.731, z = 1501.405 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187016, gadget_id = 70360046, pos = { x = 1303.728, y = 268.700, z = 1494.073 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187017, gadget_id = 70360046, pos = { x = 1303.526, y = 268.684, z = 1487.345 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187018, gadget_id = 70360046, pos = { x = 1304.280, y = 269.603, z = 1481.238 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187019, gadget_id = 70360046, pos = { x = 1302.626, y = 270.626, z = 1475.601 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187020, gadget_id = 70360046, pos = { x = 1302.165, y = 272.179, z = 1469.829 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187021, gadget_id = 70360046, pos = { x = 1300.189, y = 273.462, z = 1463.495 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 187022, gadget_id = 70360046, pos = { x = 1297.364, y = 275.357, z = 1459.248 }, rot = { x = 0.000, y = 187.666, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187004, name = "GADGET_CREATE_187004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_187004", action = "action_EVENT_GADGET_CREATE_187004", trigger_count = 0 },
	{ config_id = 1187005, name = "CHALLENGE_SUCCESS_187005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_187005" },
	{ config_id = 1187006, name = "CHALLENGE_FAIL_187006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_187006", trigger_count = 0 },
	{ config_id = 1187007, name = "GADGET_STATE_CHANGE_187007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187007", action = "action_EVENT_GADGET_STATE_CHANGE_187007", trigger_count = 0 },
	{ config_id = 1187008, name = "GADGET_STATE_CHANGE_187008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_187008", action = "", tag = "202" },
	{ config_id = 1187023, name = "SELECT_OPTION_187023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_187023", action = "action_EVENT_SELECT_OPTION_187023", trigger_count = 0 }
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
		gadgets = { 187002, 187003 },
		regions = { },
		triggers = { "GADGET_CREATE_187004", "CHALLENGE_SUCCESS_187005", "CHALLENGE_FAIL_187006", "GADGET_STATE_CHANGE_187007", "GADGET_STATE_CHANGE_187008", "SELECT_OPTION_187023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 187001, 187009, 187010, 187011, 187012, 187013, 187014, 187015, 187016, 187017, 187018, 187019, 187020, 187021, 187022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 187002 },
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
function condition_EVENT_GADGET_CREATE_187004(context, evt)
	if 187003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_187004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133101187, 187003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_187005(context, evt)
	-- 将configid为 187002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133101187, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101187, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_187006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101187, 2)
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为187003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_187007(context, evt)
	if 187002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_187007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_187008(context, evt)
	if 187001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_187023(context, evt)
	-- 判断是gadgetid 187003 option_id 177
	if 187003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_187023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 187003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 187002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end