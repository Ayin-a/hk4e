-- 基础信息
local base_info = {
	group_id = 111101029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第一波
	{ config_id = 29004, monster_id = 21010101, pos = { x = 2336.445, y = 284.052, z = -1743.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 第一波
	{ config_id = 29005, monster_id = 21010101, pos = { x = 2337.418, y = 283.923, z = -1746.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 第一波
	{ config_id = 29006, monster_id = 21010101, pos = { x = 2338.372, y = 283.962, z = -1749.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 第二波
	{ config_id = 29012, monster_id = 21010101, pos = { x = 2342.478, y = 283.898, z = -1742.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 第二波
	{ config_id = 29013, monster_id = 21010101, pos = { x = 2344.187, y = 283.898, z = -1745.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 第二波
	{ config_id = 29014, monster_id = 21010101, pos = { x = 2345.706, y = 283.898, z = -1748.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29001, gadget_id = 70900007, pos = { x = 2339.093, y = 283.898, z = -1742.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 29002, gadget_id = 70900007, pos = { x = 2341.114, y = 283.987, z = -1746.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 29003, gadget_id = 70900007, pos = { x = 2343.065, y = 283.898, z = -1751.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 29015, gadget_id = 70211001, pos = { x = 2336.915, y = 283.922, z = -1748.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 方碑全部解锁
	{ config_id = 1029007, name = "VARIABLE_CHANGE_29007", event = EventType.EVENT_VARIABLE_CHANGE, source = "numBox", condition = "condition_EVENT_VARIABLE_CHANGE_29007", action = "action_EVENT_VARIABLE_CHANGE_29007", trigger_count = 3 },
	-- 解锁方碑+1
	{ config_id = 1029008, name = "GADGET_STATE_CHANGE_29008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29008", action = "action_EVENT_GADGET_STATE_CHANGE_29008" },
	-- 解锁方碑+1
	{ config_id = 1029009, name = "GADGET_STATE_CHANGE_29009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29009", action = "action_EVENT_GADGET_STATE_CHANGE_29009" },
	-- 解锁方碑+1
	{ config_id = 1029010, name = "GADGET_STATE_CHANGE_29010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_29010", action = "action_EVENT_GADGET_STATE_CHANGE_29010" },
	{ config_id = 1029011, name = "ANY_MONSTER_DIE_29011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29011", action = "action_EVENT_ANY_MONSTER_DIE_29011" },
	-- 第二波死完出宝箱
	{ config_id = 1029016, name = "ANY_MONSTER_DIE_29016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29016", action = "action_EVENT_ANY_MONSTER_DIE_29016" },
	{ config_id = 1029017, name = "VARIABLE_CHANGE_29017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_29017", action = "action_EVENT_VARIABLE_CHANGE_29017" },
	{ config_id = 1029018, name = "VARIABLE_CHANGE_29018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_29018", action = "action_EVENT_VARIABLE_CHANGE_29018" },
	{ config_id = 1029019, name = "VARIABLE_CHANGE_29019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_29019", action = "action_EVENT_VARIABLE_CHANGE_29019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "numBox", value = 0, no_refresh = true },
	{ config_id = 2, name = "open1", value = 0, no_refresh = true },
	{ config_id = 3, name = "open2", value = 0, no_refresh = false },
	{ config_id = 4, name = "open3", value = 0, no_refresh = true }
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
		gadgets = { 29001, 29002, 29003 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_29007", "GADGET_STATE_CHANGE_29008", "GADGET_STATE_CHANGE_29009", "GADGET_STATE_CHANGE_29010", "VARIABLE_CHANGE_29017", "VARIABLE_CHANGE_29018", "VARIABLE_CHANGE_29019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 29004, 29005, 29006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 29012, 29013, 29014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"numBox"为3
	if ScriptLib.GetGroupVariableValue(context, "numBox") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101029, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29008(context, evt)
	if 29001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29008(context, evt)
	-- 针对当前group内变量名为 "numBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "numBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29009(context, evt)
	if 29002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29009(context, evt)
	-- 针对当前group内变量名为 "numBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "numBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_29010(context, evt)
	if 29003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_29010(context, evt)
	-- 针对当前group内变量名为 "numBox" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "numBox", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101029, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29016(context, evt)
	-- 创建id为29015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 29015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open1"为1
	if ScriptLib.GetGroupVariableValue(context, "open1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29017(context, evt)
	-- 将configid为 29001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open2"为1
	if ScriptLib.GetGroupVariableValue(context, "open2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29018(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_29019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"open3"为1
	if ScriptLib.GetGroupVariableValue(context, "open3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_29019(context, evt)
	-- 将configid为 29003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end