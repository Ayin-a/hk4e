-- 基础信息
local base_info = {
	group_id = 133107044
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
	{ config_id = 44001, gadget_id = 70310011, pos = { x = -172.910, y = 489.628, z = 335.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 7 },
	{ config_id = 44004, gadget_id = 70690006, pos = { x = -172.900, y = 489.600, z = 335.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044002, name = "GADGET_STATE_CHANGE_44002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_44002", action = "action_EVENT_GADGET_STATE_CHANGE_44002" }
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
		gadgets = { 44001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_44002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_44002(context, evt)
	if 44001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_44002(context, evt)
	-- 创建id为44004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 44004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end