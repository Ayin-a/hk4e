-- 基础信息
local base_info = {
	group_id = 220026011
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
	{ config_id = 76, gadget_id = 70340014, pos = { x = 190.927, y = -92.440, z = -201.034 }, rot = { x = 0.000, y = 267.400, z = 0.000 }, level = 1 },
	{ config_id = 77, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 78, gadget_id = 70350008, pos = { x = 187.700, y = -89.400, z = -201.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 79, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -200.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 80, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 81, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 82, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 83, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 84, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 85, gadget_id = 70350008, pos = { x = 187.300, y = -89.400, z = -201.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000012, name = "DUNGEON_SETTLE_12", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_12", action = "action_EVENT_DUNGEON_SETTLE_12" },
	{ config_id = 1011001, name = "DUNGEON_REWARD_GET_11001", event = EventType.EVENT_DUNGEON_REWARD_GET, source = "", condition = "", action = "action_EVENT_DUNGEON_REWARD_GET_11001" }
}

-- 变量
variables = {
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
		gadgets = { },
		regions = { },
		triggers = { "DUNGEON_SETTLE_12" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_12(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_12(context, evt)
	-- 将configid为 76 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组220026010中， configid为74的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026010, 74, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_REWARD_GET_11001(context, evt)
	-- 将configid为 76 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end