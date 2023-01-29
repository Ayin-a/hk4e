-- 基础信息
local base_info = {
	group_id = 133313272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 272004, monster_id = 28060401, pos = { x = -978.898, y = -219.351, z = 5845.255 }, rot = { x = 0.000, y = 216.799, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 272006, monster_id = 28050106, pos = { x = -995.956, y = -218.206, z = 5840.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 272007, monster_id = 28050106, pos = { x = -995.956, y = -217.951, z = 5841.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 272001, gadget_id = 70330430, pos = { x = -979.230, y = -219.637, z = 5845.144 }, rot = { x = 354.745, y = 7.930, z = 17.473 }, level = 32, area_id = 32 },
	{ config_id = 272002, gadget_id = 70330430, pos = { x = -995.587, y = -218.817, z = 5840.996 }, rot = { x = 354.745, y = 7.930, z = 345.446 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1272003, name = "ANY_GADGET_DIE_272003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_272003", action = "action_EVENT_ANY_GADGET_DIE_272003" },
	{ config_id = 1272005, name = "ANY_GADGET_DIE_272005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_272005", action = "action_EVENT_ANY_GADGET_DIE_272005" }
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
		gadgets = { 272001, 272002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_272003", "ANY_GADGET_DIE_272005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 272004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 272006, 272007 },
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
function condition_EVENT_ANY_GADGET_DIE_272003(context, evt)
	if 272001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_272003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313272, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_272005(context, evt)
	if 272002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_272005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313272, 3)
	
	return 0
end