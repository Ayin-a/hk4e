-- 基础信息
local base_info = {
	group_id = 111102028
}

-- Trigger变量
local defs = {
	group_ID = 111102028,
	gadget_11 = 28001,
	gadget_12 = 28002,
	gadget_13 = 28003,
	gadget_14 = 28004,
	gadget_15 = 28005,
	gadget_21 = 28006,
	gadget_22 = 28007,
	gadget_23 = 28008,
	gadget_24 = 28009,
	gadget_25 = 28010,
	gadget_31 = 28011,
	gadget_32 = 28012,
	gadget_33 = 28013,
	gadget_34 = 28014,
	gadget_35 = 28015,
	gadget_41 = 28016,
	gadget_42 = 28017,
	gadget_43 = 28018,
	gadget_44 = 28019,
	gadget_45 = 28020,
	gadget_51 = 28021,
	gadget_52 = 28022,
	gadget_53 = 28023,
	gadget_54 = 28024,
	gadget_55 = 28025,
	trigger_boarder = 28027,
	gadget_starter = 28024,
	gadget_ender = 0
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
	{ config_id = 28001, gadget_id = 70360186, pos = { x = 1965.063, y = 200.618, z = -1331.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 28002, gadget_id = 70360186, pos = { x = 1965.063, y = 200.618, z = -1333.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 28003, gadget_id = 70360186, pos = { x = 1965.063, y = 200.618, z = -1335.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28004, gadget_id = 70360186, pos = { x = 1965.063, y = 200.618, z = -1337.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28005, gadget_id = 70360186, pos = { x = 1965.063, y = 200.618, z = -1340.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28006, gadget_id = 70360186, pos = { x = 1963.009, y = 200.619, z = -1331.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28007, gadget_id = 70360186, pos = { x = 1963.009, y = 200.619, z = -1333.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28008, gadget_id = 70360186, pos = { x = 1963.009, y = 200.619, z = -1335.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28009, gadget_id = 70360186, pos = { x = 1963.009, y = 200.619, z = -1337.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28010, gadget_id = 70360186, pos = { x = 1963.009, y = 200.619, z = -1340.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28011, gadget_id = 70360186, pos = { x = 1960.932, y = 200.619, z = -1331.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28012, gadget_id = 70360186, pos = { x = 1960.932, y = 200.619, z = -1333.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28013, gadget_id = 70360186, pos = { x = 1960.932, y = 200.619, z = -1335.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28014, gadget_id = 70360186, pos = { x = 1960.932, y = 200.619, z = -1337.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28015, gadget_id = 70360186, pos = { x = 1960.932, y = 200.619, z = -1340.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28016, gadget_id = 70360186, pos = { x = 1958.832, y = 200.604, z = -1331.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28017, gadget_id = 70360186, pos = { x = 1958.832, y = 200.604, z = -1333.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28018, gadget_id = 70360186, pos = { x = 1958.832, y = 200.604, z = -1335.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28019, gadget_id = 70360186, pos = { x = 1958.832, y = 200.604, z = -1337.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28020, gadget_id = 70360186, pos = { x = 1958.832, y = 200.604, z = -1340.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28021, gadget_id = 70360186, pos = { x = 1956.770, y = 200.603, z = -1331.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28022, gadget_id = 70360186, pos = { x = 1956.770, y = 200.603, z = -1333.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28023, gadget_id = 70360186, pos = { x = 1956.770, y = 200.603, z = -1335.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 28024, gadget_id = 70360186, pos = { x = 1956.770, y = 200.603, z = -1338.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28025, gadget_id = 70360186, pos = { x = 1956.770, y = 200.603, z = -1340.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28026, gadget_id = 70211111, pos = { x = 1960.511, y = 200.127, z = -1344.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	-- 出界判断用的Trigger
	{ config_id = 28027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = 1960.950, y = 201.207, z = -1335.886 } }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite3里，并在action里写上你想做的事。
	{ config_id = 1028028, name = "VARIABLE_CHANGE_28028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_28028", action = "action_EVENT_VARIABLE_CHANGE_28028" }
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
	end_suite = 3,
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28009, 28010, 28011, 28012, 28013, 28014, 28015, 28016, 28017, 28018, 28019, 28020, 28021, 28022, 28023, 28024, 28025 },
		regions = { 28027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28026 },
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
function condition_EVENT_VARIABLE_CHANGE_28028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_28028(context, evt)
	-- 针对当前group内变量名为 "open_door" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "open_door", 1, 111102023) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DrawOneLine"