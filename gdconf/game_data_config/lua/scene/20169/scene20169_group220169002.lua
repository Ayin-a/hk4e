-- 基础信息
local base_info = {
	group_id = 220169002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 23010501, pos = { x = -30.433, y = 0.460, z = 58.802 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9001 },
	{ config_id = 2002, monster_id = 23010401, pos = { x = -30.512, y = 0.460, z = 49.119 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, pose_id = 9012 },
	{ config_id = 2003, monster_id = 23010301, pos = { x = -36.263, y = 0.485, z = 56.152 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2004, gadget_id = 70220070, pos = { x = -39.765, y = 0.460, z = 59.082 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220071, pos = { x = -37.932, y = 0.458, z = 60.391 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70220070, pos = { x = -28.772, y = 0.451, z = 45.212 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70220071, pos = { x = -26.940, y = 0.460, z = 46.522 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70220071, pos = { x = -29.248, y = 1.563, z = 67.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220070, pos = { x = -27.004, y = 1.563, z = 67.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70220071, pos = { x = -34.082, y = 1.563, z = 67.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70220070, pos = { x = -31.838, y = 1.563, z = 67.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70211001, pos = { x = -24.223, y = 1.563, z = 69.032 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true },
	{ config_id = 2013, gadget_id = 70220071, pos = { x = -39.417, y = 0.460, z = 47.178 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220070, pos = { x = -37.477, y = 0.460, z = 46.061 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220048, pos = { x = -28.369, y = 0.496, z = 60.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220048, pos = { x = -27.695, y = 0.460, z = 57.539 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220050, pos = { x = -28.630, y = 0.497, z = 58.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70220050, pos = { x = -27.607, y = 0.483, z = 59.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 指引点
	{ config_id = 2020, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 20.000 }, pos = { x = -45.431, y = 2.387, z = 51.893 } }
}

-- 触发器
triggers = {
	{ config_id = 1002019, name = "ANY_MONSTER_DIE_2019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2019", action = "action_EVENT_ANY_MONSTER_DIE_2019" },
	-- 指引点
	{ config_id = 1002020, name = "ENTER_REGION_2020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2020", action = "action_EVENT_ENTER_REGION_2020" }
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
		monsters = { 2001, 2002, 2003 },
		gadgets = { 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 },
		regions = { 2020 },
		triggers = { "ANY_MONSTER_DIE_2019", "ENTER_REGION_2020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2019(context, evt)
	-- 改变指定group组220169003中， configid为3001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169003, 3001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220169013, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2020(context, evt)
	if evt.param1 ~= 2020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220169013, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end