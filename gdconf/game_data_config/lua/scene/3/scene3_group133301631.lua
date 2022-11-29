-- 基础信息
local base_info = {
	group_id = 133301631
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 631003, monster_id = 25210402, pos = { x = -385.977, y = 282.873, z = 4015.950 }, rot = { x = 0.000, y = 359.718, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 631002, gadget_id = 70220015, pos = { x = -389.554, y = 283.677, z = 4018.434 }, rot = { x = 0.000, y = 160.713, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 631004, gadget_id = 70220015, pos = { x = -386.354, y = 283.641, z = 4018.476 }, rot = { x = 358.953, y = 2.379, z = 359.956 }, level = 33, area_id = 22 },
	{ config_id = 631006, gadget_id = 70290584, pos = { x = -394.589, y = 278.200, z = 4013.416 }, rot = { x = 0.000, y = 82.824, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 22 },
	{ config_id = 631007, gadget_id = 70290584, pos = { x = -382.071, y = 278.194, z = 4007.663 }, rot = { x = 0.000, y = 354.457, z = 0.000 }, level = 33, persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 631009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -382.499, y = 282.171, z = 4012.925 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1631008, name = "ANY_MONSTER_DIE_631008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_631008", action = "action_EVENT_ANY_MONSTER_DIE_631008" },
	{ config_id = 1631009, name = "ENTER_REGION_631009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_631009", action = "action_EVENT_ENTER_REGION_631009" },
	{ config_id = 1631010, name = "GROUP_LOAD_631010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_631010", action = "action_EVENT_GROUP_LOAD_631010", trigger_count = 0 },
	{ config_id = 1631011, name = "GADGET_STATE_CHANGE_631011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_631011", action = "action_EVENT_GADGET_STATE_CHANGE_631011" },
	{ config_id = 1631012, name = "TIME_AXIS_PASS_631012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_631012", action = "action_EVENT_TIME_AXIS_PASS_631012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 631001, monster_id = 25210301, pos = { x = -389.416, y = 282.995, z = 4015.279 }, rot = { x = 0.000, y = 3.905, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9007, area_id = 22 },
		{ config_id = 631005, monster_id = 25210502, pos = { x = -378.284, y = 282.872, z = 4011.477 }, rot = { x = 0.000, y = 296.376, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, affix = { 4180 }, pose_id = 9001, area_id = 22 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		monsters = { 631003 },
		gadgets = { 631002, 631004, 631006, 631007 },
		regions = { 631009 },
		triggers = { "ANY_MONSTER_DIE_631008", "ENTER_REGION_631009", "GROUP_LOAD_631010", "GADGET_STATE_CHANGE_631011", "TIME_AXIS_PASS_631012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_631008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_631008(context, evt)
	-- 将configid为 631006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 631006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 631007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 631007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_631009(context, evt)
	if evt.param1 ~= 631009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_631009(context, evt)
	-- 将configid为 631007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 631007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_631010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_631010(context, evt)
	-- 将configid为 631006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 631006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 631007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 631007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_631011(context, evt)
	if 631006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_631011(context, evt)
	-- 创建标识为"hideDoor"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "hideDoor", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_631012(context, evt)
	if "hideDoor" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_631012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301631, EntityType.GADGET, 631006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end