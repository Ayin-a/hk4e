-- 基础信息
local base_info = {
	group_id = 133309015
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
	{ config_id = 15001, gadget_id = 70330441, pos = { x = -2999.932, y = 218.244, z = 5300.209 }, rot = { x = 356.601, y = 0.543, z = 341.833 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 15002, gadget_id = 70330441, pos = { x = -2993.926, y = 214.929, z = 5283.410 }, rot = { x = 11.410, y = 357.629, z = 348.181 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 15003, gadget_id = 70330441, pos = { x = -2982.112, y = 211.747, z = 5290.925 }, rot = { x = 5.482, y = 349.203, z = 342.606 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 成就
	{ config_id = 15007, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2967.667, y = 207.585, z = 5291.930 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1015005, name = "GADGET_STATE_CHANGE_15005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_15005", action = "action_EVENT_GADGET_STATE_CHANGE_15005" },
	-- 成就
	{ config_id = 1015007, name = "ENTER_REGION_15007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15007", action = "action_EVENT_ENTER_REGION_15007" }
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
		gadgets = { 15001, 15002, 15003 },
		regions = { 15007 },
		triggers = { "GADGET_STATE_CHANGE_15005", "ENTER_REGION_15007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309015, 15001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309015, 15002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309015, 15003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_15005(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finished", 1, 133309376) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_15007(context, evt)
	if evt.param1 ~= 15007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6107, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end