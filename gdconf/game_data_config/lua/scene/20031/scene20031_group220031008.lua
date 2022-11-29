-- 基础信息
local base_info = {
	group_id = 220031008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21030401, pos = { x = 195.096, y = 42.000, z = 120.956 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8002, monster_id = 21010501, pos = { x = 193.154, y = 42.000, z = 119.021 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 8003, monster_id = 21011001, pos = { x = 193.009, y = 42.000, z = 122.975 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 8006, monster_id = 21011201, pos = { x = 185.513, y = 42.191, z = 116.062 }, rot = { x = 0.000, y = 312.751, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 8007, monster_id = 21011201, pos = { x = 185.610, y = 42.191, z = 125.731 }, rot = { x = 0.000, y = 240.801, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8005, gadget_id = 70350002, pos = { x = 190.475, y = 41.522, z = 137.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8009, gadget_id = 70310001, pos = { x = 195.501, y = 42.236, z = 126.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8010, gadget_id = 70310001, pos = { x = 195.486, y = 42.241, z = 116.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8011, gadget_id = 70220014, pos = { x = 202.975, y = 42.016, z = 110.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8012, gadget_id = 70220014, pos = { x = 201.662, y = 42.016, z = 110.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8013, gadget_id = 70220014, pos = { x = 178.566, y = 42.016, z = 108.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70220014, pos = { x = 176.736, y = 42.016, z = 108.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8015, gadget_id = 70310002, pos = { x = 185.003, y = 48.257, z = 134.959 }, rot = { x = 0.000, y = 183.341, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8016, gadget_id = 70310002, pos = { x = 195.977, y = 48.257, z = 134.952 }, rot = { x = 0.000, y = 184.193, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 8017, gadget_id = 70220013, pos = { x = 199.877, y = 42.016, z = 108.992 }, rot = { x = 0.000, y = 316.003, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 30.000, z = 40.000 }, pos = { x = 177.756, y = 42.000, z = 121.452 } }
}

-- 触发器
triggers = {
	{ config_id = 1008004, name = "ANY_MONSTER_DIE_8004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8004", action = "action_EVENT_ANY_MONSTER_DIE_8004", trigger_count = 0 },
	{ config_id = 1008008, name = "ENTER_REGION_8008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8008", action = "action_EVENT_ENTER_REGION_8008" }
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
		monsters = { 8001, 8002, 8003 },
		gadgets = { 8005, 8009, 8010 },
		regions = { 8008 },
		triggers = { "ANY_MONSTER_DIE_8004", "ENTER_REGION_8008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8006, 8007 },
		gadgets = { 8011, 8012, 8013, 8014, 8015, 8016, 8017 },
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
function condition_EVENT_ANY_MONSTER_DIE_8004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8004(context, evt)
	-- 将configid为 8005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8008(context, evt)
	if evt.param1 ~= 8008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8008(context, evt)
	-- 改变指定group组220031003中， configid为3011的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220031003, 3011, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220031008, 2)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220031003, 2)
	
	return 0
end