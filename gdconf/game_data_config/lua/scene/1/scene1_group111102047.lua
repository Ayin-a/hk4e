-- 基础信息
local base_info = {
	group_id = 111102047
}

-- DEFS_MISCS
local defs = {
	--每个操作台config_id, 控制的markflag和它的解，最多5位数字。
	--玩家按按钮，左转写2 右转写3。
	--例如“左左右左”即为“{2,2,3,2}”
	answers = {
		[47001] = { markflag = 1, key = {2,2,3,2} },
		[47009] = { markflag = 2, key = {3,2,3} },
	}

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
	{ config_id = 47001, gadget_id = 70310287, pos = { x = 1284.750, y = 330.110, z = -1986.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 1
	{ config_id = 47002, gadget_id = 70310288, pos = { x = 1289.153, y = 333.428, z = -1996.601 }, rot = { x = 275.867, y = 0.003, z = 292.492 }, level = 1, mark_flag = 1 },
	-- 1
	{ config_id = 47003, gadget_id = 70310288, pos = { x = 1284.251, y = 333.436, z = -1996.679 }, rot = { x = 275.868, y = 359.973, z = 76.422 }, level = 1, mark_flag = 1 },
	-- 2
	{ config_id = 47004, gadget_id = 70310288, pos = { x = 1279.125, y = 333.348, z = -1993.453 }, rot = { x = 301.574, y = 0.000, z = 0.000 }, level = 1, mark_flag = 2 },
	-- 2
	{ config_id = 47005, gadget_id = 70310288, pos = { x = 1282.169, y = 328.900, z = -1993.541 }, rot = { x = 1.622, y = 0.025, z = 34.490 }, level = 1, mark_flag = 2 },
	{ config_id = 47006, gadget_id = 70310284, pos = { x = 1284.208, y = 333.407, z = -1996.666 }, rot = { x = 0.000, y = 89.423, z = 0.000 }, level = 1 },
	{ config_id = 47007, gadget_id = 70310284, pos = { x = 1279.126, y = 333.407, z = -1993.581 }, rot = { x = 55.443, y = 89.423, z = 0.000 }, level = 1 },
	{ config_id = 47008, gadget_id = 70310291, pos = { x = 1291.577, y = 336.035, z = -1995.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 47009, gadget_id = 70310287, pos = { x = 1281.385, y = 330.110, z = -1985.884 }, rot = { x = 0.000, y = 29.386, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 47010, gadget_id = 70310289, pos = { x = 1291.577, y = 336.035, z = -1995.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 加载Suite2(Trigger类型可替换)
	{ config_id = 1047011, name = "GROUP_LOAD_47011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_47011", trigger_count = 0 },
	-- 判定解谜完成
	{ config_id = 1047012, name = "VARIABLE_CHANGE_47012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_47012", action = "action_EVENT_VARIABLE_CHANGE_47012", trigger_count = 0 }
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
		gadgets = { 47008, 47010 },
		regions = { },
		triggers = { "GROUP_LOAD_47011", "VARIABLE_CHANGE_47012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 47001, 47002, 47003, 47004, 47005, 47006, 47007, 47009 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_47011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111102047, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_47012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"unlock_num"为2
	if ScriptLib.GetGroupVariableValue(context, "unlock_num") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_47012(context, evt)
	-- 将configid为 47008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 47010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 47010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/DreamOperation"