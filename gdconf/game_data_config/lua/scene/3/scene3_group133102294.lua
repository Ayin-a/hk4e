-- 基础信息
local base_info = {
	group_id = 133102294
}

-- Trigger变量
local defs = {
	switchPad = 460,
	treasureBox = 457
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
	{ config_id = 294001, gadget_id = 70211101, pos = { x = 1460.391, y = 201.185, z = 251.426 }, rot = { x = 2.247, y = 114.664, z = 18.071 }, level = 16, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 294002, gadget_id = 70220032, pos = { x = 1506.316, y = 201.294, z = 242.698 }, rot = { x = 11.013, y = 102.052, z = 356.501 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 294003, gadget_id = 70690001, pos = { x = 1499.560, y = 204.038, z = 242.368 }, rot = { x = 0.000, y = 282.320, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 294004, gadget_id = 70690001, pos = { x = 1490.975, y = 203.322, z = 244.314 }, rot = { x = 0.000, y = 282.320, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 294005, gadget_id = 70690001, pos = { x = 1482.803, y = 202.970, z = 245.808 }, rot = { x = 0.000, y = 282.320, z = 0.000 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1294007, name = "GADGET_CREATE_294007", event = EventType.EVENT_GADGET_CREATE, source = "294002", condition = "condition_EVENT_GADGET_CREATE_294007", action = "action_EVENT_GADGET_CREATE_294007", trigger_count = 0 },
	{ config_id = 1294009, name = "GADGET_STATE_CHANGE_294009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294009", action = "action_EVENT_GADGET_STATE_CHANGE_294009", trigger_count = 0 },
	{ config_id = 1294010, name = "GADGET_STATE_CHANGE_294010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294010", action = "action_EVENT_GADGET_STATE_CHANGE_294010" },
	{ config_id = 1294011, name = "GADGET_STATE_CHANGE_294011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_294011", action = "action_EVENT_GADGET_STATE_CHANGE_294011", trigger_count = 0 }
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
		gadgets = { 294002 },
		regions = { },
		triggers = { "GADGET_CREATE_294007", "GADGET_STATE_CHANGE_294009", "GADGET_STATE_CHANGE_294010", "GADGET_STATE_CHANGE_294011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 294003, 294004, 294005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_294010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 294001 },
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
function condition_EVENT_GADGET_CREATE_294007(context, evt)
	if 294002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_294007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294009(context, evt)
	if 294002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102294, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102294, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294010(context, evt)
	if 294001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294010(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_294011(context, evt)
	if 294002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_294011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102294, 3)
	
	return 0
end