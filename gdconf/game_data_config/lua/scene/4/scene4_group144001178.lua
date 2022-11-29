-- 基础信息
local base_info = {
	group_id = 144001178
}

-- Trigger变量
local defs = {
	region_id = 346011
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
	{ config_id = 178001, gadget_id = 70350263, pos = { x = 160.286, y = 122.294, z = 478.435 }, rot = { x = 0.000, y = 13.499, z = 11.230 }, level = 1, area_id = 102 },
	{ config_id = 178002, gadget_id = 70350220, pos = { x = 161.883, y = 121.282, z = 486.252 }, rot = { x = 0.000, y = 190.386, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 178003, gadget_id = 70211112, pos = { x = 165.464, y = 122.765, z = 480.129 }, rot = { x = 14.828, y = 345.825, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 178004, gadget_id = 70350278, pos = { x = 160.286, y = 122.294, z = 478.435 }, rot = { x = 0.000, y = 13.499, z = 11.230 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 178006, shape = RegionShape.SPHERE, radius = 3, pos = { x = 161.883, y = 121.282, z = 486.252 }, area_id = 102, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 178008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 161.883, y = 121.282, z = 486.252 }, area_id = 102 },
	-- 离开区域卸载suite4
	{ config_id = 178009, shape = RegionShape.SPHERE, radius = 3, pos = { x = 161.883, y = 121.282, z = 486.252 }, area_id = 102 }
}

-- 触发器
triggers = {
	-- 监听场地边线状态变为0时，将节奏机切换至0状态
	{ config_id = 1178005, name = "GADGET_STATE_CHANGE_178005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_178005", action = "action_EVENT_GADGET_STATE_CHANGE_178005" },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 1178007, name = "ANY_GADGET_DIE_178007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_178007", action = "action_EVENT_ANY_GADGET_DIE_178007" },
	-- 节奏机石板被销毁后，宝箱被解锁
	{ config_id = 1178008, name = "ENTER_REGION_178008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_178008", action = "action_EVENT_ENTER_REGION_178008", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1178009, name = "LEAVE_REGION_178009", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_178009", action = "action_EVENT_LEAVE_REGION_178009", trigger_count = 0 },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1178010, name = "GROUP_REFRESH_178010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_178010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1178011, name = "GROUP_LOAD_178011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_178011", trigger_count = 0 }
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
		gadgets = { 178001, 178002, 178003 },
		regions = { 178006, 178008, 178009 },
		triggers = { "GADGET_STATE_CHANGE_178005", "ANY_GADGET_DIE_178007", "ENTER_REGION_178008", "LEAVE_REGION_178009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 178003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_178005", "GROUP_REFRESH_178010", "GROUP_LOAD_178011" },
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
		gadgets = { 178004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_178005(context, evt)
	if 178003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_178005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144001178, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_178007(context, evt)
	if 178001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_178007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001178, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_178008(context, evt)
	if evt.param1 ~= 178008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_178008(context, evt)
	-- 将configid为 178001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001178, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_178009(context, evt)
	if evt.param1 ~=178009 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_178009(context, evt)
	-- 将configid为 178001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001178, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_178010(context, evt)
	-- 将configid为 178003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178011(context, evt)
	-- 将configid为 178003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end