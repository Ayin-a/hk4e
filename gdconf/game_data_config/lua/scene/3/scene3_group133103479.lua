-- 基础信息
local base_info = {
	group_id = 133103479
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
	{ config_id = 479001, gadget_id = 70330019, pos = { x = 620.354, y = 264.665, z = 1455.235 }, rot = { x = 0.000, y = 37.987, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 479003, gadget_id = 70211111, pos = { x = 620.301, y = 265.560, z = 1452.537 }, rot = { x = 7.949, y = 293.969, z = 350.983 }, level = 21, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 479004, gadget_id = 70330021, pos = { x = 629.951, y = 262.922, z = 1473.888 }, rot = { x = 0.000, y = 250.998, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1479005, name = "GADGET_STATE_CHANGE_479005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_479005", action = "action_EVENT_GADGET_STATE_CHANGE_479005" }
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
		gadgets = { 479001, 479004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_479005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_479005(context, evt)
	if 479001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_479005(context, evt)
	-- 创建id为479003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 479003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end