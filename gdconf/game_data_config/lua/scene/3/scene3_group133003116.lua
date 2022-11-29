-- 基础信息
local base_info = {
	group_id = 133003116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 586, monster_id = 28020102, pos = { x = 2249.311, y = 271.116, z = -1745.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2839, gadget_id = 70220021, pos = { x = 2231.765, y = 272.009, z = -1767.978 }, rot = { x = 34.869, y = 306.090, z = 284.897 }, level = 15, isOneoff = true, area_id = 1 },
	{ config_id = 2840, gadget_id = 70211101, pos = { x = 2231.423, y = 272.993, z = -1766.135 }, rot = { x = 8.290, y = 326.008, z = 356.504 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000149, name = "ANY_GADGET_DIE_149", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_149", action = "action_EVENT_ANY_GADGET_DIE_149" }
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
		monsters = { 586 },
		gadgets = { 2839 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_149" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_149(context, evt)
	if 2839 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_149(context, evt)
	-- 创建id为2840的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2840 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end