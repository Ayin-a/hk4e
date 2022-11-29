-- 基础信息
local base_info = {
	group_id = 133212179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179001, monster_id = 25100101, pos = { x = -4059.121, y = 280.622, z = -2427.301 }, rot = { x = 0.000, y = 301.656, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 13 },
	{ config_id = 179002, monster_id = 25100101, pos = { x = -4057.370, y = 280.428, z = -2443.286 }, rot = { x = 0.000, y = 221.265, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 13 },
	{ config_id = 179004, monster_id = 25100101, pos = { x = -4046.193, y = 277.782, z = -2433.954 }, rot = { x = 0.000, y = 95.760, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179005, gadget_id = 70900401, pos = { x = -4055.184, y = 279.960, z = -2432.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 179006, gadget_id = 70950141, pos = { x = -4056.681, y = 280.323, z = -2433.021 }, rot = { x = 0.000, y = 88.215, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 179007, gadget_id = 70300104, pos = { x = -4061.247, y = 281.257, z = -2443.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 179008, gadget_id = 70300105, pos = { x = -4051.501, y = 278.387, z = -2426.714 }, rot = { x = 349.358, y = 308.007, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 179009, gadget_id = 70950139, pos = { x = -4050.563, y = 278.818, z = -2442.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 179010, gadget_id = 70950139, pos = { x = -4049.076, y = 278.514, z = -2441.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1179003, name = "ANY_MONSTER_DIE_179003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_179003", action = "action_EVENT_ANY_MONSTER_DIE_179003", trigger_count = 0 }
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
		monsters = { 179001, 179002, 179004 },
		gadgets = { 179005, 179006, 179007, 179008, 179009, 179010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_179003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_179003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_179003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7219611_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end