-- 基础信息
local base_info = {
	group_id = 133008516
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
	{ config_id = 516001, gadget_id = 70220046, pos = { x = 1018.469, y = 578.901, z = -877.552 }, rot = { x = 351.925, y = 11.439, z = 358.233 }, level = 30, area_id = 10 },
	{ config_id = 516002, gadget_id = 70211101, pos = { x = 1018.573, y = 576.926, z = -877.528 }, rot = { x = 348.873, y = 8.884, z = 344.675 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1516004, name = "ANY_GADGET_DIE_516004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_516004", action = "action_EVENT_ANY_GADGET_DIE_516004" }
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
		gadgets = { 516001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_516004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_516004(context, evt)
	if 516001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_516004(context, evt)
	-- 创建id为516002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 516002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end