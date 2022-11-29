-- 基础信息
local base_info = {
	group_id = 133302639
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 639009, monster_id = 26090501, pos = { x = -115.999, y = 189.710, z = 2020.201 }, rot = { x = 0.000, y = 232.944, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 639010, monster_id = 26090501, pos = { x = -122.001, y = 190.723, z = 2019.160 }, rot = { x = 0.000, y = 259.700, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 639011, monster_id = 26090501, pos = { x = -119.528, y = 190.205, z = 2023.426 }, rot = { x = 0.000, y = 221.451, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 639018, monster_id = 26090501, pos = { x = -120.696, y = 191.467, z = 2022.430 }, rot = { x = 0.000, y = 149.795, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 639001, gadget_id = 70220103, pos = { x = -108.826, y = 201.984, z = 2028.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 639002, gadget_id = 70310198, pos = { x = -121.280, y = 190.874, z = 2020.826 }, rot = { x = 0.000, y = 109.730, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 20 },
	{ config_id = 639003, gadget_id = 70220103, pos = { x = -93.794, y = 200.228, z = 2053.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 639005, gadget_id = 70230112, pos = { x = -107.207, y = 194.685, z = 2029.421 }, rot = { x = 73.663, y = 138.160, z = 179.995 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639006, gadget_id = 70230113, pos = { x = -107.497, y = 195.838, z = 2029.373 }, rot = { x = 321.413, y = 140.133, z = 180.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639007, gadget_id = 70230113, pos = { x = -107.582, y = 196.446, z = 2029.016 }, rot = { x = 78.566, y = 321.990, z = 0.009 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639008, gadget_id = 70230113, pos = { x = -107.961, y = 196.208, z = 2029.575 }, rot = { x = 11.642, y = 126.872, z = 174.888 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639013, gadget_id = 70230112, pos = { x = -123.595, y = 194.780, z = 2020.005 }, rot = { x = 292.329, y = 326.002, z = 19.761 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639014, gadget_id = 70230113, pos = { x = -123.785, y = 193.564, z = 2019.798 }, rot = { x = 321.413, y = 140.133, z = 180.000 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639015, gadget_id = 70230113, pos = { x = -123.750, y = 193.192, z = 2019.294 }, rot = { x = 8.358, y = 141.981, z = 179.998 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 },
	{ config_id = 639016, gadget_id = 70230113, pos = { x = -123.995, y = 193.196, z = 2020.024 }, rot = { x = 67.209, y = 2.295, z = 27.060 }, level = 27, state = GadgetState.Action01, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	-- 注目刷怪亮涂鸦
	{ config_id = 639004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -108.947, y = 199.388, z = 2028.213 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 注目刷怪亮涂鸦
	{ config_id = 1639004, name = "ENTER_REGION_639004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_639004", action = "action_EVENT_ENTER_REGION_639004" },
	-- 怪死
	{ config_id = 1639012, name = "ANY_MONSTER_DIE_639012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_639012", action = "action_EVENT_ANY_MONSTER_DIE_639012" },
	{ config_id = 1639017, name = "MONSTER_BATTLE_639017", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_639017", action = "action_EVENT_MONSTER_BATTLE_639017" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 639019, gadget_id = 70290008, pos = { x = -114.529, y = 189.994, z = 2019.084 }, rot = { x = 0.000, y = 175.884, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 639020, gadget_id = 70500000, pos = { x = -114.529, y = 189.994, z = 2019.084 }, rot = { x = 0.000, y = 175.884, z = 0.000 }, level = 27, point_type = 3008, owner = 639019, area_id = 20 },
		{ config_id = 639021, gadget_id = 70290008, pos = { x = -122.808, y = 191.191, z = 2029.882 }, rot = { x = 0.000, y = 61.534, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 639022, gadget_id = 70500000, pos = { x = -122.808, y = 191.191, z = 2029.882 }, rot = { x = 0.000, y = 61.534, z = 0.000 }, level = 27, point_type = 3008, owner = 639021, area_id = 20 }
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
		gadgets = { 639001, 639002, 639005, 639006, 639007, 639008, 639013, 639014, 639015, 639016 },
		regions = { 639004 },
		triggers = { "ENTER_REGION_639004", "ANY_MONSTER_DIE_639012", "MONSTER_BATTLE_639017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_639004(context, evt)
	if evt.param1 ~= 639004 then return false end
	
	-- 判断是区域639004
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 639004 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_639004(context, evt)
	-- 将configid为 639005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 639010, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 639018, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_639012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_639012(context, evt)
	-- 将configid为 639002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为639003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 639003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 639013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 639016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 639016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_639017(context, evt)
	if 639018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_639017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 639011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 639009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end