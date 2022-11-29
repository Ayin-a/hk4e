-- 基础信息
local base_info = {
	group_id = 144002090
}

-- Trigger变量
local defs = {
	region_id = 90005
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
	{ config_id = 90001, gadget_id = 70350268, pos = { x = 490.663, y = 129.248, z = -457.366 }, rot = { x = 0.000, y = 75.386, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 90002, gadget_id = 70350220, pos = { x = 495.913, y = 127.765, z = -455.821 }, rot = { x = 0.000, y = 76.021, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 90003, gadget_id = 70211112, pos = { x = 495.767, y = 127.917, z = -450.008 }, rot = { x = 359.982, y = 350.089, z = 359.894 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 90009, gadget_id = 70350278, pos = { x = 492.411, y = 128.740, z = -456.772 }, rot = { x = 0.000, y = 73.101, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 90004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 495.913, y = 128.130, z = -455.821 }, area_id = 101 },
	-- 离开区域卸载suite4
	{ config_id = 90005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 495.913, y = 128.130, z = -455.821 }, area_id = 101 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 90007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 495.913, y = 128.130, z = -455.821 }, area_id = 101, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1090004, name = "ENTER_REGION_90004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_90004", action = "action_EVENT_ENTER_REGION_90004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1090005, name = "LEAVE_REGION_90005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_90005", action = "action_EVENT_LEAVE_REGION_90005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1090006, name = "GADGET_STATE_CHANGE_90006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90006", action = "action_EVENT_GADGET_STATE_CHANGE_90006" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1090008, name = "ANY_GADGET_DIE_90008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_90008", action = "action_EVENT_ANY_GADGET_DIE_90008" },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1090010, name = "GROUP_REFRESH_90010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_90010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1090011, name = "GROUP_LOAD_90011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_90011", trigger_count = 0 }
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
		gadgets = { 90001, 90002, 90003 },
		regions = { 90004, 90005, 90007 },
		triggers = { "ENTER_REGION_90004", "LEAVE_REGION_90005", "GADGET_STATE_CHANGE_90006", "ANY_GADGET_DIE_90008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 90003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90006", "GROUP_REFRESH_90010", "GROUP_LOAD_90011" },
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
		gadgets = { 90009 },
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
function condition_EVENT_ENTER_REGION_90004(context, evt)
	if evt.param1 ~= 90004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_90004(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_90005(context, evt)
	if evt.param1 ~=defs.region_id then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_90005(context, evt)
	-- 将configid为 90001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002090, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90006(context, evt)
	if 90003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002090, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_90008(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_90008(context, evt)
	-- 将configid为 90003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002090, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_90010(context, evt)
	-- 将configid为 90003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90011(context, evt)
	-- 将configid为 90003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end