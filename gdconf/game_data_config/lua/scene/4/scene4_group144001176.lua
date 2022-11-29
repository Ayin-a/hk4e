-- 基础信息
local base_info = {
	group_id = 144001176
}

-- Trigger变量
local defs = {
	region_id = 176009
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
	{ config_id = 176001, gadget_id = 70350263, pos = { x = 343.958, y = 122.099, z = 148.390 }, rot = { x = 0.000, y = 174.852, z = 4.967 }, level = 1, area_id = 102 },
	{ config_id = 176002, gadget_id = 70350220, pos = { x = 344.944, y = 121.090, z = 139.181 }, rot = { x = 0.000, y = 351.739, z = 1.485 }, level = 1, area_id = 102 },
	{ config_id = 176003, gadget_id = 70211112, pos = { x = 350.466, y = 120.801, z = 145.928 }, rot = { x = 0.000, y = 213.863, z = 11.772 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 176004, gadget_id = 70350278, pos = { x = 343.958, y = 122.099, z = 148.390 }, rot = { x = 0.000, y = 174.852, z = 4.967 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 176006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 344.944, y = 121.090, z = 139.181 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 176008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 344.944, y = 121.090, z = 139.181 }, area_id = 102 },
	-- 离开区域卸载suite4
	{ config_id = 176009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 344.944, y = 121.090, z = 139.181 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为0时，将节奏机切换至0状态
	{ config_id = 1176005, name = "GADGET_STATE_CHANGE_176005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_176005", action = "action_EVENT_GADGET_STATE_CHANGE_176005" },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 1176007, name = "ANY_GADGET_DIE_176007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_176007", action = "action_EVENT_ANY_GADGET_DIE_176007" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1176008, name = "ENTER_REGION_176008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_176008", action = "action_EVENT_ENTER_REGION_176008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1176009, name = "LEAVE_REGION_176009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_176009", action = "action_EVENT_LEAVE_REGION_176009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1176010, name = "GROUP_REFRESH_176010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_176010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1176011, name = "GROUP_LOAD_176011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_176011", trigger_count = 0 }
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
		gadgets = { 176001, 176002, 176003 },
		regions = { 176006, 176008, 176009 },
		triggers = { "GADGET_STATE_CHANGE_176005", "ANY_GADGET_DIE_176007", "ENTER_REGION_176008", "LEAVE_REGION_176009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 176003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_176005", "GROUP_REFRESH_176010", "GROUP_LOAD_176011" },
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
		gadgets = { 176004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_176005(context, evt)
	if 176003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_176005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001176, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_176007(context, evt)
	if 176001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_176007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001176, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_176008(context, evt)
	if evt.param1 ~= 176008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_176008(context, evt)
	-- 将configid为 176001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001176, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_176009(context, evt)
	if evt.param1 ~=176009 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_176009(context, evt)
	-- 将configid为 176001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001176, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_176010(context, evt)
	-- 将configid为 176003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_176011(context, evt)
	-- 将configid为 176003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 176003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end