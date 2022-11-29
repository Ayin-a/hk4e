-- 基础信息
local base_info = {
	group_id = 166001477
}

-- Trigger变量
local defs = {
	group_ID = 166001477,
	gadget_11 = 477001,
	gadget_12 = 477002,
	gadget_13 = 477003,
	gadget_14 = 477004,
	gadget_15 = 477005,
	gadget_21 = 477006,
	gadget_22 = 477007,
	gadget_23 = 477008,
	gadget_24 = 477009,
	gadget_25 = 477010,
	gadget_31 = 477011,
	gadget_32 = 477012,
	gadget_33 = 477013,
	gadget_34 = 477014,
	gadget_35 = 477015,
	gadget_41 = 477016,
	gadget_42 = 477017,
	gadget_43 = 477018,
	gadget_44 = 477019,
	gadget_45 = 477020,
	gadget_51 = 477021,
	gadget_52 = 477022,
	gadget_53 = 477023,
	gadget_54 = 477024,
	gadget_55 = 477025,
	trigger_boarder = 477027,
	gadget_starter = 477020,
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
	{ config_id = 477001, gadget_id = 70360186, pos = { x = 187.735, y = 318.620, z = 313.073 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477002, gadget_id = 70360186, pos = { x = 186.431, y = 318.744, z = 311.434 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477003, gadget_id = 70360186, pos = { x = 185.125, y = 318.869, z = 309.793 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477004, gadget_id = 70360186, pos = { x = 183.820, y = 318.993, z = 308.153 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, state = GadgetState.Action03, area_id = 300 },
	{ config_id = 477005, gadget_id = 70360186, pos = { x = 182.515, y = 319.117, z = 306.513 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, state = GadgetState.Action03, area_id = 300 },
	{ config_id = 477006, gadget_id = 70360186, pos = { x = 186.127, y = 318.617, z = 314.351 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477007, gadget_id = 70360186, pos = { x = 184.822, y = 318.741, z = 312.711 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477008, gadget_id = 70360186, pos = { x = 183.517, y = 318.866, z = 311.070 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477009, gadget_id = 70360186, pos = { x = 182.212, y = 318.990, z = 309.430 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477010, gadget_id = 70360186, pos = { x = 180.906, y = 319.115, z = 307.790 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477011, gadget_id = 70360186, pos = { x = 184.500, y = 318.612, z = 315.642 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477012, gadget_id = 70360186, pos = { x = 183.195, y = 318.736, z = 314.002 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477013, gadget_id = 70360186, pos = { x = 181.890, y = 318.861, z = 312.362 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477014, gadget_id = 70360186, pos = { x = 180.585, y = 318.985, z = 310.722 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477015, gadget_id = 70360186, pos = { x = 179.280, y = 319.109, z = 309.082 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477016, gadget_id = 70360186, pos = { x = 182.855, y = 318.593, z = 316.947 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477017, gadget_id = 70360186, pos = { x = 181.550, y = 318.717, z = 315.307 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477018, gadget_id = 70360186, pos = { x = 180.245, y = 318.842, z = 313.667 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477019, gadget_id = 70360186, pos = { x = 178.940, y = 318.966, z = 312.027 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477020, gadget_id = 70360186, pos = { x = 177.634, y = 319.090, z = 310.386 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 477021, gadget_id = 70360186, pos = { x = 181.234, y = 318.588, z = 318.221 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477022, gadget_id = 70360186, pos = { x = 179.929, y = 318.712, z = 316.582 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477023, gadget_id = 70360186, pos = { x = 178.624, y = 318.836, z = 314.941 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477024, gadget_id = 70360186, pos = { x = 177.319, y = 318.961, z = 313.301 }, rot = { x = 3.393, y = 39.281, z = 0.174 }, level = 1, area_id = 300 },
	{ config_id = 477025, gadget_id = 70360186, pos = { x = 176.014, y = 319.100, z = 311.661 }, rot = { x = 3.395, y = 38.623, z = 0.135 }, level = 1, state = GadgetState.Action03, area_id = 300 },
	{ config_id = 477026, gadget_id = 70211121, pos = { x = 176.699, y = 319.306, z = 305.865 }, rot = { x = 1.282, y = 38.961, z = 359.629 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	-- 出界判断用的Trigger
	{ config_id = 477027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = 181.882, y = 318.189, z = 312.108 }, area_id = 300 }
}

-- 触发器
triggers = {
	-- 【后果自负】检测玩法成功的Trigger。如果你希望在玩法成功后再做某些事，将这个Trigger挪到suite3里，并在action里写上你想做的事。
	{ config_id = 1477028, name = "VARIABLE_CHANGE_477028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_477028", action = "" }
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
		gadgets = { 477001, 477002, 477003, 477004, 477005, 477006, 477007, 477008, 477009, 477010, 477011, 477012, 477013, 477014, 477015, 477016, 477017, 477018, 477019, 477020, 477021, 477022, 477023, 477024, 477025 },
		regions = { 477027 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 477026 },
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
function condition_EVENT_VARIABLE_CHANGE_477028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"successed"为1
	if ScriptLib.GetGroupVariableValue(context, "successed") ~= 1 then
			return false
	end
	
	return true
end

require "BlackBoxPlay/DrawOneLine"