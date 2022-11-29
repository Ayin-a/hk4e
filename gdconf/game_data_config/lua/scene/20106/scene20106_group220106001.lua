-- 基础信息
local base_info = {
	group_id = 220106001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 29040101, pos = { x = 518.625, y = 74.167, z = 461.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 16 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70330048, pos = { x = 548.030, y = 87.810, z = 406.290 }, rot = { x = 1.822, y = 1.420, z = 2.656 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1003, gadget_id = 70330049, pos = { x = 471.598, y = 113.396, z = 423.989 }, rot = { x = 359.278, y = 343.022, z = 355.080 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1004, gadget_id = 70330050, pos = { x = 522.270, y = 127.400, z = 476.040 }, rot = { x = 353.003, y = 267.852, z = 3.454 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1005, gadget_id = 70330050, pos = { x = 556.080, y = 124.650, z = 449.190 }, rot = { x = 356.715, y = 358.599, z = 23.112 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1006, gadget_id = 70330050, pos = { x = 483.740, y = 125.700, z = 382.920 }, rot = { x = 325.734, y = 83.626, z = 9.938 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1007, gadget_id = 70330051, pos = { x = 539.020, y = 77.200, z = 516.340 }, rot = { x = 352.808, y = 268.267, z = 73.931 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1008, gadget_id = 70330052, pos = { x = 559.130, y = 81.450, z = 498.940 }, rot = { x = 336.852, y = 46.765, z = 353.780 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1009, gadget_id = 70330052, pos = { x = 497.720, y = 80.980, z = 514.080 }, rot = { x = 345.542, y = 351.833, z = 328.828 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1010, gadget_id = 70330052, pos = { x = 468.860, y = 79.210, z = 434.530 }, rot = { x = 351.879, y = 270.528, z = 344.000 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1011, gadget_id = 70330053, pos = { x = 456.240, y = 82.880, z = 472.390 }, rot = { x = 36.307, y = 13.571, z = 307.568 }, level = 1, state = GadgetState.ChestLocked, mark_flag = 1 },
	{ config_id = 1012, gadget_id = 70210106, pos = { x = 526.934, y = 74.192, z = 465.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "若陀龙王火电", persistent = true, boss_chest = { monster_config_id=1001, resin=60, life_time = 1800, take_num = 1} },
	{ config_id = 1014, gadget_id = 70360001, pos = { x = 500.737, y = 74.192, z = 457.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001013, name = "ANY_MONSTER_DIE_1013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1013", action = "action_EVENT_ANY_MONSTER_DIE_1013" },
	{ config_id = 1001015, name = "GADGET_STATE_CHANGE_1015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1015", action = "action_EVENT_GADGET_STATE_CHANGE_1015" }
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
		monsters = { 1001 },
		gadgets = { 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1013", "GADGET_STATE_CHANGE_1015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	--判断死亡怪物的configid是否为 1001
	if evt.param1 ~= 1001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1013(context, evt)
	-- 将configid为 1014 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1014, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1015(context, evt)
	if 1014 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1015(context, evt)
	-- 创建id为1012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end