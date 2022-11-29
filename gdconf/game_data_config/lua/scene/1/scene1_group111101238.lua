-- 基础信息
local base_info = {
	group_id = 111101238
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 238015, monster_id = 21010401, pos = { x = 2376.916, y = 283.898, z = -1736.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 238016, monster_id = 21010401, pos = { x = 2383.064, y = 283.899, z = -1730.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 238017, monster_id = 21010401, pos = { x = 2381.787, y = 283.898, z = -1735.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 238019, monster_id = 21020101, pos = { x = 2377.649, y = 283.898, z = -1730.677 }, rot = { x = 0.000, y = 320.251, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 238020, monster_id = 21010101, pos = { x = 2382.281, y = 284.392, z = -1725.462 }, rot = { x = 0.000, y = 266.024, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 238021, monster_id = 21010101, pos = { x = 2371.699, y = 284.418, z = -1735.340 }, rot = { x = 0.000, y = 358.447, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238001, gadget_id = 70211001, pos = { x = 2382.677, y = 283.899, z = -1725.733 }, rot = { x = 0.000, y = 319.632, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 238002, gadget_id = 70211001, pos = { x = 2377.551, y = 283.898, z = -1730.556 }, rot = { x = 0.000, y = 319.016, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 238003, gadget_id = 70211001, pos = { x = 2371.910, y = 283.973, z = -1735.765 }, rot = { x = 0.000, y = 321.234, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 238004, gadget_id = 70900039, pos = { x = 2384.980, y = 283.899, z = -1728.107 }, rot = { x = 0.000, y = 39.336, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 238005, gadget_id = 70900039, pos = { x = 2379.858, y = 283.898, z = -1732.911 }, rot = { x = 0.000, y = 320.898, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 238006, gadget_id = 70900039, pos = { x = 2374.073, y = 283.898, z = -1738.172 }, rot = { x = 0.000, y = 321.566, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 238007, gadget_id = 70211021, pos = { x = 2373.885, y = 283.898, z = -1726.698 }, rot = { x = 0.000, y = 318.032, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238008, name = "GADGET_STATE_CHANGE_238008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238008", action = "action_EVENT_GADGET_STATE_CHANGE_238008" },
	{ config_id = 1238009, name = "GADGET_STATE_CHANGE_238009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238009", action = "action_EVENT_GADGET_STATE_CHANGE_238009" },
	{ config_id = 1238010, name = "GADGET_STATE_CHANGE_238010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238010", action = "action_EVENT_GADGET_STATE_CHANGE_238010" },
	{ config_id = 1238011, name = "GADGET_STATE_CHANGE_238011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238011", action = "action_EVENT_GADGET_STATE_CHANGE_238011" },
	{ config_id = 1238012, name = "GADGET_STATE_CHANGE_238012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238012", action = "action_EVENT_GADGET_STATE_CHANGE_238012" },
	{ config_id = 1238013, name = "GADGET_STATE_CHANGE_238013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_238013", action = "action_EVENT_GADGET_STATE_CHANGE_238013" },
	{ config_id = 1238014, name = "VARIABLE_CHANGE_238014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_238014", action = "action_EVENT_VARIABLE_CHANGE_238014" },
	{ config_id = 1238018, name = "ANY_MONSTER_DIE_238018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238018", action = "action_EVENT_ANY_MONSTER_DIE_238018" },
	{ config_id = 1238022, name = "ANY_MONSTER_DIE_238022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238022", action = "action_EVENT_ANY_MONSTER_DIE_238022" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monumentCount", value = 0, no_refresh = false }
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
		gadgets = { 238001, 238002, 238003, 238004, 238005, 238006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_238008", "GADGET_STATE_CHANGE_238009", "GADGET_STATE_CHANGE_238010", "GADGET_STATE_CHANGE_238011", "GADGET_STATE_CHANGE_238012", "GADGET_STATE_CHANGE_238013", "VARIABLE_CHANGE_238014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 238015, 238016, 238017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 238019, 238020, 238021 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238022" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 238007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	if 238001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238008(context, evt)
	-- 将configid为 238004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238009(context, evt)
	if 238002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238009(context, evt)
	-- 将configid为 238005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238010(context, evt)
	if 238003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238010(context, evt)
	-- 将configid为 238006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238011(context, evt)
	if 238004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238011(context, evt)
	-- 针对当前group内变量名为 "monumentCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monumentCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238012(context, evt)
	if 238005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238012(context, evt)
	-- 针对当前group内变量名为 "monumentCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monumentCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_238013(context, evt)
	if 238006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_238013(context, evt)
	-- 针对当前group内变量名为 "monumentCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monumentCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_238014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monumentCount"为3
	if ScriptLib.GetGroupVariableValue(context, "monumentCount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_238014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101238, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101238, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238022(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238022(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101238, 4)
	
	return 0
end