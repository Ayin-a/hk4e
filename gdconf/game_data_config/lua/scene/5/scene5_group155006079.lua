-- 基础信息
local base_info = {
	group_id = 155006079
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 20011201, pos = { x = 477.108, y = 145.192, z = -176.743 }, rot = { x = 0.000, y = 283.041, z = 0.000 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79002, gadget_id = 70220050, pos = { x = 476.879, y = 144.899, z = -176.902 }, rot = { x = 0.688, y = 142.568, z = 22.304 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 79003, gadget_id = 70220051, pos = { x = 476.129, y = 144.017, z = -177.086 }, rot = { x = 359.112, y = 205.355, z = 323.740 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 79004, gadget_id = 70220052, pos = { x = 476.607, y = 144.586, z = -177.356 }, rot = { x = 12.932, y = 8.329, z = 34.185 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079005, name = "ANY_GADGET_DIE_79005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79005", action = "action_EVENT_ANY_GADGET_DIE_79005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1079006, name = "ANY_MONSTER_DIE_79006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79006", action = "", trigger_count = 0 }
	}
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
		gadgets = { 79002, 79003, 79004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79001 },
		gadgets = { 79002, 79003, 79004 },
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
function condition_EVENT_ANY_GADGET_DIE_79005(context, evt)
	if 79002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006079, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end