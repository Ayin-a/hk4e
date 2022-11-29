-- 基础信息
local base_info = {
	group_id = 133303162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162005, monster_id = 26090101, pos = { x = -1899.884, y = 271.202, z = 3229.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 162006, monster_id = 26090201, pos = { x = -1903.082, y = 271.161, z = 3228.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 162007, monster_id = 26090201, pos = { x = -1903.825, y = 271.324, z = 3225.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162002, gadget_id = 70230112, pos = { x = -1902.721, y = 274.082, z = 3218.132 }, rot = { x = 68.771, y = 186.835, z = 301.147 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 162003, gadget_id = 70211151, pos = { x = -1900.540, y = 271.479, z = 3226.143 }, rot = { x = 0.000, y = 302.996, z = 0.000 }, level = 26, chest_drop_id = 21910062, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 162010, gadget_id = 70330216, pos = { x = -1903.989, y = 271.282, z = 3219.346 }, rot = { x = 0.000, y = 118.988, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 162004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1901.676, y = 271.526, z = 3223.961 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1162001, name = "GADGET_STATE_CHANGE_162001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162001", action = "action_EVENT_GADGET_STATE_CHANGE_162001" },
	{ config_id = 1162004, name = "ENTER_REGION_162004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_162004", action = "action_EVENT_ENTER_REGION_162004" },
	{ config_id = 1162008, name = "ANY_MONSTER_DIE_162008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162008", action = "action_EVENT_ANY_MONSTER_DIE_162008" },
	{ config_id = 1162009, name = "GROUP_LOAD_162009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_162009", action = "action_EVENT_GROUP_LOAD_162009", trigger_count = 0 },
	{ config_id = 1162011, name = "VARIABLE_CHANGE_162011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_162011", action = "action_EVENT_VARIABLE_CHANGE_162011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestOpened", value = 0, no_refresh = true }
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
		gadgets = { 162002, 162003, 162010 },
		regions = { 162004 },
		triggers = { "GADGET_STATE_CHANGE_162001", "ENTER_REGION_162004", "ANY_MONSTER_DIE_162008", "GROUP_LOAD_162009", "VARIABLE_CHANGE_162011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 162005, 162006, 162007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_162001(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 162010 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162001(context, evt)
	-- 将本组内变量名为 "No_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "No_3", 1, 133303153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_162004(context, evt)
	if evt.param1 ~= 162004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_162004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303162, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162008(context, evt)
	-- 将本组内变量名为 "chestOpened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "chestOpened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_162009(context, evt)
	-- 判断变量"chestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162009(context, evt)
	-- 将configid为 162003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_162011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestOpened"为1
	if ScriptLib.GetGroupVariableValue(context, "chestOpened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_162011(context, evt)
	-- 将configid为 162003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end