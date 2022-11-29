-- 基础信息
local base_info = {
	group_id = 133216010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 21010301, pos = { x = -4782.655, y = 204.020, z = -2540.563 }, rot = { x = 0.000, y = 272.708, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, area_id = 18 },
	{ config_id = 10002, monster_id = 21010901, pos = { x = -4785.266, y = 204.020, z = -2539.992 }, rot = { x = 354.065, y = 357.025, z = 0.308 }, level = 33, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 18 },
	{ config_id = 10003, monster_id = 21030301, pos = { x = -4761.674, y = 205.196, z = -2518.987 }, rot = { x = 0.000, y = 191.262, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, area_id = 18 },
	{ config_id = 10018, monster_id = 22010401, pos = { x = -4775.536, y = 206.014, z = -2530.395 }, rot = { x = 0.000, y = 307.713, z = 0.000 }, level = 33, drop_tag = "深渊法师", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 10004, gadget_id = 70950092, pos = { x = -4784.006, y = 200.000, z = -2541.360 }, rot = { x = 0.000, y = 317.381, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	-- 可摧毁小哨塔B
	{ config_id = 10005, gadget_id = 70950092, pos = { x = -4761.401, y = 200.000, z = -2541.848 }, rot = { x = 0.000, y = 314.558, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	-- 不可摧毁大哨塔A
	{ config_id = 10006, gadget_id = 70290059, pos = { x = -4771.921, y = 200.000, z = -2530.141 }, rot = { x = 0.000, y = 3.232, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 10007, gadget_id = 70950087, pos = { x = -4760.293, y = 200.000, z = -2538.342 }, rot = { x = 0.000, y = 52.264, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10008, gadget_id = 70950087, pos = { x = -4757.263, y = 200.000, z = -2542.335 }, rot = { x = 0.000, y = 270.559, z = 0.000 }, level = 33, area_id = 18 },
	-- 小哨塔A连接梯子A
	{ config_id = 10009, gadget_id = 70290060, pos = { x = -4779.038, y = 204.319, z = -2536.439 }, rot = { x = 0.000, y = 316.966, z = 0.000 }, level = 33, area_id = 18 },
	-- 小哨塔B连接梯子B
	{ config_id = 10010, gadget_id = 70290060, pos = { x = -4766.519, y = 204.224, z = -2536.740 }, rot = { x = 0.000, y = 224.933, z = 0.000 }, level = 33, area_id = 18 },
	-- 不可摧毁大哨塔A
	{ config_id = 10014, gadget_id = 70290059, pos = { x = -4759.974, y = 199.136, z = -2516.810 }, rot = { x = 0.000, y = 344.923, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	-- 小哨塔B连接梯子B
	{ config_id = 10015, gadget_id = 70290060, pos = { x = -4766.053, y = 205.076, z = -2524.501 }, rot = { x = 0.000, y = 130.485, z = 351.867 }, level = 33, area_id = 18 },
	{ config_id = 10016, gadget_id = 70290057, pos = { x = -4746.049, y = 199.343, z = -2529.328 }, rot = { x = 5.665, y = 93.040, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10017, gadget_id = 70211151, pos = { x = -4759.289, y = 205.166, z = -2515.853 }, rot = { x = 355.186, y = 213.989, z = 0.000 }, level = 26, chest_drop_id = 21900001, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 10019, gadget_id = 70220013, pos = { x = -4770.206, y = 206.113, z = -2530.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10020, gadget_id = 70220026, pos = { x = -4761.258, y = 205.198, z = -2514.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10021, gadget_id = 70220026, pos = { x = -4756.536, y = 205.160, z = -2516.674 }, rot = { x = 0.000, y = 25.910, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10022, gadget_id = 70220014, pos = { x = -4756.979, y = 205.160, z = -2517.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10023, gadget_id = 70220014, pos = { x = -4772.147, y = 206.021, z = -2534.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 10024, gadget_id = 70220014, pos = { x = -4773.725, y = 206.073, z = -2534.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1010011, name = "ANY_GADGET_DIE_10011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10011", action = "action_EVENT_ANY_GADGET_DIE_10011" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1010012, name = "ANY_GADGET_DIE_10012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10012", action = "action_EVENT_ANY_GADGET_DIE_10012" },
	{ config_id = 1010013, name = "ANY_MONSTER_DIE_10013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10013", action = "action_EVENT_ANY_MONSTER_DIE_10013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
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
		monsters = { 10001, 10002, 10003, 10018 },
		gadgets = { 10004, 10005, 10006, 10007, 10008, 10009, 10010, 10014, 10015, 10016, 10017, 10019, 10020, 10021, 10022, 10023, 10024 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_10011", "ANY_GADGET_DIE_10012", "ANY_MONSTER_DIE_10013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
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

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10011(context, evt)
	if 10004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10012(context, evt)
	if 10005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133216010) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10013(context, evt)
	-- 将configid为 10017 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10017, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end