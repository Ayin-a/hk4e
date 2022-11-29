-- 基础信息
local base_info = {
	group_id = 133303343
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343002, monster_id = 26120401, pos = { x = -2237.699, y = 273.749, z = 3958.342 }, rot = { x = 0.000, y = 345.621, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 343003, monster_id = 20011401, pos = { x = -2234.709, y = 274.360, z = 3957.480 }, rot = { x = 0.000, y = 338.623, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 343004, monster_id = 20011401, pos = { x = -2239.306, y = 274.073, z = 3956.670 }, rot = { x = 0.000, y = 348.529, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 343007, monster_id = 26120101, pos = { x = -2245.927, y = 271.413, z = 3961.665 }, rot = { x = 0.000, y = 82.443, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 26 },
	{ config_id = 343008, monster_id = 26120401, pos = { x = -2243.746, y = 272.730, z = 3958.458 }, rot = { x = 0.000, y = 47.527, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 343001, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2237.271, y = 273.242, z = 3961.814 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1343001, name = "ENTER_REGION_343001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_343001", action = "action_EVENT_ENTER_REGION_343001" },
	{ config_id = 1343005, name = "ANY_MONSTER_DIE_343005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343005", action = "action_EVENT_ANY_MONSTER_DIE_343005" },
	{ config_id = 1343006, name = "ANY_MONSTER_DIE_343006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343006", action = "action_EVENT_ANY_MONSTER_DIE_343006" }
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
		regions = { 343001 },
		triggers = { "ENTER_REGION_343001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 343002, 343003, 343004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_343005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 343007, 343008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_343006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_343001(context, evt)
	if evt.param1 ~= 343001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_343001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303343, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303343, 3)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_343006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343006(context, evt)
	-- 改变指定group组133303344中， configid为344001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133303344, 344001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end