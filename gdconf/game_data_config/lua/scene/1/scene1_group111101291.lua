-- 基础信息
local base_info = {
	group_id = 111101291
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 291011, monster_id = 20011201, pos = { x = 2357.534, y = 283.898, z = -1730.683 }, rot = { x = 0.000, y = 227.615, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291012, monster_id = 20011201, pos = { x = 2355.993, y = 283.898, z = -1727.750 }, rot = { x = 0.000, y = 223.858, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291013, monster_id = 20011301, pos = { x = 2359.328, y = 283.898, z = -1727.919 }, rot = { x = 0.000, y = 248.551, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 291014, monster_id = 20010801, pos = { x = 2350.559, y = 283.898, z = -1731.293 }, rot = { x = 0.000, y = 71.467, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291015, monster_id = 20010801, pos = { x = 2350.237, y = 283.898, z = -1734.534 }, rot = { x = 0.000, y = 59.962, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291016, monster_id = 20010901, pos = { x = 2346.933, y = 283.898, z = -1732.707 }, rot = { x = 0.000, y = 73.645, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 291017, monster_id = 20010501, pos = { x = 2358.641, y = 283.898, z = -1737.080 }, rot = { x = 0.000, y = 329.350, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291018, monster_id = 20010501, pos = { x = 2360.221, y = 283.898, z = -1734.938 }, rot = { x = 0.000, y = 290.641, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 291019, monster_id = 20010701, pos = { x = 2362.143, y = 283.898, z = -1738.697 }, rot = { x = 0.000, y = 312.973, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 291020, monster_id = 20020101, pos = { x = 2354.957, y = 285.685, z = -1733.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "元素之核" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 291001, gadget_id = 70900007, pos = { x = 2357.465, y = 283.898, z = -1728.832 }, rot = { x = 0.000, y = 356.659, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 291002, gadget_id = 70900008, pos = { x = 2361.064, y = 283.898, z = -1737.136 }, rot = { x = 0.000, y = 52.572, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 291003, gadget_id = 70900009, pos = { x = 2349.102, y = 283.898, z = -1732.631 }, rot = { x = 0.000, y = 75.695, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 291021, gadget_id = 70211031, pos = { x = 2355.100, y = 283.932, z = -1733.535 }, rot = { x = 0.000, y = 338.449, z = 0.000 }, level = 11, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1291004, name = "GADGET_STATE_CHANGE_291004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291004", action = "action_EVENT_GADGET_STATE_CHANGE_291004" },
	{ config_id = 1291005, name = "GADGET_STATE_CHANGE_291005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291005", action = "action_EVENT_GADGET_STATE_CHANGE_291005" },
	{ config_id = 1291006, name = "GADGET_STATE_CHANGE_291006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291006", action = "action_EVENT_GADGET_STATE_CHANGE_291006" },
	{ config_id = 1291007, name = "GADGET_STATE_CHANGE_291007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291007", action = "action_EVENT_GADGET_STATE_CHANGE_291007" },
	{ config_id = 1291008, name = "GADGET_STATE_CHANGE_291008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291008", action = "action_EVENT_GADGET_STATE_CHANGE_291008" },
	{ config_id = 1291009, name = "GADGET_STATE_CHANGE_291009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_291009", action = "action_EVENT_GADGET_STATE_CHANGE_291009" },
	{ config_id = 1291010, name = "VARIABLE_CHANGE_291010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_291010", action = "action_EVENT_VARIABLE_CHANGE_291010" },
	{ config_id = 1291022, name = "ANY_MONSTER_DIE_291022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291022", action = "action_EVENT_ANY_MONSTER_DIE_291022" },
	{ config_id = 1291023, name = "ANY_MONSTER_DIE_291023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_291023", action = "action_EVENT_ANY_MONSTER_DIE_291023" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gears_count", value = 0, no_refresh = true }
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
		gadgets = { 291001, 291002, 291003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_291004", "GADGET_STATE_CHANGE_291005", "GADGET_STATE_CHANGE_291006", "GADGET_STATE_CHANGE_291007", "GADGET_STATE_CHANGE_291008", "GADGET_STATE_CHANGE_291009", "VARIABLE_CHANGE_291010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 291011, 291012, 291013, 291014, 291015, 291016, 291017, 291018, 291019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_291023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 291020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_291022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291004(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 111101245, 245012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291004(context, evt)
	-- 将configid为 291001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291005(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 111101287, 287023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291005(context, evt)
	-- 将configid为 291002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291006(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 111101290, 290006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291006(context, evt)
	-- 将configid为 291003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 291003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101291, 291001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291007(context, evt)
	-- 针对当前group内变量名为 "gears_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "gears_count", 1, 111101291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101291, 291002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291008(context, evt)
	-- 针对当前group内变量名为 "gears_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "gears_count", 1, 111101291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_291009(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101291, 291003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_291009(context, evt)
	-- 针对当前group内变量名为 "gears_count" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "gears_count", 1, 111101291) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_291010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gears_count"为3
	if ScriptLib.GetGroupVariableValue(context, "gears_count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_291010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101291, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291022(context, evt)
	--判断死亡怪物的configid是否为 291020
	if evt.param1 ~= 291020 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_291022(context, evt)
	-- 创建id为291021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 291021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_291023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101291) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_291023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101291, 3)
	
	return 0
end