-- 基础信息
local base_info = {
	group_id = 111101256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256002, monster_id = 21010101, pos = { x = 2474.617, y = 324.028, z = -1672.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 256003, monster_id = 21010101, pos = { x = 2476.418, y = 324.645, z = -1675.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 256004, monster_id = 21010101, pos = { x = 2480.013, y = 325.385, z = -1672.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 256006, monster_id = 20010501, pos = { x = 2478.763, y = 325.478, z = -1676.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 256007, monster_id = 20010501, pos = { x = 2477.070, y = 324.149, z = -1667.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 256008, monster_id = 20010501, pos = { x = 2473.863, y = 324.050, z = -1675.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 256018, monster_id = 20010801, pos = { x = 2481.053, y = 326.025, z = -1675.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 256019, monster_id = 20010801, pos = { x = 2476.065, y = 324.911, z = -1677.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 256020, monster_id = 20010801, pos = { x = 2474.754, y = 323.587, z = -1666.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 256001, gadget_id = 70290240, pos = { x = 2477.616, y = 324.912, z = -1672.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 256005, gadget_id = 70290255, pos = { x = 2477.185, y = 325.718, z = -1672.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 256023, gadget_id = 70290256, pos = { x = 2477.401, y = 325.650, z = -1672.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 256009, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2477.369, y = 325.502, z = -1673.122 } }
}

-- 触发器
triggers = {
	-- 玩家进入范围，解开机关封印
	{ config_id = 1256009, name = "ENTER_REGION_256009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_256009" },
	{ config_id = 1256010, name = "ANY_MONSTER_DIE_256010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_256010", trigger_count = 0 },
	{ config_id = 1256011, name = "VARIABLE_CHANGE_256011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256011", action = "action_EVENT_VARIABLE_CHANGE_256011", trigger_count = 0 },
	-- 监听转到101召唤第一波怪
	{ config_id = 1256012, name = "GADGET_STATE_CHANGE_256012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256012", action = "action_EVENT_GADGET_STATE_CHANGE_256012", trigger_count = 0 },
	-- 监听转到103，召唤第二波怪
	{ config_id = 1256013, name = "GADGET_STATE_CHANGE_256013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256013", action = "action_EVENT_GADGET_STATE_CHANGE_256013", trigger_count = 0 },
	-- 监听转到201，召唤第三波怪
	{ config_id = 1256014, name = "GADGET_STATE_CHANGE_256014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256014", action = "action_EVENT_GADGET_STATE_CHANGE_256014", trigger_count = 0 },
	{ config_id = 1256015, name = "GADGET_CREATE_256015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_256015", action = "action_EVENT_GADGET_CREATE_256015", trigger_count = 0 },
	{ config_id = 1256016, name = "ANY_MONSTER_DIE_256016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_256016", trigger_count = 0 },
	{ config_id = 1256017, name = "VARIABLE_CHANGE_256017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256017", action = "action_EVENT_VARIABLE_CHANGE_256017", trigger_count = 0 },
	{ config_id = 1256021, name = "ANY_MONSTER_DIE_256021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_256021", trigger_count = 0 },
	{ config_id = 1256022, name = "VARIABLE_CHANGE_256022", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256022", action = "action_EVENT_VARIABLE_CHANGE_256022", trigger_count = 0 },
	{ config_id = 1256024, name = "TIME_AXIS_PASS_256024", event = EventType.EVENT_TIME_AXIS_PASS, source = "_thunder_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_256024", trigger_count = 0 },
	{ config_id = 1256025, name = "TIME_AXIS_PASS_256025", event = EventType.EVENT_TIME_AXIS_PASS, source = "_wave_tick", condition = "", action = "action_EVENT_TIME_AXIS_PASS_256025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "_stage1_monster", value = 0, no_refresh = false },
	{ config_id = 2, name = "_stage2_monster", value = 0, no_refresh = false },
	{ config_id = 3, name = "_stage3_monster", value = 0, no_refresh = false }
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
		gadgets = { 256001 },
		regions = { 256009 },
		triggers = { "ENTER_REGION_256009", "GADGET_STATE_CHANGE_256012", "GADGET_STATE_CHANGE_256013", "GADGET_STATE_CHANGE_256014", "GADGET_CREATE_256015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1-怪物,
		monsters = { 256002, 256003, 256004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_256010", "VARIABLE_CHANGE_256011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2-怪物,
		monsters = { 256006, 256007, 256008 },
		gadgets = { 256005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_256016", "VARIABLE_CHANGE_256017", "TIME_AXIS_PASS_256024" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 256018, 256019, 256020 },
		gadgets = { 256005, 256023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_256021", "VARIABLE_CHANGE_256022", "TIME_AXIS_PASS_256024", "TIME_AXIS_PASS_256025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_256009(context, evt)
	-- 将configid为 256001 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256001, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256010(context, evt)
	-- 针对当前group内变量名为 "_stage1_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage1_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage1_monster"为3
	if ScriptLib.GetGroupVariableValue(context, "_stage1_monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256011(context, evt)
	-- 将configid为 256001 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256001, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256012(context, evt)
	if 256001 ~= evt.param2 or GadgetState.ChestLocked ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101256, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256013(context, evt)
	if 256001 ~= evt.param2 or GadgetState.ChestTrap ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101256, 3)
	
	-- 创建标识为"_thunder_tick"，时间节点为{5}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_thunder_tick", {5}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_256014(context, evt)
	if 256001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_256014(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101256, 4)
	
	-- 创建标识为"_wave_tick"，时间节点为{8}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "_wave_tick", {8}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_256015(context, evt)
	if 256001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_256015(context, evt)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, 256001, "SGV_Mechanic_Type", 3)
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256016(context, evt)
	-- 针对当前group内变量名为 "_stage2_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage2_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage2_monster"为3
	if ScriptLib.GetGroupVariableValue(context, "_stage2_monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256017(context, evt)
	-- 将configid为 256001 的物件更改为状态 GadgetState.ChestBramble
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256001, GadgetState.ChestBramble) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_256021(context, evt)
	-- 针对当前group内变量名为 "_stage3_monster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "_stage3_monster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256022(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"_stage3_monster"为3
	if ScriptLib.GetGroupVariableValue(context, "_stage3_monster") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256022(context, evt)
	-- 将configid为 256001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_256024(context, evt)
	-- 将configid为 256005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_256025(context, evt)
	-- 将configid为 256023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 256023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end