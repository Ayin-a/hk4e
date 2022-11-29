-- 基础信息
local base_info = {
	group_id = 220005002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 21010601, pos = { x = -56.332, y = 4.285, z = 0.635 }, rot = { x = 359.819, y = 89.555, z = 1.185 }, level = 1, pose_id = 9012 },
	{ config_id = 2003, monster_id = 21010601, pos = { x = -51.859, y = 4.285, z = -3.455 }, rot = { x = 359.819, y = 1.642, z = 1.185 }, level = 1, pose_id = 9012 },
	{ config_id = 2004, monster_id = 21010601, pos = { x = -51.766, y = 4.285, z = 4.056 }, rot = { x = 359.819, y = 179.621, z = 1.185 }, level = 1, pose_id = 9012 },
	{ config_id = 2005, monster_id = 21020101, pos = { x = -56.632, y = 4.285, z = 9.983 }, rot = { x = 0.000, y = 157.501, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 2009, monster_id = 21010901, pos = { x = -69.714, y = 10.638, z = 11.160 }, rot = { x = 0.000, y = 131.936, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 2017, monster_id = 20010801, pos = { x = -64.738, y = 4.578, z = 7.185 }, rot = { x = 0.000, y = 43.541, z = 0.000 }, level = 1 },
	{ config_id = 2022, monster_id = 20010801, pos = { x = -63.311, y = 4.473, z = 10.924 }, rot = { x = 0.000, y = 91.052, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70300099, pos = { x = -52.121, y = 4.285, z = 0.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2006, gadget_id = 70220013, pos = { x = -62.915, y = 4.285, z = 14.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70220013, pos = { x = -64.652, y = 4.285, z = 13.303 }, rot = { x = 0.000, y = 22.704, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70350018, pos = { x = -68.214, y = 4.351, z = 11.613 }, rot = { x = 1.315, y = 230.585, z = 359.007 }, level = 1 },
	{ config_id = 2010, gadget_id = 70300097, pos = { x = -58.278, y = 4.285, z = 12.233 }, rot = { x = 0.000, y = 339.558, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220013, pos = { x = -59.376, y = 4.217, z = -12.925 }, rot = { x = 0.000, y = 358.395, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220013, pos = { x = -60.139, y = 4.285, z = -10.589 }, rot = { x = 0.000, y = 17.004, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220014, pos = { x = -55.431, y = 4.285, z = 13.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220014, pos = { x = -52.094, y = 4.285, z = -4.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220014, pos = { x = -53.517, y = 4.285, z = -4.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220014, pos = { x = -52.892, y = 4.285, z = -5.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70900201, pos = { x = -72.694, y = 20.182, z = 10.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, gadget_id = 70211012, pos = { x = -58.264, y = 4.483, z = 12.448 }, rot = { x = 0.000, y = 136.473, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 2019, shape = RegionShape.SPHERE, radius = 5, pos = { x = -74.495, y = 22.311, z = 11.581 } }
}

-- 触发器
triggers = {
	{ config_id = 1002019, name = "ENTER_REGION_2019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2019", action = "action_EVENT_ENTER_REGION_2019", forbid_guest = false },
	{ config_id = 1002021, name = "ANY_MONSTER_DIE_2021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2021", action = "action_EVENT_ANY_MONSTER_DIE_2021" }
}

-- 变量
variables = {
	{ config_id = 1, name = "iskill", value = 0, no_refresh = true }
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
		monsters = { 2002, 2003, 2004, 2005, 2009, 2017, 2022 },
		gadgets = { 2001, 2006, 2007, 2008, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2020 },
		regions = { 2019 },
		triggers = { "ENTER_REGION_2019", "ANY_MONSTER_DIE_2021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2019(context, evt)
	if evt.param1 ~= 2019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 解锁目标2020
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2020, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 创建id为2018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end