-- 基础信息
local base_info = {
	group_id = 133107949
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
	{ config_id = 949002, gadget_id = 70710290, pos = { x = -262.652, y = 250.858, z = 347.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7, is_enable_interact = false },
	{ config_id = 949003, gadget_id = 70710294, pos = { x = -262.652, y = 250.858, z = 347.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 949001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -364.338, y = 209.106, z = 350.375 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1949001, name = "ENTER_REGION_949001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_949001" }
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
		gadgets = { 949002 },
		regions = { 949001 },
		triggers = { "ENTER_REGION_949001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 949003 },
		regions = { },
		triggers = { },
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
function action_EVENT_ENTER_REGION_949001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310794901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end