-- 基础信息
local base_info = {
	group_id = 133210362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 21010501, pos = { x = -4061.310, y = 203.853, z = -1410.869 }, rot = { x = 0.000, y = 71.239, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 17 },
	{ config_id = 362002, monster_id = 21010501, pos = { x = -4046.463, y = 203.787, z = -1427.327 }, rot = { x = 0.000, y = 45.012, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 17 },
	{ config_id = 362003, monster_id = 21030601, pos = { x = -4024.747, y = 203.740, z = -1395.107 }, rot = { x = 0.000, y = 78.761, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 17 },
	{ config_id = 362026, monster_id = 21020701, pos = { x = -4046.186, y = 206.163, z = -1413.197 }, rot = { x = 0.000, y = 251.573, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 17 },
	{ config_id = 362027, monster_id = 21011601, pos = { x = -4070.798, y = 206.109, z = -1387.426 }, rot = { x = 0.000, y = 315.934, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 17 },
	{ config_id = 362028, monster_id = 21011601, pos = { x = -4069.134, y = 206.069, z = -1390.812 }, rot = { x = 0.000, y = 122.314, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 362004, gadget_id = 70950092, pos = { x = -4061.066, y = 199.725, z = -1411.080 }, rot = { x = 0.000, y = 5.351, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 可摧毁小哨塔B
	{ config_id = 362005, gadget_id = 70950092, pos = { x = -4046.295, y = 199.725, z = -1428.198 }, rot = { x = 0.000, y = 2.529, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	-- 不可摧毁大哨塔A
	{ config_id = 362006, gadget_id = 70290182, pos = { x = -4044.642, y = 199.725, z = -1412.546 }, rot = { x = 0.000, y = 51.202, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 362007, gadget_id = 70950087, pos = { x = -4059.201, y = 199.998, z = -1407.573 }, rot = { x = 0.000, y = 100.235, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 362008, gadget_id = 70950087, pos = { x = -4041.436, y = 199.998, z = -1426.872 }, rot = { x = 0.000, y = 247.668, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔A连接梯子A
	{ config_id = 362009, gadget_id = 70290060, pos = { x = -4054.086, y = 204.043, z = -1411.475 }, rot = { x = 0.000, y = 4.936, z = 0.000 }, level = 18, area_id = 17 },
	-- 小哨塔B连接梯子B
	{ config_id = 362010, gadget_id = 70290060, pos = { x = -4045.926, y = 203.948, z = -1420.976 }, rot = { x = 0.000, y = 272.904, z = 0.000 }, level = 18, area_id = 17 },
	{ config_id = 362011, gadget_id = 70211002, pos = { x = -4043.822, y = 205.790, z = -1410.676 }, rot = { x = 0.000, y = 227.035, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 362015, gadget_id = 70290057, pos = { x = -4041.246, y = 199.997, z = -1431.070 }, rot = { x = 0.000, y = 142.056, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362016, gadget_id = 70290057, pos = { x = -4062.901, y = 199.997, z = -1416.636 }, rot = { x = 0.000, y = 211.650, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362017, gadget_id = 70290057, pos = { x = -4059.151, y = 199.998, z = -1379.592 }, rot = { x = 0.000, y = 145.175, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362018, gadget_id = 70290057, pos = { x = -4027.732, y = 199.998, z = -1388.575 }, rot = { x = 0.000, y = 348.918, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362020, gadget_id = 70290180, pos = { x = -4028.246, y = 199.998, z = -1413.177 }, rot = { x = 0.000, y = 342.436, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362021, gadget_id = 70290180, pos = { x = -4044.427, y = 199.999, z = -1386.728 }, rot = { x = 0.000, y = 342.436, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 362022, gadget_id = 70290180, pos = { x = -4071.596, y = 199.997, z = -1408.092 }, rot = { x = 0.000, y = 342.436, z = 0.000 }, level = 30, area_id = 17 },
	-- 不可摧毁大哨塔A
	{ config_id = 362023, gadget_id = 70290182, pos = { x = -4069.448, y = 199.725, z = -1387.945 }, rot = { x = 0.000, y = 348.202, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	-- 可摧毁小哨塔B
	{ config_id = 362024, gadget_id = 70950092, pos = { x = -4024.902, y = 199.725, z = -1394.897 }, rot = { x = 0.000, y = 223.442, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 362025, gadget_id = 70690005, pos = { x = -4058.116, y = 199.998, z = -1400.395 }, rot = { x = 0.000, y = 227.982, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 销毁了小哨塔A后销毁梯子A
	{ config_id = 1362012, name = "ANY_GADGET_DIE_362012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362012", action = "action_EVENT_ANY_GADGET_DIE_362012" },
	-- 销毁了小哨塔B后销毁梯子B
	{ config_id = 1362013, name = "ANY_GADGET_DIE_362013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362013", action = "action_EVENT_ANY_GADGET_DIE_362013" },
	{ config_id = 1362014, name = "ANY_MONSTER_DIE_362014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_362014", action = "action_EVENT_ANY_MONSTER_DIE_362014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false },
	{ config_id = 3, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 362019, gadget_id = 70290181, pos = { x = -4024.902, y = 199.998, z = -1394.897 }, rot = { x = 0.000, y = 136.203, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 362001, 362002, 362003, 362026, 362027, 362028 },
		gadgets = { 362004, 362005, 362006, 362007, 362008, 362009, 362010, 362011, 362015, 362016, 362017, 362018, 362020, 362021, 362022, 362023, 362024, 362025 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362012", "ANY_GADGET_DIE_362013", "ANY_MONSTER_DIE_362014" },
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
function condition_EVENT_ANY_GADGET_DIE_362012(context, evt)
	if 362004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 362009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362013(context, evt)
	if 362005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 362010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_362014(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133210362) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_362014(context, evt)
	-- 将configid为 362011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end