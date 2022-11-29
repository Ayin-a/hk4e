-- 基础信息
local base_info = {
	group_id = 201015002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2004, monster_id = 21010501, pos = { x = 33.711, y = 0.457, z = -3.778 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 3, disableWander = true, pose_id = 32 },
	{ config_id = 2005, monster_id = 21010401, pos = { x = 65.878, y = 3.882, z = 0.483 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2006, monster_id = 21010501, pos = { x = 67.745, y = 3.882, z = 2.065 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2007, monster_id = 21010401, pos = { x = 65.543, y = 3.882, z = 3.631 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2009, monster_id = 21010501, pos = { x = 43.461, y = 4.653, z = -7.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2010, monster_id = 21011001, pos = { x = 26.728, y = 5.323, z = 10.150 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2011, monster_id = 21011001, pos = { x = 44.644, y = 4.940, z = 18.822 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 3, disableWander = true, pose_id = 32 },
	{ config_id = 2012, monster_id = 21011001, pos = { x = 43.582, y = 0.626, z = 9.602 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2013, monster_id = 21010501, pos = { x = 28.210, y = 4.147, z = -8.166 }, rot = { x = 0.000, y = 65.300, z = 0.000 }, level = 3, disableWander = true, pose_id = 32 },
	{ config_id = 2014, monster_id = 21010401, pos = { x = 16.221, y = 1.748, z = -2.948 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2015, monster_id = 21010401, pos = { x = 17.364, y = 0.600, z = -0.151 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2016, monster_id = 21010901, pos = { x = 16.124, y = 1.748, z = 2.744 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2018, monster_id = 21011001, pos = { x = 19.115, y = 0.600, z = 3.716 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2019, monster_id = 21010901, pos = { x = 45.946, y = 0.895, z = 7.007 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 3, disableWander = true, pose_id = 32 },
	{ config_id = 2020, monster_id = 21010501, pos = { x = 36.231, y = 0.509, z = -3.016 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 3, disableWander = true, pose_id = 32 },
	{ config_id = 2021, monster_id = 21010401, pos = { x = 64.410, y = 0.627, z = 17.583 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 402 },
	{ config_id = 2022, monster_id = 21011001, pos = { x = 65.572, y = 0.626, z = 19.951 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2023, gadget_id = 70350002, pos = { x = 6.244, y = 2.740, z = 0.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70900201, pos = { x = -82.486, y = 30.083, z = 37.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2025, gadget_id = 70710005, pos = { x = -38.400, y = -2.762, z = 2.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2026, gadget_id = 70710005, pos = { x = -70.300, y = 11.000, z = 10.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2027, gadget_id = 70690001, pos = { x = 3.800, y = 9.300, z = 2.000 }, rot = { x = 346.430, y = 270.000, z = 13.673 }, level = 1 },
	{ config_id = 2028, gadget_id = 70690001, pos = { x = -13.600, y = 13.500, z = 1.867 }, rot = { x = 346.430, y = 269.561, z = 13.673 }, level = 1 },
	{ config_id = 2029, gadget_id = 70690001, pos = { x = -4.900, y = 11.400, z = 1.933 }, rot = { x = 346.430, y = 269.561, z = 13.673 }, level = 1 },
	{ config_id = 2030, gadget_id = 70900201, pos = { x = 7.247, y = 6.430, z = 0.484 }, rot = { x = 0.000, y = 90.083, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 50.000 }, pos = { x = 86.652, y = 3.882, z = 0.275 } }
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", forbid_guest = false }
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
		monsters = { 2004, 2005, 2006, 2007, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2018, 2019, 2020, 2021, 2022 },
		gadgets = { 2023 },
		regions = { 2001 },
		triggers = { "ANY_MONSTER_DIE_1", "ENTER_REGION_2001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201015002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 将configid为 2023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2027的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2027 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2029的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2029 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201015002, monsters = {}, gadgets = {2030} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 创建id为2030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end