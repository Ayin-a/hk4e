-- 基础信息
local base_info = {
	group_id = 133104174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 174001, monster_id = 25030301, pos = { x = 296.490, y = 201.845, z = 44.301 }, rot = { x = 0.000, y = 35.701, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 174002, monster_id = 25030301, pos = { x = 297.564, y = 202.971, z = 52.069 }, rot = { x = 0.000, y = 278.015, z = 0.000 }, level = 15, drop_id = 1000100, pose_id = 9003, area_id = 9 },
	{ config_id = 174003, monster_id = 25030201, pos = { x = 293.694, y = 203.460, z = 51.966 }, rot = { x = 358.114, y = 125.940, z = 358.633 }, level = 15, drop_id = 1000100, area_id = 9 },
	{ config_id = 174004, monster_id = 25070101, pos = { x = 298.871, y = 201.399, z = 41.813 }, rot = { x = 0.000, y = 334.798, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 9 },
	{ config_id = 174005, monster_id = 25060101, pos = { x = 307.752, y = 201.173, z = 44.071 }, rot = { x = 0.000, y = 288.206, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 9 },
	{ config_id = 174006, monster_id = 25030301, pos = { x = 303.741, y = 201.024, z = 42.691 }, rot = { x = 0.000, y = 301.197, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 9 },
	{ config_id = 174007, monster_id = 25010401, pos = { x = 305.875, y = 201.453, z = 45.848 }, rot = { x = 0.000, y = 213.810, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 9 },
	{ config_id = 174010, monster_id = 25010601, pos = { x = 291.582, y = 204.696, z = 49.540 }, rot = { x = 0.000, y = 111.545, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 9 }
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
	{ config_id = 1174008, name = "ANY_MONSTER_DIE_174008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174008", action = "action_EVENT_ANY_MONSTER_DIE_174008" },
	{ config_id = 1174009, name = "ANY_MONSTER_DIE_174009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_174009", action = "action_EVENT_ANY_MONSTER_DIE_174009" }
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
		monsters = { 174001, 174002, 174007, 174010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 174003, 174004, 174005, 174006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_174009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_174008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104174, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_174009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_174009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133104174") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end