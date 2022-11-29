-- 基础信息
local base_info = {
	group_id = 144001171
}

-- Trigger变量
local defs = {
	region_id = 344011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171001, gadget_id = 70350268, pos = { x = 230.838, y = 134.299, z = 321.303 }, rot = { x = 355.415, y = 94.611, z = 3.779 }, level = 1, area_id = 102 },
	{ config_id = 171002, gadget_id = 70350220, pos = { x = 238.118, y = 132.507, z = 320.493 }, rot = { x = 0.000, y = 98.635, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 171003, gadget_id = 70211112, pos = { x = 233.729, y = 132.349, z = 325.961 }, rot = { x = 16.939, y = 82.542, z = 9.359 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 171004, gadget_id = 70350278, pos = { x = 230.838, y = 134.299, z = 321.303 }, rot = { x = 355.415, y = 94.611, z = 3.779 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 171006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 238.118, y = 132.507, z = 320.493 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 171008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 238.118, y = 132.507, z = 320.493 }, area_id = 102 },
	-- 离开区域卸载suite4
	{ config_id = 171009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 238.118, y = 132.507, z = 320.493 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为0时，将发球机切换至0状态
	{ config_id = 1171005, name = "GADGET_STATE_CHANGE_171005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171005", action = "action_EVENT_GADGET_STATE_CHANGE_171005", trigger_count = 0 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 1171007, name = "ANY_GADGET_DIE_171007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_171007", action = "action_EVENT_ANY_GADGET_DIE_171007", trigger_count = 0 },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 1171008, name = "ENTER_REGION_171008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_171008", action = "action_EVENT_ENTER_REGION_171008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1171009, name = "LEAVE_REGION_171009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_171009", action = "action_EVENT_LEAVE_REGION_171009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1171010, name = "GROUP_REFRESH_171010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_171010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1171011, name = "GROUP_LOAD_171011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_171011", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 171001, 171002, 171003 },
		regions = { 171006, 171008, 171009 },
		triggers = { "GADGET_STATE_CHANGE_171005", "ANY_GADGET_DIE_171007", "ENTER_REGION_171008", "LEAVE_REGION_171009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_171005", "GROUP_REFRESH_171010", "GROUP_LOAD_171011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 171004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	if 171003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001171, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_171007(context, evt)
	if 171001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_171007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001171, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_171008(context, evt)
	if evt.param1 ~= 171008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_171008(context, evt)
	-- 将configid为 171001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001171, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_171009(context, evt)
	if evt.param1 ~=171009 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_171009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001171, 4)
	
	-- 将configid为 171001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_171010(context, evt)
	-- 将configid为 171003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171011(context, evt)
	-- 将configid为 171003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end