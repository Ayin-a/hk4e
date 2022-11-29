-- 基础信息
local base_info = {
	group_id = 133304363
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
	{ config_id = 363001, gadget_id = 70211101, pos = { x = -1395.297, y = 267.987, z = 2847.899 }, rot = { x = 0.000, y = 283.758, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 363002, gadget_id = 70310198, pos = { x = -1390.190, y = 268.695, z = 2829.329 }, rot = { x = 0.000, y = 67.539, z = 7.111 }, level = 30, area_id = 21 },
	{ config_id = 363003, gadget_id = 70330219, pos = { x = -1395.158, y = 267.793, z = 2847.983 }, rot = { x = 348.858, y = 94.377, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1363004, name = "ANY_GADGET_DIE_363004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363004", action = "action_EVENT_ANY_GADGET_DIE_363004" }
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
		gadgets = { 363002, 363003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363004(context, evt)
	if 363003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363004(context, evt)
	-- 创建id为363001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end