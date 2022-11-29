-- 基础信息
local base_info = {
	group_id = 220000008
}

-- Trigger变量
local defs = {
	gadget_id_1 = 30
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
	{ config_id = 27, gadget_id = 70900014, pos = { x = 30.036, y = 0.215, z = -86.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 0, 0, 0 } },
	{ config_id = 28, gadget_id = 70900014, pos = { x = 13.643, y = 0.062, z = -86.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, arguments = { 0, 0, 0 } },
	{ config_id = 29, gadget_id = 70310001, pos = { x = 30.081, y = 1.140, z = -86.406 }, rot = { x = 0.000, y = 109.302, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 30, gadget_id = 70310001, pos = { x = 13.619, y = 1.053, z = -86.785 }, rot = { x = 0.000, y = 310.981, z = 0.000 }, level = 1 },
	{ config_id = 31, gadget_id = 70211011, pos = { x = 21.468, y = 0.500, z = -83.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 32, gadget_id = 70320001, pos = { x = 30.086, y = 0.500, z = -93.974 }, rot = { x = 0.000, y = 19.948, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000026, name = "GADGET_STATE_CHANGE_26", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26", action = "action_EVENT_GADGET_STATE_CHANGE_26", trigger_count = 0 }
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
		gadgets = { 27, 28, 29, 30, 32 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_26" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_26(context, evt)
	ScriptLib.PrintLog("enter firebox condition")
	if defs.gadget_id_1 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
	ScriptLib.PrintLog("fire box not match")
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26(context, evt)
	-- 创生gadget 31
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 31 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : dungeon_settle")
		return -1
	end
	
	return 0
end