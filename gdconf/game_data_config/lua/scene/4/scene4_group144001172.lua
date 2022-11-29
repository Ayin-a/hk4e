-- 基础信息
local base_info = {
	group_id = 144001172
}

-- Trigger变量
local defs = {
	region_id = 172009
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
	{ config_id = 172001, gadget_id = 70350263, pos = { x = 244.773, y = 121.722, z = 148.733 }, rot = { x = 333.625, y = 117.772, z = 1.952 }, level = 1, area_id = 102 },
	{ config_id = 172002, gadget_id = 70350220, pos = { x = 251.147, y = 120.833, z = 145.439 }, rot = { x = 351.059, y = 294.282, z = 0.596 }, level = 1, area_id = 102 },
	{ config_id = 172003, gadget_id = 70211112, pos = { x = 241.486, y = 125.793, z = 150.518 }, rot = { x = 14.369, y = 127.318, z = 359.470 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 172004, gadget_id = 70350278, pos = { x = 244.773, y = 121.722, z = 148.733 }, rot = { x = 333.625, y = 117.772, z = 1.952 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 172006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 251.147, y = 120.833, z = 145.439 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 172008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 251.147, y = 120.833, z = 145.439 }, area_id = 102 },
	-- 离开区域卸载suite4
	{ config_id = 172009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 251.147, y = 120.833, z = 145.439 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为0时，将节奏机切换至0状态
	{ config_id = 1172005, name = "GADGET_STATE_CHANGE_172005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_172005", action = "action_EVENT_GADGET_STATE_CHANGE_172005" },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 1172007, name = "ANY_GADGET_DIE_172007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172007", action = "action_EVENT_ANY_GADGET_DIE_172007" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1172008, name = "ENTER_REGION_172008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172008", action = "action_EVENT_ENTER_REGION_172008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1172009, name = "LEAVE_REGION_172009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172009", action = "action_EVENT_LEAVE_REGION_172009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1172010, name = "GROUP_REFRESH_172010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_172010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1172011, name = "GROUP_LOAD_172011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_172011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 172012, shape = RegionShape.SPHERE, radius = 3, pos = { x = 251.147, y = 120.833, z = 145.439 }, area_id = 102 },
		{ config_id = 172013, shape = RegionShape.SPHERE, radius = 3, pos = { x = 251.147, y = 120.833, z = 145.439 }, area_id = 102 }
	},
	triggers = {
		{ config_id = 1172012, name = "ENTER_REGION_172012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172012", action = "action_EVENT_ENTER_REGION_172012", trigger_count = 0 },
		{ config_id = 1172013, name = "LEAVE_REGION_172013", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_172013", action = "action_EVENT_LEAVE_REGION_172013", trigger_count = 0 }
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
		gadgets = { 172001, 172002, 172003 },
		regions = { 172006, 172008, 172009 },
		triggers = { "GADGET_STATE_CHANGE_172005", "ANY_GADGET_DIE_172007", "ENTER_REGION_172008", "LEAVE_REGION_172009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 172003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_172005", "GROUP_REFRESH_172010", "GROUP_LOAD_172011" },
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
		gadgets = { 172004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_172005(context, evt)
	if 172003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_172005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001172, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_172007(context, evt)
	if 172001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_172007(context, evt)
	-- 将configid为 172003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001172, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172008(context, evt)
	if evt.param1 ~= 172008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172008(context, evt)
	-- 将configid为 172001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001172, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_172009(context, evt)
	if evt.param1 ~=172009 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_172009(context, evt)
	-- 将configid为 172001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001172, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_172010(context, evt)
	-- 将configid为 172003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_172011(context, evt)
	-- 将configid为 172003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 172003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end