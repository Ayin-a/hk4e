-- 基础信息
local base_info = {
	group_id = 133223506
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
	{ config_id = 506001, gadget_id = 70290159, pos = { x = -6015.597, y = 207.733, z = -2597.434 }, rot = { x = 3.929, y = 62.832, z = 7.604 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 506002, gadget_id = 70290159, pos = { x = -6015.243, y = 210.266, z = -2586.917 }, rot = { x = 0.000, y = 32.580, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1506006, name = "QUEST_FINISH_506006", event = EventType.EVENT_QUEST_FINISH, source = "7222906", condition = "", action = "action_EVENT_QUEST_FINISH_506006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 506003, gadget_id = 70290159, pos = { x = -6144.632, y = 208.382, z = -2502.635 }, rot = { x = 0.000, y = 330.533, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
		{ config_id = 506004, gadget_id = 70290159, pos = { x = -6167.624, y = 215.868, z = -2502.330 }, rot = { x = 0.000, y = 104.626, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
		{ config_id = 506005, gadget_id = 70290159, pos = { x = -6162.496, y = 216.953, z = -2482.973 }, rot = { x = 0.000, y = 165.393, z = 349.214 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
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
		gadgets = { 506001, 506002 },
		regions = { },
		triggers = { "QUEST_FINISH_506006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_506006(context, evt)
	        for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133223506, v.config_id, 0)
	        end
	return 0
end