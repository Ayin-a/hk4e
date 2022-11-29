-- 基础信息
local base_info = {
	group_id = 133301301
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301001, monster_id = 28061301, pos = { x = -598.939, y = 214.600, z = 3135.463 }, rot = { x = 0.000, y = 332.218, z = 0.000 }, level = 33, drop_tag = "驮兽镀金旅团", pose_id = 4, area_id = 22 },
	{ config_id = 301009, monster_id = 25210201, pos = { x = -812.456, y = 178.251, z = 3767.265 }, rot = { x = 0.000, y = 24.354, z = 0.000 }, level = 33, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 301012, gadget_id = 70211011, pos = { x = -810.978, y = 178.126, z = 3767.030 }, rot = { x = 2.959, y = 15.489, z = 10.483 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 301002, shape = RegionShape.SPHERE, radius = 25, pos = { x = -656.403, y = 228.332, z = 3210.060 }, area_id = 22 },
	{ config_id = 301003, shape = RegionShape.SPHERE, radius = 25, pos = { x = -701.057, y = 251.738, z = 3322.670 }, area_id = 23 },
	{ config_id = 301004, shape = RegionShape.SPHERE, radius = 25, pos = { x = -737.347, y = 239.285, z = 3440.580 }, area_id = 23 },
	{ config_id = 301005, shape = RegionShape.SPHERE, radius = 25, pos = { x = -725.418, y = 204.923, z = 3592.799 }, area_id = 22 },
	{ config_id = 301006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -833.438, y = 169.533, z = 3735.300 }, area_id = 23 },
	{ config_id = 301007, shape = RegionShape.SPHERE, radius = 35, pos = { x = -809.505, y = 177.883, z = 3769.149 }, area_id = 23 },
	{ config_id = 301008, shape = RegionShape.SPHERE, radius = 40, pos = { x = -601.148, y = 213.832, z = 3137.792 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1301002, name = "ENTER_REGION_301002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301002", action = "action_EVENT_ENTER_REGION_301002", trigger_count = 0 },
	{ config_id = 1301003, name = "ENTER_REGION_301003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301003", action = "action_EVENT_ENTER_REGION_301003", trigger_count = 0 },
	{ config_id = 1301004, name = "ENTER_REGION_301004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301004", action = "action_EVENT_ENTER_REGION_301004", trigger_count = 0 },
	{ config_id = 1301005, name = "ENTER_REGION_301005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301005", action = "action_EVENT_ENTER_REGION_301005", trigger_count = 0 },
	{ config_id = 1301006, name = "ENTER_REGION_301006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301006", action = "action_EVENT_ENTER_REGION_301006", trigger_count = 0 },
	{ config_id = 1301007, name = "ENTER_REGION_301007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301007", action = "action_EVENT_ENTER_REGION_301007" },
	{ config_id = 1301008, name = "ENTER_REGION_301008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301008", action = "action_EVENT_ENTER_REGION_301008", trigger_count = 0 },
	{ config_id = 1301010, name = "GADGET_STATE_CHANGE_301010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_301010", action = "action_EVENT_GADGET_STATE_CHANGE_301010", trigger_count = 0 },
	{ config_id = 1301011, name = "ANY_MONSTER_DIE_301011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_301011", action = "action_EVENT_ANY_MONSTER_DIE_301011", trigger_count = 0 },
	{ config_id = 1301013, name = "GROUP_LOAD_301013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_301013", action = "action_EVENT_GROUP_LOAD_301013", trigger_count = 0 }
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
	end_suite = 9,
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
		monsters = { 301001 },
		gadgets = { },
		regions = { 301008 },
		triggers = { "ENTER_REGION_301008", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301002 },
		triggers = { "ENTER_REGION_301002", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301003 },
		triggers = { "ENTER_REGION_301003", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301004 },
		triggers = { "ENTER_REGION_301004", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301005 },
		triggers = { "ENTER_REGION_301005", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301006 },
		triggers = { "ENTER_REGION_301006", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 301007 },
		triggers = { "ENTER_REGION_301007", "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 301009 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_301010", "ANY_MONSTER_DIE_301011" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 301012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_301010", "GROUP_LOAD_301013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_301002(context, evt)
	if evt.param1 ~= 301002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301003(context, evt)
	if evt.param1 ~= 301003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301003(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301004(context, evt)
	if evt.param1 ~= 301004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301004(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301005(context, evt)
	if evt.param1 ~= 301005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301005(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301006(context, evt)
	if evt.param1 ~= 301006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301006(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301007(context, evt)
	if evt.param1 ~= 301007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301007(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_301008(context, evt)
	if evt.param1 ~= 301008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301301, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_301010(context, evt)
	if 301012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_301010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6087, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_301011(context, evt)
	--判断死亡怪物的configid是否为 301009
	if evt.param1 ~= 301009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_301011(context, evt)
	-- 创建id为301012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 301012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301301, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_301013(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133301301}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_301013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6087, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end