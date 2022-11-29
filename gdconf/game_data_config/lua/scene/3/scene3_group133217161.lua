-- 基础信息
local base_info = {
	group_id = 133217161
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
	{ config_id = 161001, gadget_id = 70710325, pos = { x = -4725.122, y = 216.218, z = -3717.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 161002, gadget_id = 70710325, pos = { x = -4720.566, y = 216.218, z = -3716.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 161003, gadget_id = 70710325, pos = { x = -4719.771, y = 216.218, z = -3705.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 161004, gadget_id = 70710325, pos = { x = -4723.103, y = 216.218, z = -3704.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161005, name = "ANY_GADGET_DIE_161005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_161005", trigger_count = 0 }
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
		gadgets = { 161001, 161002, 161003, 161004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_161005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_161005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133127161") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end