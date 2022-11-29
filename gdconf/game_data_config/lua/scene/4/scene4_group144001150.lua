-- 基础信息
local base_info = {
	group_id = 144001150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 21020201, pos = { x = 660.606, y = 122.254, z = 111.305 }, rot = { x = 0.000, y = 338.713, z = 323.653 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 102 },
	{ config_id = 150002, monster_id = 21010401, pos = { x = 673.491, y = 126.858, z = 119.419 }, rot = { x = 0.000, y = 236.919, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 150003, monster_id = 21011001, pos = { x = 666.405, y = 128.651, z = 107.577 }, rot = { x = 0.000, y = 330.996, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 150004, monster_id = 21010201, pos = { x = 661.394, y = 122.304, z = 117.760 }, rot = { x = 0.000, y = 335.544, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 150005, monster_id = 21010301, pos = { x = 667.145, y = 122.264, z = 116.285 }, rot = { x = 0.000, y = 257.111, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 150006, monster_id = 21010301, pos = { x = 666.839, y = 122.263, z = 111.570 }, rot = { x = 0.000, y = 290.692, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 150023, monster_id = 21010401, pos = { x = 653.590, y = 123.674, z = 94.877 }, rot = { x = 0.000, y = 258.031, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150008, gadget_id = 70211002, pos = { x = 664.049, y = 122.305, z = 113.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 150010, gadget_id = 70290057, pos = { x = 644.526, y = 120.000, z = 115.585 }, rot = { x = 0.000, y = 280.760, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150012, gadget_id = 70290057, pos = { x = 666.538, y = 119.355, z = 134.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150013, gadget_id = 70300089, pos = { x = 664.372, y = 122.268, z = 121.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150014, gadget_id = 70300089, pos = { x = 669.452, y = 122.239, z = 120.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150015, gadget_id = 70220013, pos = { x = 662.706, y = 122.207, z = 107.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150016, gadget_id = 70220026, pos = { x = 657.982, y = 122.270, z = 114.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150017, gadget_id = 70950087, pos = { x = 645.171, y = 120.000, z = 105.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150018, gadget_id = 70950087, pos = { x = 658.560, y = 120.000, z = 130.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150019, gadget_id = 70950087, pos = { x = 684.580, y = 120.000, z = 102.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150020, gadget_id = 70950092, pos = { x = 654.902, y = 120.000, z = 94.107 }, rot = { x = 0.000, y = 331.885, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 150021, gadget_id = 70290060, pos = { x = 660.310, y = 124.320, z = 98.937 }, rot = { x = 0.000, y = 320.889, z = 359.292 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	{ config_id = 150007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 664.238, y = 122.305, z = 113.341 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1150007, name = "ENTER_REGION_150007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_150007", action = "action_EVENT_ENTER_REGION_150007" },
	{ config_id = 1150009, name = "ANY_MONSTER_DIE_150009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_150009", action = "action_EVENT_ANY_MONSTER_DIE_150009" },
	{ config_id = 1150022, name = "ANY_GADGET_DIE_150022", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_150022", action = "action_EVENT_ANY_GADGET_DIE_150022" }
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
		monsters = { 150001, 150002, 150003, 150004, 150023 },
		gadgets = { 150008, 150010, 150012, 150013, 150014, 150015, 150016, 150017, 150018, 150019, 150020, 150021 },
		regions = { 150007 },
		triggers = { "ENTER_REGION_150007", "ANY_MONSTER_DIE_150009", "ANY_GADGET_DIE_150022" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 150005, 150006 },
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
function condition_EVENT_ENTER_REGION_150007(context, evt)
	if evt.param1 ~= 150007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_150007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001150, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_150009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_150009(context, evt)
	-- 将configid为 150008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 150008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_150022(context, evt)
	if 150020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_150022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 150021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end