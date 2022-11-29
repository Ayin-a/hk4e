-- 基础信息
local base_info = {
	group_id = 133220645
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 645001, monster_id = 21010401, pos = { x = -2360.063, y = 232.769, z = -4343.095 }, rot = { x = 0.000, y = 34.675, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645002, monster_id = 21010501, pos = { x = -2361.019, y = 232.798, z = -4342.820 }, rot = { x = 0.000, y = 27.471, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645007, monster_id = 21010101, pos = { x = -2338.922, y = 231.132, z = -4329.908 }, rot = { x = 0.000, y = 216.390, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, pose_id = 9016, area_id = 11 },
	{ config_id = 645008, monster_id = 21010101, pos = { x = -2351.991, y = 232.178, z = -4329.063 }, rot = { x = 0.000, y = 15.802, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, pose_id = 9003, area_id = 11 },
	{ config_id = 645009, monster_id = 21010101, pos = { x = -2341.396, y = 230.669, z = -4329.815 }, rot = { x = 0.000, y = 151.402, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, pose_id = 9016, area_id = 11 },
	{ config_id = 645010, monster_id = 21030101, pos = { x = -2355.943, y = 233.212, z = -4329.654 }, rot = { x = 0.000, y = 43.590, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645011, monster_id = 21010701, pos = { x = -2348.415, y = 226.379, z = -4350.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645012, monster_id = 21010701, pos = { x = -2345.217, y = 226.122, z = -4353.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645013, monster_id = 21010701, pos = { x = -2353.642, y = 225.904, z = -4354.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 },
	{ config_id = 645014, monster_id = 21010101, pos = { x = -2350.547, y = 231.357, z = -4327.684 }, rot = { x = 0.000, y = 229.328, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, affix = { 1038 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 645005, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2344.503, y = 230.854, z = -4324.245 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1645003, name = "ANY_MONSTER_DIE_645003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_645003", action = "action_EVENT_ANY_MONSTER_DIE_645003" },
	{ config_id = 1645004, name = "QUEST_START_645004", event = EventType.EVENT_QUEST_START, source = "4002008", condition = "", action = "action_EVENT_QUEST_START_645004" },
	{ config_id = 1645005, name = "ENTER_REGION_645005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_645005", action = "action_EVENT_ENTER_REGION_645005" },
	{ config_id = 1645006, name = "ANY_MONSTER_DIE_645006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_645006", action = "action_EVENT_ANY_MONSTER_DIE_645006" }
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
		monsters = { 645001, 645007, 645008, 645009, 645014 },
		gadgets = { },
		regions = { 645005 },
		triggers = { "ENTER_REGION_645005", "ANY_MONSTER_DIE_645006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_645004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 645002, 645010, 645011, 645012, 645013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_645003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_645003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_645003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322064502") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_645004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220645, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_645005(context, evt)
	if evt.param1 ~= 645005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_645005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13322064501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_645006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_645006(context, evt)
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220645, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end