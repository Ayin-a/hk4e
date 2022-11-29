-- 基础信息
local base_info = {
	group_id = 133003927
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 927002, monster_id = 20011201, pos = { x = 2761.467, y = 259.143, z = -1355.250 }, rot = { x = 0.000, y = 349.507, z = 345.886 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 927003, monster_id = 20011201, pos = { x = 2758.554, y = 259.059, z = -1351.822 }, rot = { x = 0.000, y = 349.507, z = 345.886 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 927004, monster_id = 20011201, pos = { x = 2760.789, y = 259.110, z = -1353.056 }, rot = { x = 0.000, y = 349.507, z = 345.886 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 927010, monster_id = 20011201, pos = { x = 2757.750, y = 259.110, z = -1354.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1927001, name = "ANY_MONSTER_DIE_927001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_927001", action = "action_EVENT_ANY_MONSTER_DIE_927001", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 927005, gadget_id = 70540011, pos = { x = 2755.438, y = 259.373, z = -1347.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 927002, 927003, 927004, 927010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_927001" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_927001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_927001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003927") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end