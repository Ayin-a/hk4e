-- 基础信息
local base_info = {
	group_id = 220000007
}

-- Trigger变量
local defs = {
	gadget_id_1 = 7004,
	gadget_id_2 = 7003
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
	{ config_id = 7001, gadget_id = 70900018, pos = { x = 66.703, y = 0.797, z = -87.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7002, gadget_id = 70900018, pos = { x = 50.643, y = 0.653, z = -86.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7003, gadget_id = 70220013, pos = { x = 67.899, y = 0.466, z = -86.618 }, rot = { x = 0.000, y = 40.031, z = 0.000 }, level = 1 },
	{ config_id = 7004, gadget_id = 70211011, pos = { x = 58.985, y = 0.500, z = -83.761 }, rot = { x = 0.000, y = 75.470, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000025, name = "ANY_GADGET_DIE_25", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25", action = "action_EVENT_ANY_GADGET_DIE_25" }
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
	rand_suite = true
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
		gadgets = { 7001, 7002, 7003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25(context, evt)
	ScriptLib.PrintLog("enter condition")
	if defs.gadget_id_2 ~= evt.param1 then
	ScriptLib.PrintLog("configid judge false")
		return false
	end
	
	ScriptLib.PrintLog("configid judge true")
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25(context, evt)
	ScriptLib.PrintLog("enter action")
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.gadget_id_1 }) then
	ScriptLib.PrintLog("create gadget fail")
		return -1
	end
	
	return 0
end