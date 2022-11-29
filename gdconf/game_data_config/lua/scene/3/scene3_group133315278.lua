-- 基础信息
local base_info = {
	group_id = 133315278
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 278001, monster_id = 20010301, pos = { x = 313.485, y = 288.427, z = 2382.516 }, rot = { x = 0.000, y = 305.996, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 278002, monster_id = 20010301, pos = { x = 304.670, y = 288.110, z = 2360.897 }, rot = { x = 0.000, y = 79.369, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 278003, monster_id = 20010401, pos = { x = 302.473, y = 288.123, z = 2363.789 }, rot = { x = 0.000, y = 122.521, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 },
	{ config_id = 278004, monster_id = 20010401, pos = { x = 310.131, y = 288.401, z = 2383.276 }, rot = { x = 0.000, y = 110.746, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 278005, gadget_id = 70211002, pos = { x = 322.848, y = 289.464, z = 2364.314 }, rot = { x = 0.000, y = 296.007, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 278007, shape = RegionShape.SPHERE, radius = 20, pos = { x = 313.965, y = 288.357, z = 2371.330 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1278006, name = "ANY_MONSTER_DIE_278006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_278006", action = "action_EVENT_ANY_MONSTER_DIE_278006" },
	{ config_id = 1278007, name = "ENTER_REGION_278007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278007", action = "action_EVENT_ENTER_REGION_278007" }
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
		gadgets = { 278005 },
		regions = { 278007 },
		triggers = { "ENTER_REGION_278007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 278001, 278002, 278003, 278004 },
		gadgets = { 278005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_278006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_278006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_278006(context, evt)
	-- 将configid为 278005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 278005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_278007(context, evt)
	if evt.param1 ~= 278007 then return false end
	
	-- 判断是区域278007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 278007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315278, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end