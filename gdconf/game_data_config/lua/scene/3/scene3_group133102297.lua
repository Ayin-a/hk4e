-- 基础信息
local base_info = {
	group_id = 133102297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 21011201, pos = { x = 1186.828, y = 200.119, z = 125.869 }, rot = { x = 0.000, y = 113.786, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 297002, monster_id = 21011201, pos = { x = 1188.437, y = 200.171, z = 118.090 }, rot = { x = 9.555, y = 73.918, z = 345.225 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 297004, monster_id = 21010601, pos = { x = 1179.459, y = 201.644, z = 128.157 }, rot = { x = 0.000, y = 116.557, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 297005, monster_id = 21010601, pos = { x = 1178.554, y = 201.624, z = 119.149 }, rot = { x = 0.000, y = 66.432, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 297010, monster_id = 21030401, pos = { x = 1174.810, y = 202.871, z = 120.137 }, rot = { x = 353.686, y = 42.366, z = 334.421 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 297024, monster_id = 21020301, pos = { x = 1176.440, y = 203.366, z = 123.588 }, rot = { x = 0.000, y = 77.723, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297011, gadget_id = 70211012, pos = { x = 1174.686, y = 203.681, z = 123.127 }, rot = { x = 7.103, y = 88.810, z = 0.323 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 297012, gadget_id = 70220013, pos = { x = 1174.114, y = 200.695, z = 135.393 }, rot = { x = 17.425, y = 82.487, z = 348.921 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297014, gadget_id = 70300089, pos = { x = 1181.726, y = 201.058, z = 119.273 }, rot = { x = 350.887, y = 13.516, z = 352.408 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297015, gadget_id = 70300089, pos = { x = 1181.264, y = 201.682, z = 125.961 }, rot = { x = 347.846, y = 306.177, z = 347.066 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297016, gadget_id = 70300081, pos = { x = 1189.291, y = 199.376, z = 128.601 }, rot = { x = 3.684, y = 321.492, z = 359.860 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297017, gadget_id = 70220026, pos = { x = 1178.112, y = 200.000, z = 134.271 }, rot = { x = 3.876, y = 311.234, z = 351.577 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297018, gadget_id = 70300081, pos = { x = 1189.953, y = 199.749, z = 116.110 }, rot = { x = 353.940, y = 36.984, z = 0.000 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297019, gadget_id = 70220035, pos = { x = 1181.256, y = 200.778, z = 130.093 }, rot = { x = 9.788, y = 100.473, z = 14.913 }, level = 16, persistent = true, area_id = 5 },
	{ config_id = 297020, gadget_id = 70220035, pos = { x = 1186.533, y = 200.310, z = 117.770 }, rot = { x = 347.702, y = 0.401, z = 353.815 }, level = 16, persistent = true, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 297006, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1180.665, y = 200.000, z = 124.648 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1297003, name = "ANY_MONSTER_DIE_297003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297003", action = "action_EVENT_ANY_MONSTER_DIE_297003" },
	{ config_id = 1297006, name = "ENTER_REGION_297006", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_297006", action = "action_EVENT_ENTER_REGION_297006" },
	{ config_id = 1297007, name = "QUEST_FINISH_297007", event = EventType.EVENT_QUEST_FINISH, source = "2100301", condition = "", action = "action_EVENT_QUEST_FINISH_297007" },
	{ config_id = 1297008, name = "QUEST_FINISH_297008", event = EventType.EVENT_QUEST_FINISH, source = "2100302", condition = "", action = "action_EVENT_QUEST_FINISH_297008" },
	{ config_id = 1297009, name = "QUEST_FINISH_297009", event = EventType.EVENT_QUEST_FINISH, source = "2100399", condition = "condition_EVENT_QUEST_FINISH_297009", action = "action_EVENT_QUEST_FINISH_297009" },
	{ config_id = 1297013, name = "GROUP_LOAD_297013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_297013", trigger_count = 0 },
	{ config_id = 1297021, name = "ANY_MONSTER_DIE_297021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297021", action = "action_EVENT_ANY_MONSTER_DIE_297021", trigger_count = 0 },
	{ config_id = 1297022, name = "GROUP_LOAD_297022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_297022", trigger_count = 0 },
	{ config_id = 1297023, name = "QUEST_START_297023", event = EventType.EVENT_QUEST_START, source = "2100320", condition = "", action = "action_EVENT_QUEST_START_297023", trigger_count = 0 },
	{ config_id = 1297025, name = "QUEST_START_297025", event = EventType.EVENT_QUEST_START, source = "2100311", condition = "", action = "action_EVENT_QUEST_START_297025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isAcceptQuest", value = 0, no_refresh = true },
	{ config_id = 2, name = "isFindBridge", value = 0, no_refresh = true },
	{ config_id = 3, name = "isDefeatEnemies", value = 0, no_refresh = true },
	{ config_id = 4, name = "isFinished", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		triggers = { "QUEST_FINISH_297007", "QUEST_FINISH_297008", "QUEST_START_297025" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 297001, 297002, 297004, 297005, 297010, 297024 },
		gadgets = { 297011, 297012, 297014, 297015, 297016, 297017, 297018, 297019, 297020 },
		regions = { 297006 },
		triggers = { "ANY_MONSTER_DIE_297003", "ENTER_REGION_297006", "QUEST_FINISH_297007", "QUEST_FINISH_297008", "QUEST_FINISH_297009", "GROUP_LOAD_297013", "ANY_MONSTER_DIE_297021", "QUEST_START_297023", "QUEST_START_297025" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_297022" },
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
function condition_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "defeat_with_quest") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isDefeatEnemies" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isDefeatEnemies", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 297011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_297006(context, evt)
	if evt.param1 ~= 297006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_297006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "find_bridge") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "isFindBridge" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFindBridge", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_297007(context, evt)
	-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_297008(context, evt)
	-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_297009(context, evt)
	-- 判断变量"isAcceptQuest"为1
	if ScriptLib.GetGroupVariableValue(context, "isAcceptQuest") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_297009(context, evt)
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102297, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_297013(context, evt)
				if  ScriptLib.GetGroupMonsterCountByGroupId(context, 133102297) == 0 and ScriptLib.GetGroupSuite(context, 133102297) == 2 then
					ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1)
					ScriptLib.SetGroupVariableValue(context, "isDefeatEnemies",1)
					ScriptLib.SetGroupVariableValue(context, "isFindBridge",1)
					-- 将configid为 297011 的物件更改为状态 GadgetState.Default
					if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297011, GadgetState.Default) then
						return -1
			
					end 
					ScriptLib.AddQuestProgress(context, "already_defeat")
			
				end
			
				return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297021(context, evt)
	-- 将本组内变量名为 "isDefeatEnemies" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isDefeatEnemies", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 297011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_297022(context, evt)
	-- 将configid为 297011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_297023(context, evt)
		-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
		ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1)
		if ScriptLib.GetGroupVariableValue(context, "isDefeatEnemies") == 1 then
			ScriptLib.AddQuestProgress(context, "already_defeat")
		end
		
		return 0
end

-- 触发操作
function action_EVENT_QUEST_START_297025(context, evt)
		-- 将本组内变量名为 "isAcceptQuest" 的变量设置为 1
		ScriptLib.SetGroupVariableValue(context, "isAcceptQuest", 1)
		if ScriptLib.GetGroupVariableValue(context, "isDefeatEnemies") == 1 then
			ScriptLib.AddQuestProgress(context, "already_defeat")
		end
		
		return 0
end