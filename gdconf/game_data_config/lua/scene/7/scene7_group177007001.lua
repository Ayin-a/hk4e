-- 基础信息
local base_info = {
	group_id = 177007001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 21010101, pos = { x = 373.329, y = 301.655, z = 316.642 }, rot = { x = 0.000, y = 210.362, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 9012, area_id = 210 },
	{ config_id = 1003, monster_id = 22010401, pos = { x = 374.920, y = 301.782, z = 312.662 }, rot = { x = 0.000, y = 293.776, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 9013, area_id = 210 },
	{ config_id = 1004, monster_id = 21010101, pos = { x = 370.211, y = 301.643, z = 312.161 }, rot = { x = 0.000, y = 41.108, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 9012, area_id = 210 },
	{ config_id = 1005, monster_id = 21010101, pos = { x = 368.766, y = 301.627, z = 316.665 }, rot = { x = 0.000, y = 113.508, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 5135 }, pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1006, gadget_id = 70300107, pos = { x = 371.319, y = 301.622, z = 314.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 1009, gadget_id = 70220065, pos = { x = 363.573, y = 301.689, z = 309.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 210 },
	{ config_id = 1010, gadget_id = 70220065, pos = { x = 361.366, y = 301.757, z = 308.800 }, rot = { x = 0.000, y = 336.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 210 },
	{ config_id = 1011, gadget_id = 70220066, pos = { x = 362.198, y = 301.647, z = 310.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 1008, shape = RegionShape.SPHERE, radius = 15, pos = { x = 371.425, y = 301.625, z = 314.650 }, area_id = 210 }
}

-- 触发器
triggers = {
	-- 临时数据
	{ config_id = 1001002, name = "ANY_MONSTER_DIE_1002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1002", action = "action_EVENT_ANY_MONSTER_DIE_1002" },
	{ config_id = 1001008, name = "ENTER_REGION_1008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1008", action = "action_EVENT_ENTER_REGION_1008" }
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
		monsters = { 1001, 1003, 1004, 1005 },
		gadgets = { 1006, 1009, 1010, 1011 },
		regions = { 1008 },
		triggers = { "ANY_MONSTER_DIE_1002", "ENTER_REGION_1008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "400471401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1008(context, evt)
	if evt.param1 ~= 1008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1008(context, evt)
	ScriptLib.AddRegionalPlayVarValue(context, context.uid, 2501, 100)
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,155,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end