-- 基础信息
local base_info = {
	group_id = 133220464
}

-- Trigger变量
local defs = {
	group_ID = 133220464,
	gadget_11 = 464001,
	gadget_12 = 464002,
	gadget_13 = 464003,
	gadget_14 = 464004,
	gadget_15 = 464005,
	gadget_16 = 464006,
	gadget_17 = 464007,
	gadget_21 = 464008,
	gadget_22 = 464009,
	gadget_23 = 464010,
	gadget_24 = 464011,
	gadget_25 = 464012,
	gadget_26 = 464013,
	gadget_27 = 464014,
	gadget_31 = 464015,
	gadget_32 = 464016,
	gadget_33 = 464017,
	gadget_34 = 464018,
	gadget_35 = 464019,
	gadget_36 = 464020,
	gadget_37 = 464021,
	gadget_41 = 464022,
	gadget_42 = 464023,
	gadget_43 = 464024,
	gadget_44 = 464025,
	gadget_45 = 464029,
	gadget_46 = 464030,
	gadget_47 = 464031,
	gadget_51 = 464032,
	gadget_52 = 464033,
	gadget_53 = 464034,
	gadget_54 = 464035,
	gadget_55 = 464036,
	gadget_56 = 464037,
	gadget_57 = 464038,
	gadget_61 = 464039,
	gadget_62 = 464040,
	gadget_63 = 464041,
	gadget_64 = 464042,
	gadget_65 = 464043,
	gadget_66 = 464044,
	gadget_67 = 464045,
	gadget_71 = 464046,
	gadget_72 = 464047,
	gadget_73 = 464048,
	gadget_74 = 464049,
	gadget_75 = 464050,
	gadget_76 = 464051,
	gadget_77 = 464052,
	trigger_boarder = 464027,
	gadget_starter = 464049,
	gadget_ender = 464035
}

-- DEFS_MISCS
local matrix = 
{
{defs.gadget_11,defs.gadget_12,defs.gadget_13,defs.gadget_14,defs.gadget_15,defs.gadget_16,defs.gadget_17},

{defs.gadget_21,defs.gadget_22,defs.gadget_23,defs.gadget_24,defs.gadget_25,defs.gadget_26,defs.gadget_27},

{defs.gadget_31,defs.gadget_32,defs.gadget_33,defs.gadget_34,defs.gadget_35,defs.gadget_36,defs.gadget_37},

{defs.gadget_41,defs.gadget_42,defs.gadget_43,defs.gadget_44,defs.gadget_45,defs.gadget_46,defs.gadget_47},

{defs.gadget_51,defs.gadget_52,defs.gadget_53,defs.gadget_54,defs.gadget_55,defs.gadget_56,defs.gadget_57},

{defs.gadget_61,defs.gadget_62,defs.gadget_63,defs.gadget_64,defs.gadget_65,defs.gadget_66,defs.gadget_67},

{defs.gadget_71,defs.gadget_72,defs.gadget_73,defs.gadget_74,defs.gadget_75,defs.gadget_76,defs.gadget_77}
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
	{ config_id = 464001, gadget_id = 70360186, pos = { x = -2184.698, y = 162.327, z = -4477.731 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464002, gadget_id = 70360186, pos = { x = -2182.793, y = 162.327, z = -4476.848 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464003, gadget_id = 70360186, pos = { x = -2180.888, y = 162.327, z = -4475.963 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464004, gadget_id = 70360186, pos = { x = -2178.983, y = 162.327, z = -4475.080 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464005, gadget_id = 70360186, pos = { x = -2177.078, y = 162.327, z = -4474.195 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464006, gadget_id = 70360186, pos = { x = -2175.173, y = 162.327, z = -4473.311 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464007, gadget_id = 70360186, pos = { x = -2173.268, y = 162.327, z = -4472.427 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464008, gadget_id = 70360186, pos = { x = -2183.814, y = 162.327, z = -4479.637 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464009, gadget_id = 70360186, pos = { x = -2181.909, y = 162.327, z = -4478.751 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464010, gadget_id = 70360186, pos = { x = -2180.005, y = 162.327, z = -4477.868 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464011, gadget_id = 70360186, pos = { x = -2178.099, y = 162.327, z = -4476.984 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464012, gadget_id = 70360186, pos = { x = -2176.194, y = 162.327, z = -4476.100 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464013, gadget_id = 70360186, pos = { x = -2174.290, y = 162.327, z = -4475.216 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464014, gadget_id = 70360186, pos = { x = -2172.384, y = 162.327, z = -4474.333 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464015, gadget_id = 70360186, pos = { x = -2182.930, y = 162.327, z = -4481.541 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464016, gadget_id = 70360186, pos = { x = -2181.025, y = 162.327, z = -4480.658 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464017, gadget_id = 70360186, pos = { x = -2179.120, y = 162.327, z = -4479.773 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464018, gadget_id = 70360186, pos = { x = -2177.215, y = 162.327, z = -4478.889 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464019, gadget_id = 70360186, pos = { x = -2175.310, y = 162.327, z = -4478.005 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464020, gadget_id = 70360186, pos = { x = -2173.406, y = 162.327, z = -4477.121 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464021, gadget_id = 70360186, pos = { x = -2171.501, y = 162.327, z = -4476.237 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464022, gadget_id = 70360186, pos = { x = -2182.046, y = 162.327, z = -4483.445 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464023, gadget_id = 70360186, pos = { x = -2180.141, y = 162.327, z = -4482.562 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464024, gadget_id = 70360186, pos = { x = -2178.236, y = 162.327, z = -4481.679 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464025, gadget_id = 70360186, pos = { x = -2176.331, y = 162.327, z = -4480.793 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464026, gadget_id = 70211131, pos = { x = -2178.883, y = 161.982, z = -4475.325 }, rot = { x = 0.000, y = 154.876, z = 0.000 }, level = 26, drop_tag = "解谜超级稻妻", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 464029, gadget_id = 70360186, pos = { x = -2174.427, y = 162.327, z = -4479.910 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464030, gadget_id = 70360186, pos = { x = -2172.522, y = 162.327, z = -4479.026 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464031, gadget_id = 70360186, pos = { x = -2170.617, y = 162.327, z = -4478.143 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464032, gadget_id = 70360186, pos = { x = -2181.162, y = 162.327, z = -4485.350 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464033, gadget_id = 70360186, pos = { x = -2179.257, y = 162.327, z = -4484.468 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464034, gadget_id = 70360186, pos = { x = -2177.352, y = 162.327, z = -4483.584 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464035, gadget_id = 70360186, pos = { x = -2175.447, y = 162.327, z = -4482.700 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464036, gadget_id = 70360186, pos = { x = -2173.542, y = 162.327, z = -4481.816 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464037, gadget_id = 70360186, pos = { x = -2171.638, y = 162.327, z = -4480.932 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464038, gadget_id = 70360186, pos = { x = -2169.733, y = 162.327, z = -4480.047 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464039, gadget_id = 70360186, pos = { x = -2180.278, y = 162.327, z = -4487.255 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464040, gadget_id = 70360186, pos = { x = -2178.373, y = 162.327, z = -4486.372 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464041, gadget_id = 70360186, pos = { x = -2176.469, y = 162.327, z = -4485.488 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464042, gadget_id = 70360186, pos = { x = -2174.563, y = 162.327, z = -4484.604 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464043, gadget_id = 70360186, pos = { x = -2172.659, y = 162.327, z = -4483.721 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464044, gadget_id = 70360186, pos = { x = -2170.754, y = 162.327, z = -4482.837 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464045, gadget_id = 70360186, pos = { x = -2168.849, y = 162.327, z = -4481.952 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464046, gadget_id = 70360186, pos = { x = -2179.395, y = 162.327, z = -4489.161 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 },
	{ config_id = 464047, gadget_id = 70360186, pos = { x = -2177.489, y = 162.327, z = -4488.276 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464048, gadget_id = 70360186, pos = { x = -2175.585, y = 162.327, z = -4487.393 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464049, gadget_id = 70360186, pos = { x = -2173.679, y = 162.327, z = -4486.509 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 464050, gadget_id = 70360186, pos = { x = -2171.775, y = 162.327, z = -4485.624 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464051, gadget_id = 70360186, pos = { x = -2169.870, y = 162.327, z = -4484.741 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 464052, gadget_id = 70360186, pos = { x = -2167.965, y = 162.327, z = -4483.857 }, rot = { x = 0.000, y = 335.106, z = 0.000 }, level = 27, state = GadgetState.Action03, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 464027, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2176.627, y = 161.104, z = -4480.481 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite2里，并在action里写上你想做的事。
	{ config_id = 1464028, name = "VARIABLE_CHANGE_464028", event = EventType.EVENT_VARIABLE_CHANGE, source = "successed", condition = "condition_EVENT_VARIABLE_CHANGE_464028", action = "action_EVENT_VARIABLE_CHANGE_464028" },
	{ config_id = 1464053, name = "GROUP_LOAD_464053", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_464053", trigger_count = 0 }
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
		gadgets = { 464001, 464002, 464003, 464004, 464005, 464006, 464007, 464008, 464009, 464010, 464011, 464012, 464013, 464014, 464015, 464016, 464017, 464018, 464019, 464020, 464021, 464022, 464023, 464024, 464025, 464029, 464030, 464031, 464032, 464033, 464034, 464035, 464036, 464037, 464038, 464039, 464040, 464041, 464042, 464043, 464044, 464045, 464046, 464047, 464048, 464049, 464050, 464051, 464052 },
		regions = { 464027 },
		triggers = { "VARIABLE_CHANGE_464028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 464026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_464028", "GROUP_LOAD_464053" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_464028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_464028(context, evt)
	-- 将本组内变量名为 "successed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "successed", 1, 133220567) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_464053(context, evt)
	-- 将本组内变量名为 "successed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "successed", 1, 133220567) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DrawOneLinePlus"