-- 基础信息
local base_info = {
	group_id = 133003492
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 492001, monster_id = 28040101, pos = { x = 2812.710, y = 256.200, z = -1373.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492002, monster_id = 28040101, pos = { x = 2807.238, y = 256.200, z = -1376.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492003, monster_id = 28040101, pos = { x = 2813.905, y = 256.200, z = -1358.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492004, monster_id = 28040101, pos = { x = 2805.295, y = 256.200, z = -1357.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492005, monster_id = 28040101, pos = { x = 2804.626, y = 256.200, z = -1339.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492006, monster_id = 28040101, pos = { x = 2798.732, y = 256.200, z = -1368.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492007, monster_id = 28040101, pos = { x = 2813.760, y = 256.200, z = -1336.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492008, monster_id = 28040101, pos = { x = 2809.776, y = 256.200, z = -1337.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492009, monster_id = 28040101, pos = { x = 2802.029, y = 256.200, z = -1334.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 },
	{ config_id = 492010, monster_id = 28040103, pos = { x = 2798.007, y = 256.200, z = -1348.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", area_id = 1 }
}

-- NPC
npcs = {
	{ config_id = 492014, npc_id = 20032, pos = { x = 2803.731, y = 256.547, z = -1326.462 }, rot = { x = 0.000, y = 143.588, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 492012, gadget_id = 70310006, pos = { x = 2806.521, y = 256.547, z = -1328.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1492011, name = "ANY_MONSTER_DIE_492011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "001", condition = "condition_EVENT_ANY_MONSTER_DIE_492011", action = "action_EVENT_ANY_MONSTER_DIE_492011" }
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
		npcs = { 492014 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 492001, 492002, 492003, 492004, 492005, 492006, 492007, 492008, 492009, 492010 },
		gadgets = { 492012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_492011" },
		npcs = { 492014 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_492011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_492011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003492") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end