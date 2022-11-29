-- 基础信息
local base_info = {
	group_id = 144004009
}

-- Trigger变量
local defs = {
	regionid = 9005
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
	{ config_id = 9001, gadget_id = 70350264, pos = { x = -726.725, y = 124.998, z = -254.283 }, rot = { x = 0.000, y = 87.971, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 9002, gadget_id = 70350220, pos = { x = -719.953, y = 123.903, z = -253.525 }, rot = { x = 0.000, y = 86.894, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 9003, gadget_id = 70211112, pos = { x = -720.594, y = 124.993, z = -248.718 }, rot = { x = 0.000, y = 178.731, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 9009, gadget_id = 70350278, pos = { x = -723.541, y = 124.195, z = -253.588 }, rot = { x = 0.000, y = 84.092, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 9004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -719.953, y = 123.903, z = -253.525 }, area_id = 103 },
	-- 离开区域卸载suite4
	{ config_id = 9005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -719.953, y = 123.903, z = -253.525 }, area_id = 103 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 9007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -719.953, y = 123.903, z = -253.525 }, area_id = 103, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1009004, name = "ENTER_REGION_9004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9004", action = "action_EVENT_ENTER_REGION_9004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1009005, name = "LEAVE_REGION_9005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_9005", action = "action_EVENT_LEAVE_REGION_9005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1009006, name = "GADGET_STATE_CHANGE_9006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9006", action = "action_EVENT_GADGET_STATE_CHANGE_9006" },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 1009008, name = "ANY_GADGET_DIE_9008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_9008", action = "action_EVENT_ANY_GADGET_DIE_9008" },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1009010, name = "GROUP_REFRESH_9010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_9010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1009011, name = "GROUP_LOAD_9011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9011", trigger_count = 0 }
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
		gadgets = { 9001, 9002, 9003 },
		regions = { 9004, 9005, 9007 },
		triggers = { "ENTER_REGION_9004", "LEAVE_REGION_9005", "GADGET_STATE_CHANGE_9006", "ANY_GADGET_DIE_9008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_9006", "GROUP_REFRESH_9010", "GROUP_LOAD_9011" },
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
		gadgets = { 9009 },
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
function condition_EVENT_ENTER_REGION_9004(context, evt)
	if evt.param1 ~= 9004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9004(context, evt)
	-- 将configid为 9001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004009, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_9005(context, evt)
	if evt.param1 ~=defs.regionid then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_9005(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004009, 4)
	
	-- 将configid为 9001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9006(context, evt)
	if 9003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004009, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_9008(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_9008(context, evt)
	-- 将configid为 9003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_9010(context, evt)
	-- 将configid为 9003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9011(context, evt)
	-- 将configid为 9003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end