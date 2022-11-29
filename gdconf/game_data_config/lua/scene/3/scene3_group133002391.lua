-- 基础信息
local base_info = {
	group_id = 133002391
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 391002, monster_id = 25010201, pos = { x = 1883.385, y = 246.096, z = -496.554 }, rot = { x = 0.000, y = 168.023, z = 0.000 }, level = 10, drop_id = 1000100, area_id = 3 },
	{ config_id = 391003, monster_id = 25060101, pos = { x = 1877.001, y = 246.039, z = -494.928 }, rot = { x = 0.000, y = 66.228, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, affix = { 1018 }, isElite = true, area_id = 3 },
	{ config_id = 391004, monster_id = 25020201, pos = { x = 1870.612, y = 246.226, z = -491.453 }, rot = { x = 0.000, y = 68.076, z = 0.000 }, level = 10, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 391001, gadget_id = 70310006, pos = { x = 1879.045, y = 245.886, z = -494.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1391005, name = "ANY_MONSTER_DIE_391005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_391005", action = "action_EVENT_ANY_MONSTER_DIE_391005" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 391002, 391003, 391004 },
		gadgets = { 391001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_391005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_391005(context, evt)
	--判断死亡怪物的configid是否为 391003
	if evt.param1 ~= 391003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_391005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1880,y=245,z=-495}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110162, pos, 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330023911") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end