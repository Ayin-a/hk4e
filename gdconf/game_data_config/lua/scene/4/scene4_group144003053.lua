-- 基础信息
local base_info = {
	group_id = 144003053
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
	{ config_id = 53001, gadget_id = 70350269, pos = { x = -529.652, y = 115.507, z = 1000.544 }, rot = { x = 0.000, y = 109.245, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 53002, gadget_id = 70350220, pos = { x = -524.524, y = 115.987, z = 998.700 }, rot = { x = 0.000, y = 287.785, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 53003, gadget_id = 70211122, pos = { x = -531.043, y = 115.500, z = 1002.530 }, rot = { x = 0.000, y = 111.869, z = 0.000 }, level = 26, drop_tag = "解谜高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 53009, gadget_id = 70350278, pos = { x = -528.516, y = 115.507, z = 1000.151 }, rot = { x = 0.000, y = 109.697, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 53004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -524.524, y = 115.987, z = 998.700 }, area_id = 103 },
	-- 离开区域卸载suite4
	{ config_id = 53005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -524.524, y = 115.987, z = 998.700 }, area_id = 103 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 53007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -524.524, y = 115.987, z = 998.700 }, area_id = 103, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1053004, name = "ENTER_REGION_53004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_53004", action = "action_EVENT_ENTER_REGION_53004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1053005, name = "LEAVE_REGION_53005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_53005", action = "action_EVENT_LEAVE_REGION_53005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1053006, name = "GADGET_STATE_CHANGE_53006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_53006", action = "action_EVENT_GADGET_STATE_CHANGE_53006" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1053008, name = "ANY_GADGET_DIE_53008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53008", action = "action_EVENT_ANY_GADGET_DIE_53008" },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1053010, name = "GROUP_REFRESH_53010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_53010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1053011, name = "GROUP_LOAD_53011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_53011", trigger_count = 0 }
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
		gadgets = { 53001, 53002, 53003 },
		regions = { 53004, 53005, 53007 },
		triggers = { "ENTER_REGION_53004", "LEAVE_REGION_53005", "GADGET_STATE_CHANGE_53006", "ANY_GADGET_DIE_53008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 53003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_53006", "GROUP_REFRESH_53010", "GROUP_LOAD_53011" },
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
		gadgets = { 53009 },
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
function condition_EVENT_ENTER_REGION_53004(context, evt)
	if evt.param1 ~= 53004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_53004(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003053, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_53005(context, evt)
	if evt.param1 ~=53005 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_53005(context, evt)
	-- 将configid为 53001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144003053, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	if 53003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_53006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144003053, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_53008(context, evt)
	if 53001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53008(context, evt)
	-- 将configid为 53003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144003053, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_53010(context, evt)
	-- 将configid为 53003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_53011(context, evt)
	-- 将configid为 53003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 53003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end