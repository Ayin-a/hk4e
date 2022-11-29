-- 基础信息
local base_info = {
	group_id = 133102115
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
	{ config_id = 415, gadget_id = 70220032, pos = { x = 1348.912, y = 222.909, z = 511.855 }, rot = { x = 356.310, y = 258.706, z = 356.823 }, level = 16, area_id = 5 },
	{ config_id = 416, gadget_id = 70211111, pos = { x = 1412.143, y = 220.659, z = 521.769 }, rot = { x = 0.000, y = 268.176, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 115001, gadget_id = 70690001, pos = { x = 1365.384, y = 229.646, z = 514.611 }, rot = { x = 0.000, y = 261.243, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 115002, gadget_id = 70690001, pos = { x = 1385.862, y = 229.684, z = 517.813 }, rot = { x = 0.000, y = 261.243, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 115004, gadget_id = 70690006, pos = { x = 1348.710, y = 220.873, z = 511.696 }, rot = { x = 0.000, y = 187.931, z = 0.000 }, level = 16, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000222, name = "GADGET_STATE_CHANGE_222", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_222", action = "action_EVENT_GADGET_STATE_CHANGE_222", trigger_count = 0 },
	{ config_id = 1000223, name = "GADGET_STATE_CHANGE_223", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_223", action = "action_EVENT_GADGET_STATE_CHANGE_223", trigger_count = 0 },
	{ config_id = 1115003, name = "GADGET_STATE_CHANGE_115003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115003", action = "action_EVENT_GADGET_STATE_CHANGE_115003" },
	{ config_id = 1115005, name = "GADGET_STATE_CHANGE_115005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115005", action = "action_EVENT_GADGET_STATE_CHANGE_115005" }
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
		gadgets = { 415 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_222", "GADGET_STATE_CHANGE_223", "GADGET_STATE_CHANGE_115003", "GADGET_STATE_CHANGE_115005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 115001, 115002, 115004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_222(context, evt)
	if 415 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_222(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102115, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_223(context, evt)
	if 415 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_223(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102115, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115003(context, evt)
	if 415 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115003(context, evt)
	-- 创建id为416的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 416 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115005(context, evt)
	if 416 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115005(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end