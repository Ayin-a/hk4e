-- 基础信息
local base_info = {
	group_id = 133315248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248001, monster_id = 26090801, pos = { x = 481.638, y = 239.477, z = 2169.772 }, rot = { x = 0.000, y = 324.432, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 248002, monster_id = 26090801, pos = { x = 501.971, y = 238.524, z = 2189.145 }, rot = { x = 0.000, y = 27.891, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 248003, monster_id = 26090801, pos = { x = 507.559, y = 237.940, z = 2166.014 }, rot = { x = 0.000, y = 232.642, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 248006, monster_id = 20010301, pos = { x = 486.136, y = 239.029, z = 2185.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 248007, monster_id = 20010301, pos = { x = 493.268, y = 238.604, z = 2162.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 248008, monster_id = 20010301, pos = { x = 512.024, y = 239.689, z = 2178.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 248005, gadget_id = 70211002, pos = { x = 497.365, y = 237.548, z = 2174.682 }, rot = { x = 0.000, y = 335.278, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 248011, gadget_id = 70220103, pos = { x = 497.273, y = 241.028, z = 2174.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 248010, shape = RegionShape.SPHERE, radius = 80, pos = { x = 494.761, y = 237.790, z = 2177.117 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1248009, name = "ANY_MONSTER_DIE_248009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_248009", action = "action_EVENT_ANY_MONSTER_DIE_248009" },
	{ config_id = 1248010, name = "ENTER_REGION_248010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_248010", action = "action_EVENT_ENTER_REGION_248010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 248004, gadget_id = 70217020, pos = { x = 497.258, y = 237.790, z = 2174.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
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
	end_suite = 2,
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
		gadgets = { 248005 },
		regions = { 248010 },
		triggers = { "ENTER_REGION_248010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 248001, 248002, 248003, 248006, 248007, 248008 },
		gadgets = { 248005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_248009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_248009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_248009(context, evt)
	-- 将configid为 248005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为248011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 248011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_248010(context, evt)
	if evt.param1 ~= 248010 then return false end
	
	-- 判断是区域248010
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 248010 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_248010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315248, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end