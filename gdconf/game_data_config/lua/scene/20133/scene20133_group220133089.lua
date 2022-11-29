-- 基础信息
local base_info = {
	group_id = 220133089
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {

		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {

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
	-- 小花-固定
	[89002] = { config_id = 89002, gadget_id = 70310170, pos = { x = 410.137, y = 141.944, z = 1967.414 }, rot = { x = 0.013, y = 174.940, z = 357.204 }, level = 1, persistent = true },
	-- 小花-固定
	[89003] = { config_id = 89003, gadget_id = 70310170, pos = { x = 411.116, y = 141.934, z = 1957.230 }, rot = { x = 347.865, y = 138.494, z = 358.451 }, level = 1, persistent = true },
	-- 202一发解锁
	[89004] = { config_id = 89004, gadget_id = 70310186, pos = { x = 418.530, y = 141.670, z = 1947.760 }, rot = { x = 0.000, y = 338.164, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[89005] = { config_id = 89005, gadget_id = 70310171, pos = { x = 400.342, y = 142.068, z = 1959.285 }, rot = { x = 0.000, y = 350.549, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, interact_id = 64 },
	-- 小花-固定
	[89006] = { config_id = 89006, gadget_id = 70310170, pos = { x = 401.599, y = 141.926, z = 1959.469 }, rot = { x = 1.596, y = 46.536, z = 4.407 }, level = 1, persistent = true },
	[89011] = { config_id = 89011, gadget_id = 70950157, pos = { x = 412.996, y = 147.425, z = 1946.892 }, rot = { x = 358.077, y = 251.716, z = 87.974 }, level = 1 },
	[89012] = { config_id = 89012, gadget_id = 70950157, pos = { x = 416.804, y = 152.023, z = 1948.622 }, rot = { x = 272.191, y = 319.020, z = 22.613 }, level = 1 },
	[89013] = { config_id = 89013, gadget_id = 70950157, pos = { x = 424.958, y = 147.002, z = 1950.844 }, rot = { x = 11.529, y = 251.235, z = 87.933 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089001, name = "QUEST_FINISH_89001", event = EventType.EVENT_QUEST_FINISH, source = "4006908", condition = "", action = "action_EVENT_QUEST_FINISH_89001", trigger_count = 0 },
	{ config_id = 1089014, name = "ANY_GADGET_DIE_89014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89014", action = "action_EVENT_ANY_GADGET_DIE_89014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 89007, gadget_id = 70310170, pos = { x = 404.905, y = 139.068, z = 1972.067 }, rot = { x = 2.436, y = 316.298, z = 354.647 }, level = 1, persistent = true },
		{ config_id = 89008, gadget_id = 70310170, pos = { x = 403.094, y = 142.574, z = 1951.842 }, rot = { x = 7.062, y = 44.802, z = 358.931 }, level = 1, persistent = true },
		{ config_id = 89009, gadget_id = 70310170, pos = { x = 400.202, y = 137.693, z = 2001.250 }, rot = { x = 345.994, y = 100.477, z = 0.350 }, level = 1, persistent = true },
		{ config_id = 89010, gadget_id = 70310170, pos = { x = 400.526, y = 138.530, z = 1991.642 }, rot = { x = 6.600, y = 356.215, z = 5.327 }, level = 1, persistent = true }
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
		gadgets = { 89002, 89003, 89004, 89005, 89006, 89011, 89012, 89013 },
		regions = { },
		triggers = { "QUEST_FINISH_89001", "ANY_GADGET_DIE_89014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_89001(context, evt)
	-- 将configid为 89005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89014(context, evt)
	if 89004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133089, EntityType.GADGET, 89011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133089, EntityType.GADGET, 89012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133089, EntityType.GADGET, 89013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V2_8/TransferFlower"