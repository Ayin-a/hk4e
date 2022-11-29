-- 基础信息
local base_info = {
	group_id = 144001184
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
}

-- 区域
regions = {
	{ config_id = 184001, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 192.171, y = 217.021, z = 300.345 }, area_id = 102 },
	{ config_id = 184002, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 194.204, y = 217.021, z = 302.016 }, area_id = 102 },
	-- 4
	{ config_id = 184003, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 222.050, y = 191.359, z = 435.660 }, area_id = 102 },
	-- 4
	{ config_id = 184005, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 222.942, y = 191.590, z = 437.743 }, area_id = 102 },
	{ config_id = 184006, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 352.858, y = 183.836, z = 420.055 }, area_id = 102 },
	{ config_id = 184007, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 353.939, y = 183.836, z = 417.053 }, area_id = 102 },
	{ config_id = 184008, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 216.270, y = 197.551, z = 163.569 }, area_id = 102 },
	{ config_id = 184009, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 214.237, y = 197.286, z = 164.047 }, area_id = 102 },
	-- 1
	{ config_id = 184010, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 316.665, y = 203.121, z = 159.215 }, area_id = 102 },
	-- 1
	{ config_id = 184011, shape = RegionShape.SPHERE, radius = 0.8, pos = { x = 318.554, y = 202.663, z = 158.464 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1184001, name = "ENTER_REGION_184001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184001", action = "action_EVENT_ENTER_REGION_184001" },
	{ config_id = 1184002, name = "ENTER_REGION_184002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184002", action = "action_EVENT_ENTER_REGION_184002" },
	-- 4
	{ config_id = 1184003, name = "ENTER_REGION_184003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184003", action = "action_EVENT_ENTER_REGION_184003" },
	-- 4
	{ config_id = 1184005, name = "ENTER_REGION_184005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184005", action = "action_EVENT_ENTER_REGION_184005" },
	{ config_id = 1184006, name = "ENTER_REGION_184006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184006", action = "action_EVENT_ENTER_REGION_184006" },
	{ config_id = 1184007, name = "ENTER_REGION_184007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184007", action = "action_EVENT_ENTER_REGION_184007" },
	{ config_id = 1184008, name = "ENTER_REGION_184008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184008", action = "action_EVENT_ENTER_REGION_184008" },
	{ config_id = 1184009, name = "ENTER_REGION_184009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184009", action = "action_EVENT_ENTER_REGION_184009" },
	-- 1
	{ config_id = 1184010, name = "ENTER_REGION_184010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184010", action = "action_EVENT_ENTER_REGION_184010" },
	-- 1
	{ config_id = 1184011, name = "ENTER_REGION_184011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184011", action = "action_EVENT_ENTER_REGION_184011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "tophill", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 184001, 184002, 184006, 184007, 184008, 184009 },
		triggers = { "ENTER_REGION_184001", "ENTER_REGION_184002", "ENTER_REGION_184006", "ENTER_REGION_184007", "ENTER_REGION_184008", "ENTER_REGION_184009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 184010, 184011 },
		triggers = { "ENTER_REGION_184010", "ENTER_REGION_184011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 184003, 184005 },
		triggers = { "ENTER_REGION_184003", "ENTER_REGION_184005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_184001(context, evt)
	if evt.param1 ~= 184001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184001(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184002(context, evt)
	if evt.param1 ~= 184002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184002(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184003(context, evt)
	if evt.param1 ~= 184003 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184003(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184005(context, evt)
	if evt.param1 ~= 184005 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184005(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184006(context, evt)
	if evt.param1 ~= 184006 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184006(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184007(context, evt)
	if evt.param1 ~= 184007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184007(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184008(context, evt)
	if evt.param1 ~= 184008 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184008(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184009(context, evt)
	if evt.param1 ~= 184009 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184009(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184010(context, evt)
	if evt.param1 ~= 184010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184010(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184011(context, evt)
	if evt.param1 ~= 184011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184011(context, evt)
	-- 针对当前group内变量名为 "tophill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tophill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end