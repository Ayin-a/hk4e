-- 基础信息
local base_info = {
	group_id = 220142009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 25080401, pos = { x = 180.535, y = 5.090, z = 46.822 }, rot = { x = 0.000, y = 271.495, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 9002, monster_id = 25050301, pos = { x = 184.557, y = 5.095, z = 56.185 }, rot = { x = 0.000, y = 260.052, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9005, monster_id = 25050301, pos = { x = 184.878, y = 5.095, z = 42.668 }, rot = { x = 0.000, y = 266.828, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9011, monster_id = 25080401, pos = { x = 180.684, y = 5.090, z = 52.545 }, rot = { x = 0.000, y = 271.495, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 9012, monster_id = 25050401, pos = { x = 191.753, y = 5.150, z = 63.625 }, rot = { x = 0.000, y = 216.852, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9013, monster_id = 25050401, pos = { x = 190.890, y = 5.150, z = 36.901 }, rot = { x = 0.000, y = 338.940, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9014, monster_id = 25050301, pos = { x = 181.712, y = 5.150, z = 63.811 }, rot = { x = 0.000, y = 185.748, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9015, monster_id = 25050301, pos = { x = 173.342, y = 5.150, z = 63.881 }, rot = { x = 0.000, y = 185.748, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9016, monster_id = 25050301, pos = { x = 182.729, y = 5.150, z = 36.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 9017, monster_id = 25050301, pos = { x = 174.074, y = 5.150, z = 36.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9007, gadget_id = 70360001, pos = { x = 181.771, y = 5.181, z = 52.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 167.152, y = 5.206, z = 49.953 } }
}

-- 触发器
triggers = {
	{ config_id = 1009006, name = "ANY_MONSTER_DIE_9006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9006", action = "action_EVENT_ANY_MONSTER_DIE_9006", trigger_count = 0 },
	{ config_id = 1009008, name = "LEVEL_TAG_CHANGE_9008", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_9008", trigger_count = 0 },
	{ config_id = 1009009, name = "ENTER_REGION_9009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9009", action = "action_EVENT_ENTER_REGION_9009", trigger_count = 0 },
	{ config_id = 1009010, name = "ANY_MONSTER_DIE_9010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9010", action = "action_EVENT_ANY_MONSTER_DIE_9010", trigger_count = 0 },
	{ config_id = 1009018, name = "GROUP_LOAD_9018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9018", trigger_count = 0 },
	{ config_id = 1009019, name = "DUNGEON_ALL_AVATAR_DIE_9019", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_9019", trigger_count = 0 },
	{ config_id = 1009020, name = "DUNGEON_AVATAR_SLIP_DIE_9020", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_9020", trigger_count = 0 },
	{ config_id = 1009021, name = "DUNGEON_ALL_AVATAR_DIE_9021", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_9021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 9003, monster_id = 25050301, pos = { x = 184.420, y = 5.095, z = 50.929 }, rot = { x = 0.000, y = 266.828, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
		{ config_id = 9004, monster_id = 25050301, pos = { x = 184.577, y = 5.095, z = 48.095 }, rot = { x = 0.000, y = 266.828, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
	}
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
		gadgets = { 9007 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_9008", "GROUP_LOAD_9018", "DUNGEON_ALL_AVATAR_DIE_9019", "DUNGEON_AVATAR_SLIP_DIE_9020", "DUNGEON_ALL_AVATAR_DIE_9021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001, 9002, 9005, 9011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 9009 },
		triggers = { "ENTER_REGION_9009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 9012, 9013, 9014, 9015, 9016, 9017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220142009) ~= 0 then
		return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9006(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142009, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_9008(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if evt.param2 == 27 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142009, 2)
		
		ScriptLib.RemoveExtraGroupSuite(context, 220142009, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9009(context, evt)
	if evt.param1 ~= 9009 then return false end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142009, 2)
	
	-- 改变指定group组220142003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142003, 3002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9010(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组220142003中， configid为3002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142003, 3002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220142004中， configid为4021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142004, 4021, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220142004, monsters = {}, gadgets = {4024} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9018(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	if ScriptLib.CheckSceneTag(context, 20142,1056 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_9019(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 220142009, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_9020(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.CheckSceneTag(context, 20142,1056 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_9021(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 220142009, 4)
	
	return 0
end