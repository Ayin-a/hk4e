-- 基础信息
local base_info = {
	group_id = 144001120
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 21030301, pos = { x = 787.885, y = 244.874, z = 293.042 }, rot = { x = 0.000, y = 153.458, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 120005, monster_id = 21010501, pos = { x = 792.630, y = 246.485, z = 290.313 }, rot = { x = 0.000, y = 337.570, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 120007, monster_id = 21010301, pos = { x = 789.491, y = 244.636, z = 294.438 }, rot = { x = 0.000, y = 193.813, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102, guest_ban_drop = 1000100 },
	{ config_id = 120008, monster_id = 21010301, pos = { x = 785.835, y = 244.530, z = 293.494 }, rot = { x = 0.000, y = 149.417, z = 0.000 }, level = 20, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102, guest_ban_drop = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 120002, shape = RegionShape.SPHERE, radius = 13, pos = { x = 786.760, y = 245.282, z = 292.974 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1120002, name = "ENTER_REGION_120002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_120002", action = "action_EVENT_ENTER_REGION_120002" },
	{ config_id = 1120003, name = "ANY_MONSTER_DIE_120003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120003", action = "action_EVENT_ANY_MONSTER_DIE_120003" },
	{ config_id = 1120004, name = "QUEST_START_120004", event = EventType.EVENT_QUEST_START, source = "7900204", condition = "", action = "action_EVENT_QUEST_START_120004" },
	{ config_id = 1120006, name = "GROUP_LOAD_120006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_120006", action = "action_EVENT_GROUP_LOAD_120006" },
	{ config_id = 1120009, name = "ANY_MONSTER_DIE_120009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_120009", action = "action_EVENT_ANY_MONSTER_DIE_120009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = false }
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
		regions = { 120002 },
		triggers = { "ENTER_REGION_120002", "ANY_MONSTER_DIE_120003", "QUEST_START_120004", "GROUP_LOAD_120006", "ANY_MONSTER_DIE_120009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120001, 120005, 120007, 120008 },
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
function condition_EVENT_ENTER_REGION_120002(context, evt)
	if evt.param1 ~= 120002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_120002(context, evt)
	-- 针对当前group内变量名为 "findpoint" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "findpoint", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "4001002" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "4001002", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	--判断死亡怪物的configid是否为 120001
	if evt.param1 ~= 120001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120003(context, evt)
	-- 针对当前group内变量名为 "samandie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "samandie", 1, 144001002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001116, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_120004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001120, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_120006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001116, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_120009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_120009(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end