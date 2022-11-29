-- 基础信息
local base_info = {
	group_id = 133008267
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
	{ config_id = 267001, gadget_id = 70220046, pos = { x = 1058.315, y = 441.499, z = -896.651 }, rot = { x = 349.531, y = 305.384, z = 355.549 }, level = 30, area_id = 10 },
	{ config_id = 267002, gadget_id = 70211101, pos = { x = 1059.494, y = 439.884, z = -896.916 }, rot = { x = 0.000, y = 312.651, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 267003, gadget_id = 70590025, pos = { x = 1047.964, y = 430.925, z = -883.282 }, rot = { x = 354.609, y = 247.289, z = 0.815 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267004, name = "ANY_GADGET_DIE_267004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_267004", action = "action_EVENT_ANY_GADGET_DIE_267004" }
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
		gadgets = { 267001, 267003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_267004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_267004(context, evt)
	if 267001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_267004(context, evt)
	-- 创建id为267002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 267002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end