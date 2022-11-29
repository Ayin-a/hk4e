-- 基础信息
local base_info = {
	group_id = 133222015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15005, monster_id = 21010501, pos = { x = -4896.610, y = 208.296, z = -4713.955 }, rot = { x = 19.095, y = 266.907, z = 4.065 }, level = 30, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 14 },
	{ config_id = 15006, monster_id = 21010201, pos = { x = -4899.513, y = 202.951, z = -4722.573 }, rot = { x = 0.000, y = 58.208, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, area_id = 14 },
	{ config_id = 15025, monster_id = 21010701, pos = { x = -4849.545, y = 207.805, z = -4716.489 }, rot = { x = 0.000, y = 257.308, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15004, gadget_id = 70310004, pos = { x = -4896.857, y = 202.986, z = -4720.942 }, rot = { x = 357.612, y = 345.995, z = 1.517 }, level = 30, area_id = 14 },
	{ config_id = 15007, gadget_id = 70500000, pos = { x = -4883.758, y = 206.387, z = -4707.913 }, rot = { x = 349.825, y = 191.006, z = 9.283 }, level = 30, point_type = 9104, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 15008, gadget_id = 70500000, pos = { x = -4895.801, y = 202.990, z = -4721.415 }, rot = { x = 359.758, y = 326.227, z = 4.461 }, level = 30, point_type = 9104, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 15009, gadget_id = 70500000, pos = { x = -4895.742, y = 203.017, z = -4720.913 }, rot = { x = 356.049, y = 25.255, z = 2.087 }, level = 30, point_type = 9104, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 15013, gadget_id = 70310010, pos = { x = -4904.841, y = 203.348, z = -4715.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 15014, gadget_id = 70300088, pos = { x = -4896.343, y = 202.926, z = -4727.110 }, rot = { x = 0.000, y = 276.442, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 15015, gadget_id = 70500000, pos = { x = -4884.740, y = 206.264, z = -4708.466 }, rot = { x = 71.820, y = 173.823, z = 277.016 }, level = 30, point_type = 9104, isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 15018, gadget_id = 70220013, pos = { x = -4889.386, y = 202.791, z = -4725.491 }, rot = { x = 5.505, y = 148.757, z = 358.751 }, level = 30, area_id = 14 },
	{ config_id = 15022, gadget_id = 70300088, pos = { x = -4893.074, y = 202.905, z = -4726.296 }, rot = { x = 0.000, y = 244.093, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 15024, gadget_id = 70300086, pos = { x = -4890.183, y = 203.133, z = -4719.770 }, rot = { x = 0.000, y = 0.000, z = 346.706 }, level = 30, area_id = 14 }
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
		{ config_id = 15001, monster_id = 21030201, pos = { x = -4864.294, y = 200.175, z = -4745.330 }, rot = { x = 0.000, y = 250.629, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", area_id = 14 },
		{ config_id = 15010, monster_id = 21010301, pos = { x = -4892.397, y = 203.240, z = -4719.696 }, rot = { x = 8.073, y = 232.759, z = 10.467 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 },
		{ config_id = 15021, monster_id = 21010301, pos = { x = -4848.909, y = 210.232, z = -4714.962 }, rot = { x = 0.000, y = 257.308, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
		{ config_id = 15023, monster_id = 21010301, pos = { x = -4898.971, y = 202.874, z = -4724.288 }, rot = { x = 0.000, y = 155.255, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9013, area_id = 14 }
	},
	gadgets = {
		{ config_id = 15002, gadget_id = 70211002, pos = { x = -4898.571, y = 202.997, z = -4715.371 }, rot = { x = 0.270, y = 231.508, z = 3.213 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 15012, gadget_id = 70300087, pos = { x = -4983.952, y = 200.000, z = -4718.458 }, rot = { x = 348.528, y = 0.228, z = 357.324 }, level = 30, area_id = 14 },
		{ config_id = 15016, gadget_id = 70300090, pos = { x = -4848.483, y = 200.638, z = -4739.068 }, rot = { x = 359.664, y = 29.133, z = 359.813 }, level = 30, area_id = 14 },
		{ config_id = 15017, gadget_id = 70220013, pos = { x = -4889.864, y = 203.005, z = -4723.421 }, rot = { x = 357.267, y = 133.978, z = 348.809 }, level = 30, area_id = 14 },
		{ config_id = 15019, gadget_id = 70300088, pos = { x = -4902.330, y = 206.065, z = -4741.510 }, rot = { x = 357.924, y = 20.788, z = 355.394 }, level = 30, area_id = 14 },
		{ config_id = 15020, gadget_id = 70300088, pos = { x = -4897.287, y = 203.424, z = -4740.116 }, rot = { x = 1.263, y = 49.151, z = 0.092 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1015003, name = "ANY_MONSTER_DIE_15003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15003", action = "action_EVENT_ANY_MONSTER_DIE_15003" },
		{ config_id = 1015011, name = "MONSTER_BATTLE_15011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_15011" }
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
		monsters = { 15005, 15006, 15025 },
		gadgets = { 15004, 15007, 15008, 15009, 15013, 15014, 15015, 15018, 15022, 15024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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