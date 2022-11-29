-- 基础信息
local base_info = {
	group_id = 201018902
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
	{ config_id = 902001, gadget_id = 70300116, pos = { x = 11.147, y = 0.007, z = 4.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 902002, gadget_id = 70300116, pos = { x = -8.741, y = 0.007, z = 1.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 902003, gadget_id = 70300116, pos = { x = 2.171, y = 0.007, z = -8.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 902004, gadget_id = 70300116, pos = { x = -4.652, y = 0.007, z = -17.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1902005, name = "ANY_GADGET_DIE_902005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_902005", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 902001, 902002, 902003, 902004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_902005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_902005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2010189021") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end