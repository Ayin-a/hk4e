-- 基础信息
local base_info = {
	group_id = 133225113
}

-- DEFS_MISCS
defs = {
        group_id = 133225113,        --当前Group的ID
        isRandom = false,--定义这个组是否会随机取
        child_group = {[0] = 0}, --groupid和需要切到的SuiteID，一一对应
        notifyQuest = false, --修改Group里一个变量
        hasChild = false, --表示是否切当前Group的suite，true表示切自己的
        selfSuiteId = 2, --需要切的自己的suite
        hasMultiStatues = false, --是否有多个雷鸟雕像
        statuesMap = 
        {
                [10001] = 2, --雷鸟雕像和需要切出来的Suite的对应表
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113001, gadget_id = 70290160, pos = { x = -6086.237, y = 201.310, z = -2478.637 }, rot = { x = 0.000, y = 278.357, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 113002, gadget_id = 70330137, pos = { x = -6088.408, y = 200.885, z = -2480.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, interact_id = 35, area_id = 18 },
	{ config_id = 113003, gadget_id = 70330064, pos = { x = -6109.256, y = 200.332, z = -2513.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, interact_id = 35, area_id = 18 },
	{ config_id = 113004, gadget_id = 70330105, pos = { x = -6086.184, y = 199.870, z = -2483.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 113005, gadget_id = 70211001, pos = { x = -6084.094, y = 200.998, z = -2480.602 }, rot = { x = 0.000, y = 210.970, z = 3.928 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 113006, gadget_id = 70211150, pos = { x = -6107.534, y = 200.397, z = -2511.484 }, rot = { x = 11.581, y = 54.486, z = 353.118 }, level = 26, chest_drop_id = 21900006, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 113007, gadget_id = 70330105, pos = { x = -6109.544, y = 200.388, z = -2511.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1113008, name = "GADGET_STATE_CHANGE_113008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113008", action = "action_EVENT_GADGET_STATE_CHANGE_113008" },
	{ config_id = 1113009, name = "GADGET_STATE_CHANGE_113009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_113009", action = "action_EVENT_GADGET_STATE_CHANGE_113009" },
	-- 增加保底修复
	{ config_id = 1113010, name = "GROUP_LOAD_113010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_113010", action = "action_EVENT_GROUP_LOAD_113010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Seed", value = 0, no_refresh = true },
	{ config_id = 2, name = "Notified", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 113001, 113003, 113004, 113005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_113008", "GROUP_LOAD_113010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 113002, 113006, 113007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_113009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113008(context, evt)
	if 113005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113008(context, evt)
	-- 将configid为 113001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 113004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_113009(context, evt)
	if 113006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_113009(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 113001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "progress" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "progress", 1, 133225273) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_113010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133225113, 113001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_113010(context, evt)
	-- 将configid为 113004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 113004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/TsurumiBirdFather"