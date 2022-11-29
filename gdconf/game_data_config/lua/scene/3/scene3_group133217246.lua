-- 基础信息
local base_info = {
	group_id = 133217246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 24020201, pos = { x = -4428.052, y = 164.475, z = -3776.283 }, rot = { x = 5.984, y = 213.016, z = 3.875 }, level = 30, drop_tag = "拟生机关", isOneoff = true, pose_id = 101, area_id = 14 },
	{ config_id = 246003, monster_id = 24020301, pos = { x = -4431.458, y = 164.492, z = -3776.076 }, rot = { x = 0.098, y = 211.539, z = 359.636 }, level = 30, drop_tag = "拟生机关", isOneoff = true, pose_id = 101, area_id = 14 },
	{ config_id = 246004, monster_id = 24020201, pos = { x = -4432.918, y = 164.629, z = -3774.097 }, rot = { x = 3.481, y = 166.681, z = 359.177 }, level = 30, drop_tag = "拟生机关", isOneoff = true, pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 246002, gadget_id = 70211132, pos = { x = -4430.552, y = 165.278, z = -3772.620 }, rot = { x = 3.871, y = 205.534, z = 357.244 }, level = 26, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 246005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4432.253, y = 164.946, z = -3776.719 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1246005, name = "ENTER_REGION_246005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_246005", action = "action_EVENT_ENTER_REGION_246005", trigger_count = 0 },
	{ config_id = 1246006, name = "GROUP_LOAD_246006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_246006", action = "action_EVENT_GROUP_LOAD_246006", trigger_count = 0 },
	{ config_id = 1246007, name = "GROUP_LOAD_246007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_246007", action = "action_EVENT_GROUP_LOAD_246007", trigger_count = 0 },
	{ config_id = 1246009, name = "ANY_MONSTER_DIE_246009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_246009", action = "action_EVENT_ANY_MONSTER_DIE_246009", trigger_count = 0 },
	{ config_id = 1246010, name = "VARIABLE_CHANGE_246010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_246010", action = "action_EVENT_VARIABLE_CHANGE_246010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true },
	{ config_id = 2, name = "win", value = 0, no_refresh = true }
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
		gadgets = { 246002 },
		regions = { 246005 },
		triggers = { "ENTER_REGION_246005", "GROUP_LOAD_246006", "GROUP_LOAD_246007", "ANY_MONSTER_DIE_246009", "VARIABLE_CHANGE_246010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 246001, 246003, 246004 },
		gadgets = { 246002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_246009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_246005(context, evt)
	if evt.param1 ~= 246005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断剩余怪物数量是否是3
	if ScriptLib.GetGroupMonsterCount(context) ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_246005(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_246006(context, evt)
	-- 判断变量"win"为1
	if ScriptLib.GetGroupVariableValue(context, "win") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_246006(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_246007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133217246) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_246007(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_246009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_246009(context, evt)
	-- 将configid为 246002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 246002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "win" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "win", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_246010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_246010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 246001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 246003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 246004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end