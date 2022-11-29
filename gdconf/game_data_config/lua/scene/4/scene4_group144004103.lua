-- 基础信息
local base_info = {
	group_id = 144004103
}

-- Trigger变量
local defs = {
	region_id = 103005
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
	{ config_id = 103001, gadget_id = 70350263, pos = { x = -693.608, y = 156.959, z = -192.860 }, rot = { x = 0.000, y = 165.571, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103002, gadget_id = 70350220, pos = { x = -691.992, y = 156.636, z = -199.042 }, rot = { x = 0.000, y = 346.878, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103003, gadget_id = 70211112, pos = { x = -697.362, y = 156.819, z = -197.064 }, rot = { x = 0.000, y = 74.125, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 103009, gadget_id = 70350278, pos = { x = -693.032, y = 157.056, z = -194.268 }, rot = { x = 0.000, y = 169.099, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 103004, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -691.992, y = 156.621, z = -199.211 }, area_id = 103 },
	-- 离开区域卸载suite4
	{ config_id = 103005, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -691.992, y = 156.621, z = -199.211 }, area_id = 103 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 103007, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = -691.992, y = 156.621, z = -199.211 }, area_id = 103, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1103004, name = "ENTER_REGION_103004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103004", action = "action_EVENT_ENTER_REGION_103004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1103005, name = "LEAVE_REGION_103005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_103005", action = "action_EVENT_LEAVE_REGION_103005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1103006, name = "GADGET_STATE_CHANGE_103006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103006", action = "action_EVENT_GADGET_STATE_CHANGE_103006" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1103008, name = "ANY_GADGET_DIE_103008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103008", action = "action_EVENT_ANY_GADGET_DIE_103008", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1103011, name = "GROUP_REFRESH_103011", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_103011", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1103012, name = "GROUP_LOAD_103012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_103012", trigger_count = 0 }
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
		gadgets = { 103001, 103002, 103003 },
		regions = { 103004, 103005, 103007 },
		triggers = { "ENTER_REGION_103004", "LEAVE_REGION_103005", "GADGET_STATE_CHANGE_103006", "ANY_GADGET_DIE_103008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 103003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_103006", "GROUP_REFRESH_103011", "GROUP_LOAD_103012" },
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
		gadgets = { 103009 },
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
function condition_EVENT_ENTER_REGION_103004(context, evt)
	if evt.param1 ~= 103004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_103004(context, evt)
	-- 将configid为 103001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004103, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_103005(context, evt)
	if evt.param1 ~=defs.region_id then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_103005(context, evt)
	-- 将configid为 103001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004103, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103006(context, evt)
	if 103003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004103, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103008(context, evt)
	if 103001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144004103, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_103011(context, evt)
	-- 将configid为 103003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_103012(context, evt)
	-- 将configid为 103003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 103003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end