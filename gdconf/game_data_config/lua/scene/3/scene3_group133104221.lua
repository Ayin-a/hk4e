-- 基础信息
local base_info = {
	group_id = 133104221
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
	{ config_id = 221001, gadget_id = 70220032, pos = { x = 871.009, y = 207.565, z = 291.499 }, rot = { x = 347.130, y = 108.168, z = 3.725 }, level = 16, area_id = 5 },
	{ config_id = 221002, gadget_id = 70211001, pos = { x = 857.549, y = 206.792, z = 316.627 }, rot = { x = 11.593, y = 157.901, z = 9.947 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 221003, gadget_id = 70690001, pos = { x = 868.775, y = 207.456, z = 298.274 }, rot = { x = 0.000, y = 329.050, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 221006, gadget_id = 70900201, pos = { x = 860.518, y = 209.538, z = 322.968 }, rot = { x = 354.217, y = 346.069, z = 357.970 }, level = 16, area_id = 5 },
	{ config_id = 221008, gadget_id = 70690001, pos = { x = 863.127, y = 207.297, z = 307.582 }, rot = { x = 0.000, y = 329.050, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221004, name = "GADGET_STATE_CHANGE_221004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221004", action = "action_EVENT_GADGET_STATE_CHANGE_221004", trigger_count = 0 },
	{ config_id = 1221005, name = "GADGET_STATE_CHANGE_221005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221005", action = "action_EVENT_GADGET_STATE_CHANGE_221005", trigger_count = 0 },
	{ config_id = 1221007, name = "GADGET_STATE_CHANGE_221007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_221007", action = "action_EVENT_GADGET_STATE_CHANGE_221007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
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
		gadgets = { 221001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_221004", "GADGET_STATE_CHANGE_221005", "GADGET_STATE_CHANGE_221007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 221002, 221003, 221008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 221006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	if 221001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104221, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	if 221001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104221, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	if 221002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_221007(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104221, 3)
	
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end