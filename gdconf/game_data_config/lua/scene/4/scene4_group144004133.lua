-- 基础信息
local base_info = {
	group_id = 144004133
}

-- Trigger变量
local defs = {
	region_id = 133009
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
	{ config_id = 133001, gadget_id = 70350267, pos = { x = -319.179, y = 122.373, z = -706.782 }, rot = { x = 0.000, y = 158.278, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 133002, gadget_id = 70350220, pos = { x = -315.877, y = 120.201, z = -721.768 }, rot = { x = 0.000, y = 347.908, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 133003, gadget_id = 70211102, pos = { x = -326.786, y = 122.592, z = -711.409 }, rot = { x = 14.247, y = 138.231, z = 349.841 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 133004, gadget_id = 70350278, pos = { x = -319.179, y = 122.373, z = -706.782 }, rot = { x = 0.000, y = 158.278, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 133006, shape = RegionShape.SPHERE, radius = 3, pos = { x = -315.877, y = 120.201, z = -721.768 }, area_id = 100, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 进入区域激活发球机，add suite4
	{ config_id = 133008, shape = RegionShape.SPHERE, radius = 3, pos = { x = -315.877, y = 120.201, z = -721.768 }, area_id = 100 },
	-- 离开区域卸载suite4
	{ config_id = 133009, shape = RegionShape.SPHERE, radius = 3, pos = { x = -315.877, y = 120.201, z = -721.768 }, area_id = 100 }
}

-- 触发器
triggers = {
	-- 开启宝箱后，将Group进度改成EndSuite(3)
	{ config_id = 1133005, name = "GADGET_STATE_CHANGE_133005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133005", action = "action_EVENT_GADGET_STATE_CHANGE_133005", trigger_count = 0 },
	-- 发球机石板被销毁后，刷新至suite2
	{ config_id = 1133007, name = "ANY_GADGET_DIE_133007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133007", action = "action_EVENT_ANY_GADGET_DIE_133007", trigger_count = 0 },
	-- 进入区域激活发球机，add suite4
	{ config_id = 1133008, name = "ENTER_REGION_133008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_133008", action = "action_EVENT_ENTER_REGION_133008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1133009, name = "LEAVE_REGION_133009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_133009", action = "action_EVENT_LEAVE_REGION_133009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1133010, name = "GROUP_REFRESH_133010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_133010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1133011, name = "GROUP_LOAD_133011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_133011", trigger_count = 0 }
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
		gadgets = { 133001, 133002, 133003 },
		regions = { 133006, 133008, 133009 },
		triggers = { "GADGET_STATE_CHANGE_133005", "ANY_GADGET_DIE_133007", "ENTER_REGION_133008", "LEAVE_REGION_133009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_133005", "GROUP_REFRESH_133010", "GROUP_LOAD_133011" },
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
		gadgets = { 133004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_133005(context, evt)
	if 133003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004133, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133007(context, evt)
	if 133001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004133, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_133008(context, evt)
	if evt.param1 ~= 133008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_133008(context, evt)
	-- 将configid为 133001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004133, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_133009(context, evt)
	if evt.param1 ~=defs.region_id then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_133009(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004133, 4)
	
	-- 将configid为 133001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_133010(context, evt)
	-- 将configid为 133003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133011(context, evt)
	-- 将configid为 133003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end