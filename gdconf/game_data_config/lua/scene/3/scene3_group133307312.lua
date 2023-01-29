-- 基础信息
local base_info = {
	group_id = 133307312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312004, monster_id = 28050106, pos = { x = -1541.936, y = 28.611, z = 5214.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312001, gadget_id = 70330342, pos = { x = -1543.085, y = 29.075, z = 5215.532 }, rot = { x = 14.362, y = 25.451, z = 314.120 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 },
	{ config_id = 312002, gadget_id = 70330430, pos = { x = -1542.984, y = 28.526, z = 5213.767 }, rot = { x = 350.320, y = 9.635, z = 319.979 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1312003, name = "ANY_GADGET_DIE_312003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_312003", action = "action_EVENT_ANY_GADGET_DIE_312003" }
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
		gadgets = { 312001, 312002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_312003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 312004 },
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
function condition_EVENT_ANY_GADGET_DIE_312003(context, evt)
	if 312002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_312003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307312, 2)
	
	return 0
end