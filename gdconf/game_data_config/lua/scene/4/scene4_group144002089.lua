-- 基础信息
local base_info = {
	group_id = 144002089
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
	{ config_id = 89001, gadget_id = 70350269, pos = { x = 615.779, y = 132.236, z = -441.162 }, rot = { x = 0.000, y = 132.841, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 89002, gadget_id = 70350220, pos = { x = 620.921, y = 132.175, z = -444.854 }, rot = { x = 0.000, y = 308.206, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 89003, gadget_id = 70211112, pos = { x = 624.397, y = 131.306, z = -439.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 89009, gadget_id = 70350278, pos = { x = 616.784, y = 132.166, z = -441.863 }, rot = { x = 0.000, y = 130.102, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 89004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 620.921, y = 132.175, z = -444.854 }, area_id = 101 },
	-- 离开区域卸载suite4
	{ config_id = 89005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 620.921, y = 132.175, z = -444.854 }, area_id = 101 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 89007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 620.921, y = 132.175, z = -444.854 }, area_id = 101, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1089004, name = "ENTER_REGION_89004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_89004", action = "action_EVENT_ENTER_REGION_89004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1089005, name = "LEAVE_REGION_89005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_89005", action = "action_EVENT_LEAVE_REGION_89005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1089006, name = "GADGET_STATE_CHANGE_89006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_89006", action = "action_EVENT_GADGET_STATE_CHANGE_89006" },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 1089008, name = "ANY_GADGET_DIE_89008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_89008", action = "action_EVENT_ANY_GADGET_DIE_89008" },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1089010, name = "GROUP_REFRESH_89010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_89010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1089011, name = "GROUP_LOAD_89011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_89011", trigger_count = 0 }
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
		gadgets = { 89001, 89002, 89003 },
		regions = { 89004, 89005, 89007 },
		triggers = { "ENTER_REGION_89004", "LEAVE_REGION_89005", "GADGET_STATE_CHANGE_89006", "ANY_GADGET_DIE_89008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_89006", "GROUP_REFRESH_89010", "GROUP_LOAD_89011" },
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
		gadgets = { 89009 },
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
function condition_EVENT_ENTER_REGION_89004(context, evt)
	if evt.param1 ~= 89004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_89004(context, evt)
	-- 将configid为 89001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002089, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_89005(context, evt)
	if evt.param1 ~=89005 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_89005(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002089, 4)
	
	-- 将configid为 89001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_89006(context, evt)
	if 89003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_89006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002089, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_89008(context, evt)
	if 89001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_89008(context, evt)
	-- 将configid为 89003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002089, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_89010(context, evt)
	-- 将configid为 89003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_89011(context, evt)
	-- 将configid为 89003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 89003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end