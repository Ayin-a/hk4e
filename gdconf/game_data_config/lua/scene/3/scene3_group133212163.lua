-- 基础信息
local base_info = {
	group_id = 133212163
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
	{ config_id = 163006, npc_id = 20291, pos = { x = -3462.290, y = 210.965, z = -2645.172 }, rot = { x = 0.000, y = 93.717, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 163002, gadget_id = 70500000, pos = { x = -3462.301, y = 210.956, z = -2645.082 }, rot = { x = 278.929, y = 309.476, z = 139.231 }, level = 27, point_type = 9180, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 163001, shape = RegionShape.SPHERE, radius = 35, pos = { x = -3444.412, y = 200.780, z = -2648.878 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1163001, name = "ENTER_REGION_163001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_163001", trigger_count = 0 }
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
		regions = { 163001 },
		triggers = { "ENTER_REGION_163001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 163002 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_163001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7216101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end