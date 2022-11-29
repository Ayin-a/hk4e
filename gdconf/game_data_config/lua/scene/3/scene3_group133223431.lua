-- 基础信息
local base_info = {
	group_id = 133223431
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
	{ config_id = 431001, gadget_id = 70290159, pos = { x = -5999.027, y = 212.769, z = -2580.698 }, rot = { x = 0.000, y = 258.178, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431002, gadget_id = 70290159, pos = { x = -6008.779, y = 212.835, z = -2552.506 }, rot = { x = 0.000, y = 85.055, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431003, gadget_id = 70290159, pos = { x = -5978.478, y = 203.091, z = -2531.906 }, rot = { x = 8.141, y = 153.967, z = 345.981 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431005, gadget_id = 70290159, pos = { x = -5984.852, y = 179.326, z = -2590.758 }, rot = { x = 352.075, y = 358.303, z = 348.826 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431006, gadget_id = 70290159, pos = { x = -5962.253, y = 178.143, z = -2581.296 }, rot = { x = 346.435, y = 295.982, z = 1.705 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431007, gadget_id = 70290159, pos = { x = -5934.202, y = 180.485, z = -2576.245 }, rot = { x = 5.901, y = 260.010, z = 1.667 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431008, gadget_id = 70290159, pos = { x = -5949.851, y = 178.131, z = -2568.370 }, rot = { x = 0.000, y = 75.547, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431009, gadget_id = 70290159, pos = { x = -5943.651, y = 178.314, z = -2585.695 }, rot = { x = 0.000, y = 322.140, z = 353.489 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431010, gadget_id = 70290159, pos = { x = -5954.003, y = 179.942, z = -2552.422 }, rot = { x = 0.000, y = 49.235, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431018, gadget_id = 70290159, pos = { x = -5975.708, y = 215.838, z = -2559.426 }, rot = { x = 0.000, y = 186.365, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 431019, gadget_id = 70290159, pos = { x = -5993.669, y = 203.808, z = -2531.550 }, rot = { x = 0.000, y = 324.480, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1431020, name = "QUEST_FINISH_431020", event = EventType.EVENT_QUEST_FINISH, source = "7222906", condition = "", action = "action_EVENT_QUEST_FINISH_431020", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 431004, gadget_id = 70290159, pos = { x = -5996.335, y = 183.236, z = -2578.035 }, rot = { x = 359.812, y = 32.441, z = 346.331 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 431011, gadget_id = 70290159, pos = { x = -5956.961, y = 180.500, z = -2545.875 }, rot = { x = 0.000, y = 31.252, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 431012, gadget_id = 70290159, pos = { x = -5996.818, y = 178.604, z = -2542.999 }, rot = { x = 0.000, y = 286.426, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 431013, gadget_id = 70290159, pos = { x = -5993.033, y = 179.268, z = -2572.619 }, rot = { x = 0.000, y = 66.111, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 431014, gadget_id = 70290159, pos = { x = -5979.265, y = 179.962, z = -2538.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 431015, gadget_id = 70290159, pos = { x = -6015.396, y = 210.200, z = -2587.471 }, rot = { x = 349.152, y = 56.582, z = 0.000 }, level = 33, area_id = 18 },
		{ config_id = 431016, gadget_id = 70290159, pos = { x = -6015.841, y = 207.708, z = -2596.871 }, rot = { x = 2.290, y = 52.073, z = 352.984 }, level = 33, area_id = 18 },
		{ config_id = 431017, gadget_id = 70290159, pos = { x = -6004.759, y = 211.719, z = -2570.164 }, rot = { x = 0.000, y = 164.375, z = 10.904 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
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
		monsters = { },
		gadgets = { 431001, 431002, 431003, 431005, 431006, 431007, 431008, 431009, 431010, 431018, 431019 },
		regions = { },
		triggers = { "QUEST_FINISH_431020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_431020(context, evt)
	        for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133223431, v.config_id, 0)
	        end
	return 0
end