-- 基础信息
local base_info = {
	group_id = 133008484
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
	{ config_id = 484001, gadget_id = 70220046, pos = { x = 1264.095, y = 311.374, z = -1090.410 }, rot = { x = 342.118, y = 54.355, z = 3.968 }, level = 30, area_id = 10 },
	{ config_id = 484002, gadget_id = 70211101, pos = { x = 1264.387, y = 310.258, z = -1090.630 }, rot = { x = 356.908, y = 61.138, z = 0.887 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1484004, name = "ANY_GADGET_DIE_484004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_484004", action = "action_EVENT_ANY_GADGET_DIE_484004" }
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
		gadgets = { 484001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_484004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_484004(context, evt)
	if 484001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_484004(context, evt)
	-- 创建id为484002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 484002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end