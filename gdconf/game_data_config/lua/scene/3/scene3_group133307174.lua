-- 基础信息
local base_info = {
	group_id = 133307174
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
	[174002] = { config_id = 174002, gadget_id = 70330264, pos = { x = -2048.482, y = -1.647, z = 5520.522 }, rot = { x = 0.000, y = 166.823, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	[174007] = { config_id = 174007, shape = RegionShape.CUBIC, size = { x = 40.000, y = 15.000, z = 30.000 }, pos = { x = -2047.386, y = -6.487, z = 5504.588 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1174007, name = "ENTER_REGION_174007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_174007", action = "action_EVENT_ENTER_REGION_174007", trigger_count = 0 },
	{ config_id = 1174008, name = "GROUP_LOAD_174008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_174008", action = "action_EVENT_GROUP_LOAD_174008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
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
		gadgets = { 174002 },
		regions = { 174007 },
		triggers = { "ENTER_REGION_174007", "GROUP_LOAD_174008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_174007(context, evt)
	if evt.param1 ~= 174007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"destroy"为0
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_174007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133307174, EntityType.GADGET, 174002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "destroy" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "destroy", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5029, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_174008(context, evt)
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_174008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133307174, EntityType.GADGET, 174002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5029, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end