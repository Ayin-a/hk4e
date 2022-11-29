-- 基础信息
local base_info = {
	group_id = 139999010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21011201, pos = { x = 1.713, y = 0.199, z = 0.094 }, rot = { x = 0.000, y = 10.589, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 10002, monster_id = 21011201, pos = { x = 2.725, y = 0.474, z = 1.446 }, rot = { x = 0.000, y = 214.664, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 10003, monster_id = 21011201, pos = { x = -0.520, y = 0.212, z = 1.317 }, rot = { x = 0.000, y = 47.096, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 10004, monster_id = 21030401, pos = { x = 1.106, y = 0.467, z = 2.560 }, rot = { x = 0.112, y = 210.190, z = 0.109 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 1 },
	{ config_id = 10005, monster_id = 21020301, pos = { x = 0.263, y = 0.525, z = 3.625 }, rot = { x = 0.000, y = 170.966, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 },
	{ config_id = 10006, monster_id = 21020301, pos = { x = 1.832, y = 0.710, z = 3.719 }, rot = { x = 0.000, y = 217.247, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10009, shape = RegionShape.SPHERE, radius = 50, pos = { x = 0.057, y = 0.017, z = 0.089 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1010009, name = "ENTER_REGION_10009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10009", action = "action_EVENT_ENTER_REGION_10009", forbid_guest = false },
	{ config_id = 1010010, name = "ANY_MONSTER_DIE_10010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10010", action = "action_EVENT_ANY_MONSTER_DIE_10010" }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_7", value = 0, no_refresh = false },
	{ config_id = 2, name = "is_8", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 10001, 10002, 10003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 10001, 10003, 10004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 10001, 10003, 10005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10010" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 10001, 10003, 10006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10009(context, evt)
	if evt.param1 ~= 10009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10009(context, evt)
	-- 调用提示id为 1110019 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 10, true)
	
	
	return 0
end