-- 基础信息
local base_info = {
	group_id = 133105195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195004, monster_id = 23010601, pos = { x = 850.219, y = 278.778, z = -221.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "先遣队", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 195001, gadget_id = 70300088, pos = { x = 842.066, y = 281.921, z = -230.536 }, rot = { x = 0.000, y = 307.160, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 195003, gadget_id = 70211101, pos = { x = 840.911, y = 281.233, z = -232.455 }, rot = { x = 1.454, y = 38.458, z = 2.089 }, level = 21, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1195002, name = "ANY_GADGET_DIE_195002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_195002", action = "action_EVENT_ANY_GADGET_DIE_195002" }
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
		monsters = { 195004 },
		gadgets = { 195001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_195002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_195002(context, evt)
	if 195001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_195002(context, evt)
	-- 创建id为195003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 195003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end