-- 基础信息
local base_info = {
	group_id = 133104304
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 304005, monster_id = 21011001, pos = { x = 958.734, y = 241.584, z = 923.848 }, rot = { x = 0.000, y = 32.259, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 6 },
	{ config_id = 304006, monster_id = 21020501, pos = { x = 986.034, y = 239.636, z = 920.036 }, rot = { x = 0.000, y = 12.436, z = 0.000 }, level = 23, drop_tag = "丘丘岩盔王", disableWander = true, area_id = 6 },
	{ config_id = 304008, monster_id = 21010701, pos = { x = 971.485, y = 238.672, z = 917.784 }, rot = { x = 0.000, y = 138.224, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 304012, monster_id = 21010101, pos = { x = 987.166, y = 238.577, z = 937.592 }, rot = { x = 0.000, y = 67.726, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 6 },
	{ config_id = 304015, monster_id = 21010501, pos = { x = 976.489, y = 242.434, z = 939.385 }, rot = { x = 0.000, y = 250.225, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 304002, gadget_id = 70211022, pos = { x = 993.085, y = 239.493, z = 934.834 }, rot = { x = 0.000, y = 259.155, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 304004, gadget_id = 70350007, pos = { x = 989.388, y = 239.470, z = 933.185 }, rot = { x = 0.613, y = 78.582, z = 0.003 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 304009, gadget_id = 70220005, pos = { x = 967.025, y = 236.988, z = 926.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 304010, gadget_id = 70220005, pos = { x = 988.130, y = 238.577, z = 936.755 }, rot = { x = 0.000, y = 117.836, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 304011, gadget_id = 70220005, pos = { x = 987.472, y = 238.577, z = 936.081 }, rot = { x = 0.000, y = 351.271, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 304016, gadget_id = 70220014, pos = { x = 986.690, y = 238.577, z = 939.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 304017, gadget_id = 70220013, pos = { x = 983.901, y = 238.498, z = 939.421 }, rot = { x = 359.108, y = 359.965, z = 4.467 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 304001, shape = RegionShape.SPHERE, radius = 3, pos = { x = 993.471, y = 239.495, z = 933.972 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1304001, name = "ENTER_REGION_304001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_304001", action = "action_EVENT_ENTER_REGION_304001" },
	{ config_id = 1304003, name = "ANY_MONSTER_DIE_304003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_304003", action = "action_EVENT_ANY_MONSTER_DIE_304003" },
	{ config_id = 1304013, name = "GADGET_STATE_CHANGE_304013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_304013", action = "action_EVENT_GADGET_STATE_CHANGE_304013" },
	{ config_id = 1304014, name = "GROUP_LOAD_304014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_304014", action = "action_EVENT_GROUP_LOAD_304014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { 304005, 304006, 304008, 304012, 304015 },
		gadgets = { 304002, 304004, 304009, 304010, 304011, 304016, 304017 },
		regions = { 304001 },
		triggers = { "ENTER_REGION_304001", "ANY_MONSTER_DIE_304003", "GROUP_LOAD_304014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_304001(context, evt)
	if evt.param1 ~= 304001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_304001(context, evt)
	-- 将configid为 304004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"flag"为0
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_304003(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将configid为 304004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 304002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_304013(context, evt)
	if 304004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_304013(context, evt)
	-- 通知场景上的所有玩家播放名字为133104440 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 133104440, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	-- 改变指定group组133104440中， configid为440005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133104440, 440005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_304014(context, evt)
	-- 判断变量"flag"为1
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_304014(context, evt)
	-- 将configid为 304004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 304002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 304002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end