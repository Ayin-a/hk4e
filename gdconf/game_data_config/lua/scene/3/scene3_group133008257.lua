-- 基础信息
local base_info = {
	group_id = 133008257
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
	{ config_id = 257001, gadget_id = 70220046, pos = { x = 1228.781, y = 318.040, z = -1113.032 }, rot = { x = 3.220, y = 109.419, z = 346.970 }, level = 30, area_id = 10 },
	{ config_id = 257002, gadget_id = 70211101, pos = { x = 1228.429, y = 317.815, z = -1113.241 }, rot = { x = 5.807, y = 93.434, z = 7.444 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257004, name = "ANY_GADGET_DIE_257004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_257004", action = "action_EVENT_ANY_GADGET_DIE_257004" }
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
		gadgets = { 257001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_257004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_257004(context, evt)
	if 257001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_257004(context, evt)
	-- 创建id为257002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end