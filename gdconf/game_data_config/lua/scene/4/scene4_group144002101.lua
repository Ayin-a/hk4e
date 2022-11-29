-- 基础信息
local base_info = {
	group_id = 144002101
}

-- Trigger变量
local defs = {
	region_id = 101009
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
	{ config_id = 101001, gadget_id = 70350263, pos = { x = 87.703, y = 120.892, z = -736.423 }, rot = { x = 0.000, y = 3.533, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 101002, gadget_id = 70350220, pos = { x = 87.896, y = 119.667, z = -728.716 }, rot = { x = 0.000, y = 1.718, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 101003, gadget_id = 70211102, pos = { x = 81.051, y = 120.130, z = -732.086 }, rot = { x = 2.120, y = 68.494, z = 7.772 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 101004, gadget_id = 70350278, pos = { x = 87.703, y = 120.892, z = -736.423 }, rot = { x = 0.000, y = 3.533, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 101006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 87.896, y = 119.667, z = -728.716 }, area_id = 101, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 进入区域激活发球机，add suite4
	{ config_id = 101008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 87.896, y = 119.667, z = -728.716 }, area_id = 101 },
	-- 离开区域卸载suite4
	{ config_id = 101009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 87.896, y = 119.667, z = -728.716 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 开启宝箱后，将Group进度改成EndSuite(3)
	{ config_id = 1101005, name = "GADGET_STATE_CHANGE_101005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_101005", action = "action_EVENT_GADGET_STATE_CHANGE_101005", trigger_count = 0 },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1101007, name = "ANY_GADGET_DIE_101007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_101007", action = "action_EVENT_ANY_GADGET_DIE_101007" },
	-- 进入区域激活发球机，add suite4
	{ config_id = 1101008, name = "ENTER_REGION_101008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_101008", action = "action_EVENT_ENTER_REGION_101008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1101009, name = "LEAVE_REGION_101009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_101009", action = "action_EVENT_LEAVE_REGION_101009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1101010, name = "GROUP_REFRESH_101010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_101010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1101011, name = "GROUP_LOAD_101011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_101011", trigger_count = 0 }
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
		gadgets = { 101001, 101002, 101003 },
		regions = { 101006, 101008, 101009 },
		triggers = { "GADGET_STATE_CHANGE_101005", "ANY_GADGET_DIE_101007", "ENTER_REGION_101008", "LEAVE_REGION_101009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 101003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_101005", "GROUP_REFRESH_101010", "GROUP_LOAD_101011" },
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
		gadgets = { 101004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	if 101003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_101005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002101, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_101007(context, evt)
	if 101001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_101007(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002101, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_101008(context, evt)
	if evt.param1 ~= 101008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_101008(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002101, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_101009(context, evt)
	if evt.param1 ~=defs.region_id then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_101009(context, evt)
	-- 将configid为 101001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002101, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_101010(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_101011(context, evt)
	-- 将configid为 101003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end