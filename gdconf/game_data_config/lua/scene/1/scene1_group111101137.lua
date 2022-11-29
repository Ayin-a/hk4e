-- 基础信息
local base_info = {
	group_id = 111101137
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
	{ config_id = 137001, gadget_id = 70350267, pos = { x = 2755.210, y = 198.368, z = -1681.266 }, rot = { x = 0.000, y = 220.370, z = 0.000 }, level = 1 },
	{ config_id = 137002, gadget_id = 70350220, pos = { x = 2747.952, y = 196.911, z = -1687.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 137005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2747.952, y = 196.911, z = -1687.890 }, ability_group_list = { "ActivityAbility_LudiHarpastum_Racket", "ActivityAbility_LudiHarpastum_Serve", "ActivityAbility_LudiHarpastum_Hit", "ActivityAbility_LudiHarpastum_Hit_Camera" } },
	{ config_id = 137007, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2747.952, y = 196.911, z = -1687.890 } }
}

-- 触发器
triggers = {
	-- 踩踏场地边线，将发球机切换至201
	{ config_id = 1137003, name = "GADGET_STATE_CHANGE_137003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137003", action = "action_EVENT_GADGET_STATE_CHANGE_137003", trigger_count = 0 },
	{ config_id = 1137007, name = "ENTER_REGION_137007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_137007", action = "action_EVENT_ENTER_REGION_137007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasEnteredArea", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1137004, name = "GADGET_STATE_CHANGE_137004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_137004", action = "action_EVENT_GADGET_STATE_CHANGE_137004", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 137001, 137002 },
		regions = { 137005, 137007 },
		triggers = { "GADGET_STATE_CHANGE_137003", "ENTER_REGION_137007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_137003(context, evt)
	if 137002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_137003(context, evt)
	-- 将configid为 137001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 137001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_137007(context, evt)
	if evt.param1 ~= 137007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasEnteredArea"为0
	if ScriptLib.GetGroupVariableValue(context, "hasEnteredArea") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_137007(context, evt)
	-- 将本组内变量名为 "hasEnteredArea" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasEnteredArea", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=2747.952, y= 196.9105, z=-1687.89}, radius = 2, rot = {x=0, y=0, z=1},is_skip_ui = true}) 
	
	return 0
end