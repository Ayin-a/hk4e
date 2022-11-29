-- 基础信息
local base_info = {
	group_id = 111102088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 21020201, pos = { x = 1808.229, y = 194.933, z = -1413.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "丘丘暴徒" },
	{ config_id = 88002, monster_id = 25100101, pos = { x = 1807.889, y = 194.959, z = -1407.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 90, drop_tag = "高阶武士", pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 88003, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1809.462, y = 194.836, z = -1412.023 } }
}

-- 触发器
triggers = {
	{ config_id = 1088004, name = "VARIABLE_CHANGE_88004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_88004", trigger_count = 0 },
	{ config_id = 1088005, name = "ANY_MONSTER_DIE_88005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_88005", trigger_count = 0 },
	{ config_id = 1088006, name = "ANY_MONSTER_LIVE_88006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_88006", trigger_count = 0 },
	{ config_id = 1088007, name = "MONSTER_BATTLE_88007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_88007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Test", value = 0, no_refresh = false }
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
		monsters = { 88001 },
		gadgets = { },
		regions = { 88003 },
		triggers = { "VARIABLE_CHANGE_88004", "ANY_MONSTER_DIE_88005", "ANY_MONSTER_LIVE_88006", "MONSTER_BATTLE_88007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 88002 },
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

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_88004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if evt.param1 == evt.param2 then return -1 end
	
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	local ret = ScriptLib.IsInRegion(context, context.owner_uid, 88003)
	if ret == true then
		ScriptLib.PrintContextLog(context, "ret="..true)
	end
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88005(context, evt)
	ScriptLib.PrintContextLog(context, "monster_die : "..evt.param1)
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_88006(context, evt)
	ScriptLib.PrintContextLog(context, "monster_live : "..evt.param1)
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_88007(context, evt)
	ScriptLib.PrintContextLog(context, "monster_battle : "..evt.param1)
	return 0
end