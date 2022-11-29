-- 基础信息
local base_info = {
	group_id = 133106231
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
	{ config_id = 231001, gadget_id = 70220008, pos = { x = -595.554, y = 245.674, z = 857.062 }, rot = { x = 352.372, y = 0.410, z = 353.860 }, level = 32, oneoff_reset_version = 2, area_id = 8 },
	{ config_id = 231002, gadget_id = 70211001, pos = { x = -597.755, y = 246.058, z = 858.674 }, rot = { x = 6.943, y = 177.489, z = 358.148 }, level = 26, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1231003, name = "ANY_GADGET_DIE_231003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_231003", action = "action_EVENT_ANY_GADGET_DIE_231003" }
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
		gadgets = { 231001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_231003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_231003(context, evt)
	if 231001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_231003(context, evt)
	-- 创建id为231002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end