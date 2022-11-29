-- 基础信息
local base_info = {
	group_id = 133301421
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 421009, monster_id = 25210403, pos = { x = -421.098, y = 274.942, z = 3985.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 },
	{ config_id = 421011, monster_id = 25210203, pos = { x = -388.526, y = 282.689, z = 4004.427 }, rot = { x = 0.000, y = 76.680, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 },
	{ config_id = 421020, monster_id = 25210203, pos = { x = -406.636, y = 277.042, z = 3987.994 }, rot = { x = 0.000, y = 72.859, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 },
	{ config_id = 421022, monster_id = 25210203, pos = { x = -382.620, y = 288.003, z = 4021.042 }, rot = { x = 0.000, y = 353.865, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 421003, gadget_id = 70310479, pos = { x = -419.304, y = 271.653, z = 4009.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421005, gadget_id = 70310479, pos = { x = -418.723, y = 271.625, z = 4003.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421007, gadget_id = 70220016, pos = { x = -392.293, y = 283.253, z = 4018.338 }, rot = { x = 0.793, y = 317.660, z = 90.868 }, level = 33, area_id = 22 },
	{ config_id = 421008, gadget_id = 70310479, pos = { x = -403.183, y = 277.112, z = 3993.457 }, rot = { x = 0.000, y = 355.704, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421010, gadget_id = 70310479, pos = { x = -398.305, y = 277.112, z = 3994.099 }, rot = { x = 0.000, y = 358.387, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421015, gadget_id = 70310479, pos = { x = -379.375, y = 282.717, z = 4006.377 }, rot = { x = 0.000, y = 358.387, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421016, gadget_id = 70310479, pos = { x = -384.252, y = 282.717, z = 4005.735 }, rot = { x = 0.000, y = 355.704, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 421021, gadget_id = 70310006, pos = { x = -393.229, y = 288.272, z = 4018.370 }, rot = { x = 0.000, y = 34.588, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 421023, gadget_id = 70290584, pos = { x = -417.723, y = 271.779, z = 4006.153 }, rot = { x = 0.000, y = 263.893, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 421012, monster_id = 25210201, pos = { x = -402.833, y = 277.198, z = 4017.260 }, rot = { x = 0.000, y = 288.968, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9003, area_id = 22 },
		{ config_id = 421014, monster_id = 25210203, pos = { x = -400.392, y = 277.092, z = 3991.608 }, rot = { x = 0.000, y = 353.865, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 },
		{ config_id = 421017, monster_id = 25210501, pos = { x = -412.293, y = 282.773, z = 3999.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9001, area_id = 22 }
	},
	triggers = {
		{ config_id = 1421001, name = "GROUP_LOAD_421001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_421001", action = "action_EVENT_GROUP_LOAD_421001" }
	}
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
		monsters = { 421009, 421011, 421020, 421022 },
		gadgets = { 421003, 421005, 421007, 421008, 421010, 421015, 421016, 421021, 421023 },
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