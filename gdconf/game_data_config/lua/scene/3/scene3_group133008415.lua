-- 基础信息
local base_info = {
	group_id = 133008415
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
	{ config_id = 415001, gadget_id = 70220046, pos = { x = 637.179, y = 199.713, z = -747.148 }, rot = { x = 306.786, y = 29.521, z = 349.154 }, level = 30, area_id = 10 },
	{ config_id = 415002, gadget_id = 70211101, pos = { x = 636.632, y = 199.070, z = -746.842 }, rot = { x = 346.585, y = 5.776, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 415003, gadget_id = 70590025, pos = { x = 596.314, y = 200.333, z = -767.319 }, rot = { x = 9.218, y = 150.477, z = 2.579 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1415004, name = "ANY_GADGET_DIE_415004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_415004", action = "action_EVENT_ANY_GADGET_DIE_415004" }
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
		gadgets = { 415001, 415003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_415004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_415004(context, evt)
	if 415001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_415004(context, evt)
	-- 创建id为415002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 415002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end