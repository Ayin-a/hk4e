-- 基础信息
local base_info = {
	group_id = 155006082
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82001, monster_id = 20010501, pos = { x = 469.723, y = 149.306, z = -202.995 }, rot = { x = 18.062, y = 286.077, z = 3.696 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82002, gadget_id = 70220050, pos = { x = 469.868, y = 149.072, z = -203.051 }, rot = { x = 346.382, y = 143.165, z = 348.438 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82003, gadget_id = 70220051, pos = { x = 468.903, y = 148.771, z = -203.337 }, rot = { x = 17.332, y = 209.119, z = 26.729 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 82004, gadget_id = 70220052, pos = { x = 469.300, y = 148.725, z = -202.468 }, rot = { x = 2.388, y = 4.711, z = 17.637 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082005, name = "ANY_GADGET_DIE_82005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_82005", action = "action_EVENT_ANY_GADGET_DIE_82005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1082006, name = "ANY_MONSTER_DIE_82006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82006", action = "", trigger_count = 0 }
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
		gadgets = { 82002, 82003, 82004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_82005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 82001 },
		gadgets = { 82002, 82003, 82004 },
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
function condition_EVENT_ANY_GADGET_DIE_82005(context, evt)
	if 82002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_82005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006082, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end