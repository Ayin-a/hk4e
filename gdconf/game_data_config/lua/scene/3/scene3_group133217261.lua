-- 基础信息
local base_info = {
	group_id = 133217261
}

-- Trigger变量
local defs = {
	group_ID = 133217261,
	trigger_playRegion = 261006,
	gadget_1 = 261002
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
	{ config_id = 261001, gadget_id = 70950068, pos = { x = -4400.976, y = 165.351, z = -3827.811 }, rot = { x = 8.288, y = 42.746, z = 340.539 }, level = 10, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 261002, gadget_id = 70290117, pos = { x = -4405.269, y = 169.256, z = -3810.249 }, rot = { x = 341.689, y = 321.448, z = 349.353 }, level = 10, area_id = 14 },
	{ config_id = 261004, gadget_id = 70950069, pos = { x = -4379.001, y = 181.887, z = -3832.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 14 },
	{ config_id = 261008, gadget_id = 70950068, pos = { x = -4428.558, y = 171.330, z = -3798.169 }, rot = { x = 355.062, y = 353.678, z = 0.177 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 261009, gadget_id = 70950068, pos = { x = -4391.202, y = 163.360, z = -3816.446 }, rot = { x = 10.149, y = 48.208, z = 341.414 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 261010, gadget_id = 70950069, pos = { x = -4388.701, y = 181.861, z = -3783.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 261011, gadget_id = 70950069, pos = { x = -4431.330, y = 187.913, z = -3841.437 }, rot = { x = 356.983, y = 0.083, z = 356.853 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- 玩法按钮范围，进入后会添加一个额外的按钮以拾取/放置中继电桩。
	{ config_id = 261006, shape = RegionShape.SPHERE, radius = 60, pos = { x = -4411.550, y = 167.007, z = -3816.516 }, area_id = 14, team_ability_group_list = { "Move_Electric_Stake_Play" } }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite1里，并在action里写上你想做的事。
	{ config_id = 1261007, name = "VARIABLE_CHANGE_261007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_261007", action = "action_EVENT_VARIABLE_CHANGE_261007" }
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
		gadgets = { 261001, 261002, 261004, 261008, 261009, 261010, 261011 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_261007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 261006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_VARIABLE_CHANGE_261007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_261007(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open", 1, 133217241) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组133217246中， configid为246002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133217246, 246002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/ChargingPort"