-- 基础信息
local base_info = {
	group_id = 155006080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 20010501, pos = { x = 414.530, y = 142.745, z = -169.415 }, rot = { x = 0.398, y = 283.045, z = 1.349 }, level = 36, drop_tag = "史莱姆", isOneoff = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 80002, gadget_id = 70220050, pos = { x = 414.520, y = 142.752, z = -169.591 }, rot = { x = 4.997, y = 143.447, z = 0.741 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 80003, gadget_id = 70220051, pos = { x = 414.204, y = 142.743, z = -170.182 }, rot = { x = 359.279, y = 205.306, z = 3.615 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	{ config_id = 80004, gadget_id = 70220052, pos = { x = 415.271, y = 142.719, z = -169.364 }, rot = { x = 356.676, y = 3.917, z = 356.195 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1080005, name = "ANY_GADGET_DIE_80005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_80005", action = "action_EVENT_ANY_GADGET_DIE_80005", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1080006, name = "ANY_MONSTER_DIE_80006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_80006", action = "", trigger_count = 0 }
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
		gadgets = { 80002, 80003, 80004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_80005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 80001 },
		gadgets = { 80002, 80003, 80004 },
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
function condition_EVENT_ANY_GADGET_DIE_80005(context, evt)
	if 80002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_80005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155006080, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end