-- 基础信息
local base_info = {
	group_id = 144004026
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
	{ config_id = 26001, gadget_id = 70350264, pos = { x = -751.149, y = 198.608, z = 30.912 }, rot = { x = 0.000, y = 256.711, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 26002, gadget_id = 70350220, pos = { x = -757.199, y = 198.030, z = 29.634 }, rot = { x = 0.000, y = 80.136, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 26003, gadget_id = 70211112, pos = { x = -757.584, y = 198.120, z = 37.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 26009, gadget_id = 70350278, pos = { x = -753.123, y = 198.480, z = 30.265 }, rot = { x = 0.000, y = 260.038, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 26007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -757.199, y = 198.030, z = 29.634 }, area_id = 103, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	{ config_id = 26010, shape = RegionShape.SPHERE, radius = 3, pos = { x = -757.199, y = 198.030, z = 29.634 }, area_id = 103 },
	{ config_id = 26011, shape = RegionShape.SPHERE, radius = 3, pos = { x = -757.199, y = 198.030, z = 29.634 }, area_id = 103 }
}

-- 触发器
triggers = {
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1026006, name = "GADGET_STATE_CHANGE_26006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_26006", action = "action_EVENT_GADGET_STATE_CHANGE_26006" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1026008, name = "ANY_GADGET_DIE_26008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_26008", action = "action_EVENT_ANY_GADGET_DIE_26008" },
	{ config_id = 1026010, name = "ENTER_REGION_26010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26010", action = "action_EVENT_ENTER_REGION_26010", trigger_count = 0 },
	{ config_id = 1026011, name = "LEAVE_REGION_26011", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_26011", action = "action_EVENT_LEAVE_REGION_26011", trigger_count = 0 },
	{ config_id = 1026012, name = "GROUP_REFRESH_26012", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_26012" },
	{ config_id = 1026013, name = "GROUP_LOAD_26013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_26013" }
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
		gadgets = { 26001, 26002, 26003 },
		regions = { 26007, 26010, 26011 },
		triggers = { "GADGET_STATE_CHANGE_26006", "ANY_GADGET_DIE_26008", "ENTER_REGION_26010", "LEAVE_REGION_26011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 26003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_26006", "GROUP_REFRESH_26012", "GROUP_LOAD_26013" },
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
		gadgets = { 26009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_26006(context, evt)
	if 26003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_26006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004026, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_26008(context, evt)
	if 26001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_26008(context, evt)
	-- 将configid为 26003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004026, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_26010(context, evt)
	if evt.param1 ~= 26010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26010(context, evt)
	-- 将configid为 26001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004026, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_26011(context, evt)
	if evt.param1 ~=26011 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_26011(context, evt)
	-- 将configid为 26001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004026, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_26012(context, evt)
	-- 将configid为 26003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_26013(context, evt)
	-- 将configid为 26003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end