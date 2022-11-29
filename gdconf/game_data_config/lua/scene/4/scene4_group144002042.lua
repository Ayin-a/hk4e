-- 基础信息
local base_info = {
	group_id = 144002042
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
	{ config_id = 42001, gadget_id = 70350267, pos = { x = 397.937, y = 184.550, z = -631.609 }, rot = { x = 0.000, y = 310.906, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 42002, gadget_id = 70350220, pos = { x = 392.661, y = 184.507, z = -628.545 }, rot = { x = 0.000, y = 301.367, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 42003, gadget_id = 70211112, pos = { x = 392.841, y = 184.322, z = -623.519 }, rot = { x = 359.150, y = 359.873, z = 17.051 }, level = 26, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 42009, gadget_id = 70350278, pos = { x = 396.289, y = 184.714, z = -631.157 }, rot = { x = 0.000, y = 304.209, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 42004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 392.661, y = 184.507, z = -628.545 }, area_id = 101 },
	-- 离开区域卸载suite4
	{ config_id = 42005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 392.661, y = 184.507, z = -628.545 }, area_id = 101 },
	-- 用来加载球拍技能的region，无trigger作用，只导出region
	{ config_id = 42007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 392.661, y = 184.507, z = -628.545 }, area_id = 101, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Hit_02" } }
}

-- 触发器
triggers = {
	-- 进入区域激活发球机，add suite4
	{ config_id = 1042004, name = "ENTER_REGION_42004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42004", action = "action_EVENT_ENTER_REGION_42004", trigger_count = 0 },
	-- 离开区域卸载suite4
	{ config_id = 1042005, name = "LEAVE_REGION_42005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_42005", action = "action_EVENT_LEAVE_REGION_42005", trigger_count = 0 },
	-- 开启宝箱后，将Group进度改成EndSuite(2)
	{ config_id = 1042006, name = "GADGET_STATE_CHANGE_42006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_42006", action = "action_EVENT_GADGET_STATE_CHANGE_42006" },
	-- 发球机石板被销毁后，宝箱被解锁
	{ config_id = 1042008, name = "ANY_GADGET_DIE_42008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_42008", action = "action_EVENT_ANY_GADGET_DIE_42008" },
	-- 刷新至suite2时解锁宝箱
	{ config_id = 1042010, name = "GROUP_REFRESH_42010", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_42010", trigger_count = 0 },
	-- 保底，加载group时解锁宝箱
	{ config_id = 1042011, name = "GROUP_LOAD_42011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_42011", trigger_count = 0 }
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
		gadgets = { 42001, 42002, 42003 },
		regions = { 42004, 42005, 42007 },
		triggers = { "ENTER_REGION_42004", "LEAVE_REGION_42005", "GADGET_STATE_CHANGE_42006", "ANY_GADGET_DIE_42008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 42003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_42006", "GROUP_REFRESH_42010", "GROUP_LOAD_42011" },
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
		gadgets = { 42009 },
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
function condition_EVENT_ENTER_REGION_42004(context, evt)
	if evt.param1 ~= 42004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42004(context, evt)
	-- 将configid为 42001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002042, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_42005(context, evt)
	if evt.param1 ~=42005 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_42005(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002042, 4)
	
	-- 将configid为 42001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_42006(context, evt)
	if 42003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_42006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002042, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_42008(context, evt)
	if 42001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_42008(context, evt)
	-- 将configid为 42003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144002042, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_42010(context, evt)
	-- 将configid为 42003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_42011(context, evt)
	-- 将configid为 42003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 42003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end