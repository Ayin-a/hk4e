-- 基础信息
local base_info = {
	group_id = 111101236
}

-- Trigger变量
local defs = {
	group_ID = 111101236,
	gadget_11 = 236001,
	gadget_12 = 236002,
	gadget_13 = 236003,
	gadget_14 = 236004,
	gadget_15 = 236005,
	gadget_21 = 236006,
	gadget_22 = 236007,
	gadget_23 = 236008,
	gadget_24 = 236009,
	gadget_25 = 236010,
	gadget_31 = 236011,
	gadget_32 = 236012,
	gadget_33 = 236013,
	gadget_34 = 236014,
	gadget_35 = 236015,
	gadget_41 = 236016,
	gadget_42 = 236017,
	gadget_43 = 236018,
	gadget_44 = 236019,
	gadget_45 = 236020,
	gadget_51 = 236021,
	gadget_52 = 236022,
	gadget_53 = 236023,
	gadget_54 = 236024,
	gadget_55 = 236025,
	trigger_boarder = 236027,
	gadget_starter = 236024,
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
	{ config_id = 236001, gadget_id = 70360186, pos = { x = 2915.556, y = 269.296, z = -1295.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 236002, gadget_id = 70360186, pos = { x = 2915.556, y = 269.296, z = -1297.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 236003, gadget_id = 70360186, pos = { x = 2915.556, y = 269.296, z = -1299.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236004, gadget_id = 70360186, pos = { x = 2915.556, y = 269.296, z = -1301.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236005, gadget_id = 70360186, pos = { x = 2915.556, y = 271.468, z = -1303.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236006, gadget_id = 70360186, pos = { x = 2913.502, y = 269.298, z = -1295.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236007, gadget_id = 70360186, pos = { x = 2913.502, y = 269.298, z = -1297.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236008, gadget_id = 70360186, pos = { x = 2913.502, y = 269.298, z = -1299.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236009, gadget_id = 70360186, pos = { x = 2913.502, y = 272.712, z = -1301.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236010, gadget_id = 70360186, pos = { x = 2913.502, y = 270.886, z = -1303.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236011, gadget_id = 70360186, pos = { x = 2911.425, y = 269.297, z = -1295.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236012, gadget_id = 70360186, pos = { x = 2911.425, y = 269.297, z = -1297.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236013, gadget_id = 70360186, pos = { x = 2911.425, y = 272.716, z = -1299.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236014, gadget_id = 70360186, pos = { x = 2911.425, y = 269.297, z = -1301.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236015, gadget_id = 70360186, pos = { x = 2911.425, y = 269.297, z = -1303.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236016, gadget_id = 70360186, pos = { x = 2909.325, y = 269.283, z = -1295.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236017, gadget_id = 70360186, pos = { x = 2909.325, y = 272.241, z = -1297.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236018, gadget_id = 70360186, pos = { x = 2909.325, y = 269.283, z = -1299.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236019, gadget_id = 70360186, pos = { x = 2909.325, y = 269.283, z = -1301.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236020, gadget_id = 70360186, pos = { x = 2909.325, y = 271.347, z = -1303.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236021, gadget_id = 70360186, pos = { x = 2907.263, y = 269.281, z = -1295.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236022, gadget_id = 70360186, pos = { x = 2907.263, y = 269.281, z = -1297.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236023, gadget_id = 70360186, pos = { x = 2907.263, y = 269.281, z = -1299.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.Action03 },
	{ config_id = 236024, gadget_id = 70360186, pos = { x = 2907.263, y = 269.281, z = -1301.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 236025, gadget_id = 70360186, pos = { x = 2907.263, y = 271.066, z = -1303.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 236026, gadget_id = 70211111, pos = { x = 2911.004, y = 268.806, z = -1307.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true }
}

-- 区域
regions = {
	-- 出界判断用的Trigger
	{ config_id = 236027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = 2911.443, y = 269.885, z = -1299.604 } },
	{ config_id = 236029, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2912.571, y = 269.882, z = -1307.366 } }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite3里，并在action里写上你想做的事。
	{ config_id = 1236028, name = "VARIABLE_CHANGE_236028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_236028", action = "" },
	{ config_id = 1236029, name = "ENTER_REGION_236029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_236029" }
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
		regions = { 236029 },
		triggers = { "ENTER_REGION_236029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 236001, 236002, 236003, 236004, 236005, 236006, 236007, 236008, 236009, 236010, 236011, 236012, 236013, 236014, 236015, 236016, 236017, 236018, 236019, 236020, 236021, 236022, 236023, 236024, 236025 },
		regions = { 236027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 236026 },
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
function condition_EVENT_VARIABLE_CHANGE_236028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_236029(context, evt)
	return 0
end

require "BlackBoxPlay/DrawOneLine"