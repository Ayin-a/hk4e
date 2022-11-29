-- 基础信息
local base_info = {
	group_id = 133003518
}

-- Trigger变量
local defs = {
	gadget_1 = 518002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 518001, monster_id = 21030301, pos = { x = 2180.199, y = 212.563, z = -1463.725 }, rot = { x = 0.000, y = 135.456, z = 0.000 }, level = 5, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 518004, monster_id = 21020101, pos = { x = 2182.643, y = 212.596, z = -1463.857 }, rot = { x = 0.000, y = 156.008, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 518005, monster_id = 21020201, pos = { x = 2179.679, y = 212.908, z = -1466.953 }, rot = { x = 0.000, y = 131.256, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 518006, monster_id = 21010101, pos = { x = 2192.530, y = 212.274, z = -1476.446 }, rot = { x = 0.000, y = 301.767, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 518007, monster_id = 21010101, pos = { x = 2192.031, y = 212.422, z = -1478.049 }, rot = { x = 0.000, y = 324.498, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 518008, monster_id = 21010101, pos = { x = 2193.543, y = 212.255, z = -1475.253 }, rot = { x = 0.000, y = 278.644, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 518002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2192.710, y = 212.376, z = -1477.539 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1518002, name = "ENTER_REGION_518002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_518002", action = "" },
	{ config_id = 1518013, name = "ANY_MONSTER_DIE_518013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_518013", action = "action_EVENT_ANY_MONSTER_DIE_518013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "quest_value", value = 0, no_refresh = false }
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
		regions = { 518002 },
		triggers = { "ENTER_REGION_518002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 518001, 518004, 518005, 518006, 518007, 518008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_518013" },
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
function condition_EVENT_ENTER_REGION_518002(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2010302) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_518013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_518013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330035121") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end