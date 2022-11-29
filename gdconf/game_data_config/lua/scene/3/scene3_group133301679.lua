-- 基础信息
local base_info = {
	group_id = 133301679
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
	{ config_id = 679001, gadget_id = 70310199, pos = { x = -263.736, y = 256.369, z = 3751.809 }, rot = { x = 0.000, y = 151.086, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 679002, gadget_id = 70310201, pos = { x = -293.891, y = 243.519, z = 3779.839 }, rot = { x = 0.000, y = 137.016, z = 0.000 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 679003, gadget_id = 70211001, pos = { x = -276.265, y = 248.967, z = 3762.268 }, rot = { x = 350.209, y = 135.416, z = 356.047 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1679004, name = "GADGET_STATE_CHANGE_679004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_679004", action = "action_EVENT_GADGET_STATE_CHANGE_679004" }
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
		gadgets = { 679001, 679002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_679004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_679004(context, evt)
	if 679002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_679004(context, evt)
	-- 创建id为679003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 679003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end