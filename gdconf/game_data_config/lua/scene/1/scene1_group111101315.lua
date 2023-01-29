-- 基础信息
local base_info = {
	group_id = 111101315
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 315009, monster_id = 21010401, pos = { x = 2327.536, y = 279.838, z = -1687.052 }, rot = { x = 0.000, y = 305.876, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 315010, monster_id = 21010401, pos = { x = 2324.214, y = 280.306, z = -1690.686 }, rot = { x = 0.000, y = 325.363, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 315011, monster_id = 21010401, pos = { x = 2318.951, y = 280.339, z = -1691.175 }, rot = { x = 0.000, y = 320.836, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 315012, monster_id = 21020101, pos = { x = 2326.389, y = 280.715, z = -1692.098 }, rot = { x = 0.000, y = 309.212, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 315013, monster_id = 21011001, pos = { x = 2327.849, y = 280.437, z = -1690.657 }, rot = { x = 0.000, y = 334.797, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 315001, gadget_id = 70900039, pos = { x = 2329.096, y = 279.952, z = -1680.250 }, rot = { x = 0.000, y = 295.612, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 315002, gadget_id = 70900039, pos = { x = 2323.658, y = 279.651, z = -1684.763 }, rot = { x = 0.000, y = 175.442, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 315003, gadget_id = 70900039, pos = { x = 2316.583, y = 279.651, z = -1687.208 }, rot = { x = 0.000, y = 175.442, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 315004, gadget_id = 70211012, pos = { x = 2324.313, y = 279.881, z = -1688.237 }, rot = { x = 350.757, y = 158.938, z = 0.660 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 方碑激活，变量+1
	{ config_id = 1315005, name = "GADGET_STATE_CHANGE_315005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315005", action = "action_EVENT_GADGET_STATE_CHANGE_315005" },
	-- 方碑激活，变量+1
	{ config_id = 1315006, name = "GADGET_STATE_CHANGE_315006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315006", action = "action_EVENT_GADGET_STATE_CHANGE_315006" },
	-- 方碑激活，变量+1
	{ config_id = 1315007, name = "GADGET_STATE_CHANGE_315007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_315007", action = "action_EVENT_GADGET_STATE_CHANGE_315007" },
	-- 三个方碑激活，创建怪物
	{ config_id = 1315008, name = "VARIABLE_CHANGE_315008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315008", action = "action_EVENT_VARIABLE_CHANGE_315008" },
	{ config_id = 1315014, name = "ANY_MONSTER_DIE_315014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315014", action = "action_EVENT_ANY_MONSTER_DIE_315014" },
	{ config_id = 1315015, name = "ANY_MONSTER_DIE_315015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_315015", action = "action_EVENT_ANY_MONSTER_DIE_315015" },
	-- 限时挑战成功，方碑1解锁
	{ config_id = 1315016, name = "VARIABLE_CHANGE_315016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315016", action = "action_EVENT_VARIABLE_CHANGE_315016" },
	-- 火把解谜成功，方碑2解锁
	{ config_id = 1315017, name = "VARIABLE_CHANGE_315017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315017", action = "action_EVENT_VARIABLE_CHANGE_315017" },
	-- 营地挑战成功，方碑3解锁
	{ config_id = 1315018, name = "VARIABLE_CHANGE_315018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_315018", action = "action_EVENT_VARIABLE_CHANGE_315018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fangbei", value = 0, no_refresh = true },
	{ config_id = 2, name = "chest1", value = 0, no_refresh = true }
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
		gadgets = { 315001, 315002, 315003, 315004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_315005", "GADGET_STATE_CHANGE_315006", "GADGET_STATE_CHANGE_315007", "VARIABLE_CHANGE_315008", "VARIABLE_CHANGE_315016", "VARIABLE_CHANGE_315017", "VARIABLE_CHANGE_315018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 315009, 315010, 315011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 315012, 315013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_315015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315005(context, evt)
	if 315001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315005(context, evt)
	-- 针对当前group内变量名为 "fangbei" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fangbei", 1, 111101315) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315006(context, evt)
	if 315002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315006(context, evt)
	-- 针对当前group内变量名为 "fangbei" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fangbei", 1, 111101315) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_315007(context, evt)
	if 315003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_315007(context, evt)
	-- 针对当前group内变量名为 "fangbei" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "fangbei", 1, 111101315) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fangbei"为3
	if ScriptLib.GetGroupVariableValue(context, "fangbei") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101315, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315014(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101315, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_315015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_315015(context, evt)
	-- 改变指定group组111101315中， configid为315004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101315, 315004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chest1"为1
	if ScriptLib.GetGroupVariableValue(context, "chest1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315016(context, evt)
	-- 将configid为 315001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "chest", 111101309) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315017(context, evt)
	-- 将configid为 315002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_315018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chest"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "chest", 111101312) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_315018(context, evt)
	-- 将configid为 315003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 315003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end