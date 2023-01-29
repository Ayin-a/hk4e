-- 基础信息
local base_info = {
	group_id = 220142007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7004, monster_id = 25080201, pos = { x = 125.471, y = 7.150, z = 42.953 }, rot = { x = 0.000, y = 259.516, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7005, monster_id = 25080201, pos = { x = 124.132, y = 7.150, z = 57.632 }, rot = { x = 0.000, y = 259.516, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7006, monster_id = 25100201, pos = { x = 129.455, y = 7.150, z = 54.500 }, rot = { x = 0.000, y = 262.954, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7007, monster_id = 25100101, pos = { x = 130.346, y = 7.150, z = 45.305 }, rot = { x = 0.000, y = 263.450, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7013, monster_id = 25080101, pos = { x = 128.366, y = 7.198, z = 66.291 }, rot = { x = 0.000, y = 212.663, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7014, monster_id = 25080101, pos = { x = 121.144, y = 7.198, z = 65.098 }, rot = { x = 0.000, y = 212.663, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7015, monster_id = 25080301, pos = { x = 126.725, y = 7.210, z = 36.630 }, rot = { x = 0.000, y = 308.852, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7016, monster_id = 25080301, pos = { x = 118.378, y = 7.210, z = 36.590 }, rot = { x = 0.000, y = 308.852, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7018, monster_id = 25080101, pos = { x = 111.107, y = 7.198, z = 65.089 }, rot = { x = 0.000, y = 176.733, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 7020, monster_id = 25080301, pos = { x = 110.566, y = 7.210, z = 36.182 }, rot = { x = 0.000, y = 29.216, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7001, gadget_id = 70360001, pos = { x = 120.815, y = 7.150, z = 52.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 7009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 102.574, y = 7.422, z = 49.953 } }
}

-- 触发器
triggers = {
	{ config_id = 1007008, name = "LEVEL_TAG_CHANGE_7008", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_7008", trigger_count = 0 },
	{ config_id = 1007009, name = "ENTER_REGION_7009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7009", action = "action_EVENT_ENTER_REGION_7009", trigger_count = 0 },
	{ config_id = 1007010, name = "ANY_MONSTER_DIE_7010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7010", action = "action_EVENT_ANY_MONSTER_DIE_7010", trigger_count = 0 },
	{ config_id = 1007011, name = "GROUP_LOAD_7011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_7011", trigger_count = 0 },
	{ config_id = 1007012, name = "ANY_MONSTER_DIE_7012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7012", action = "action_EVENT_ANY_MONSTER_DIE_7012", trigger_count = 0 },
	{ config_id = 1007017, name = "DUNGEON_ALL_AVATAR_DIE_7017", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_7017", trigger_count = 0 },
	{ config_id = 1007019, name = "DUNGEON_AVATAR_SLIP_DIE_7019", event = EventType.EVENT_DUNGEON_AVATAR_SLIP_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_AVATAR_SLIP_DIE_7019", trigger_count = 0 },
	{ config_id = 1007021, name = "DUNGEON_ALL_AVATAR_DIE_7021", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE_7021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "temp", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 7002, monster_id = 25080201, pos = { x = 119.123, y = 7.150, z = 52.214 }, rot = { x = 0.000, y = 259.516, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
		{ config_id = 7003, monster_id = 25080201, pos = { x = 119.723, y = 7.150, z = 48.256 }, rot = { x = 0.000, y = 259.516, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 }
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
		gadgets = { 7001 },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_7008", "GROUP_LOAD_7011", "DUNGEON_ALL_AVATAR_DIE_7017", "DUNGEON_AVATAR_SLIP_DIE_7019", "DUNGEON_ALL_AVATAR_DIE_7021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7004, 7005, 7006, 7007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 7009 },
		triggers = { "ENTER_REGION_7009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 7013, 7014, 7015, 7016, 7018, 7020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_7008(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if evt.param2 == 24 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 220142007, 2)
		
		ScriptLib.RemoveExtraGroupSuite(context, 220142007, 3)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7009(context, evt)
	if evt.param1 ~= 7009 then return false end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220142007) ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142007, 2)
	
	-- 改变指定group组220142002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142002, 2002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7010(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 2, 220142007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组220142002中， configid为2002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142002, 2002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220142006中， configid为6011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220142006, 6011, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220142006, monsters = {}, gadgets = {6012} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_7011(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.CheckSceneTag(context, 20142,1053 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"temp"为0
	if ScriptLib.GetGroupVariableValue(context, "temp") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7012(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "temp", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220142007, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_7017(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	ScriptLib.RemoveExtraGroupSuite(context, 220142007, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_AVATAR_SLIP_DIE_7019(context, evt)
	ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
	
	if ScriptLib.CheckSceneTag(context, 20142,1053 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "temp") == 1 then
		ScriptLib.SetGroupVariableValue(context, "temp", 0)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_ALL_AVATAR_DIE_7021(context, evt)
	ScriptLib.RemoveExtraGroupSuite(context, 220142007, 4)
	
	return 0
end