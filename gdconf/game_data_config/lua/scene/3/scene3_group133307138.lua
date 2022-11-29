-- 基础信息
local base_info = {
	group_id = 133307138
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
	{ config_id = 138001, gadget_id = 70330292, pos = { x = -1917.532, y = 152.292, z = 5655.962 }, rot = { x = 0.000, y = 186.799, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 138002, gadget_id = 70210102, pos = { x = -1917.532, y = 152.393, z = 5655.962 }, rot = { x = 0.000, y = 209.132, z = 0.000 }, level = 26, chest_drop_id = 1050252, drop_count = 1, isOneoff = true, persistent = true, autopick = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138003, name = "ANY_GADGET_DIE_138003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_138003", action = "action_EVENT_ANY_GADGET_DIE_138003" }
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
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 138001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_138003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_138003(context, evt)
	if 138001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_138003(context, evt)
	-- 创建id为138002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end