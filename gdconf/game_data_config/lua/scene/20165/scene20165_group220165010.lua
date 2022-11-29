-- 基础信息
local base_info = {
	group_id = 220165010
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
	{ config_id = 10001, gadget_id = 70900201, pos = { x = 313.237, y = 18.914, z = 233.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10002, gadget_id = 70900201, pos = { x = 281.051, y = 28.157, z = 222.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10003, gadget_id = 70900201, pos = { x = 260.331, y = 28.451, z = 218.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10004, gadget_id = 70900201, pos = { x = 227.605, y = 16.675, z = 168.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10005, gadget_id = 70900201, pos = { x = -561.562, y = 23.967, z = 192.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10006, gadget_id = 70900201, pos = { x = -536.471, y = 24.674, z = 192.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10007, gadget_id = 70900201, pos = { x = 922.378, y = 16.100, z = 224.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10008, gadget_id = 70900201, pos = { x = 922.409, y = 16.328, z = 218.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10009, gadget_id = 70900201, pos = { x = 874.903, y = 28.699, z = 217.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10010, gadget_id = 70900201, pos = { x = 272.756, y = 28.747, z = 217.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10011, gadget_id = 70900201, pos = { x = 821.352, y = 15.290, z = 256.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10012, gadget_id = 70900201, pos = { x = 814.077, y = 17.256, z = 265.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10013, gadget_id = 70900201, pos = { x = 555.507, y = 59.230, z = 777.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10014, gadget_id = 70900201, pos = { x = 538.399, y = 53.942, z = 778.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10015, gadget_id = 70900201, pos = { x = 310.025, y = 18.389, z = 229.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10016, gadget_id = 70900201, pos = { x = 272.756, y = 28.747, z = 217.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10017, gadget_id = 70900201, pos = { x = 300.121, y = 9.713, z = 201.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10018, gadget_id = 70900201, pos = { x = 857.472, y = 27.077, z = 224.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10019, gadget_id = 70900201, pos = { x = 227.746, y = 16.683, z = 168.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10024, gadget_id = 70900201, pos = { x = 872.485, y = 27.077, z = 224.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10026, gadget_id = 70900201, pos = { x = 872.600, y = 27.327, z = 224.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 10027, gadget_id = 70900201, pos = { x = 279.297, y = 29.121, z = 222.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 10020, shape = RegionShape.SPHERE, radius = 10, pos = { x = 277.192, y = 26.545, z = 220.527 } },
	{ config_id = 10021, shape = RegionShape.SPHERE, radius = 5, pos = { x = -552.346, y = 22.363, z = 189.770 } },
	{ config_id = 10022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 556.654, y = 56.110, z = 774.461 } },
	{ config_id = 10023, shape = RegionShape.SPHERE, radius = 5, pos = { x = 309.722, y = 17.330, z = 228.454 } }
}

-- 触发器
triggers = {
	{ config_id = 1010020, name = "ENTER_REGION_10020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10020", action = "action_EVENT_ENTER_REGION_10020" },
	{ config_id = 1010021, name = "ENTER_REGION_10021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10021", action = "action_EVENT_ENTER_REGION_10021" },
	{ config_id = 1010022, name = "ENTER_REGION_10022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10022", action = "action_EVENT_ENTER_REGION_10022" },
	{ config_id = 1010023, name = "ENTER_REGION_10023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10023", action = "action_EVENT_ENTER_REGION_10023" }
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
		-- description = 第一次,
		monsters = { },
		gadgets = { 10001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10002 },
		regions = { 10020 },
		triggers = { "ENTER_REGION_10020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 10004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 咖啡馆（改成通知了再消失）,
		monsters = { },
		gadgets = { 10005 },
		regions = { 10021 },
		triggers = { "ENTER_REGION_10021" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 10006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第二次,
		monsters = { },
		gadgets = { 10007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 10008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 10009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 10010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 10011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 10012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 野外（改成通知了再消失）,
		monsters = { },
		gadgets = { 10013 },
		regions = { 10022 },
		triggers = { "ENTER_REGION_10022" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 10014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 第三次,
		monsters = { },
		gadgets = { 10015 },
		regions = { 10023 },
		triggers = { "ENTER_REGION_10023" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { 10016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 10017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 10018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = ,
		monsters = { },
		gadgets = { 10019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = 第二次9-10,
		monsters = { },
		gadgets = { 10026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = 第二次9-10,
		monsters = { },
		gadgets = { 10027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 23,
		-- description = 第三次传送门,
		monsters = { },
		gadgets = { 10024 },
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
function condition_EVENT_ENTER_REGION_10020(context, evt)
	if evt.param1 ~= 10020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10020(context, evt)
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 1)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10021(context, evt)
	if evt.param1 ~= 10021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10021(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10022(context, evt)
	if evt.param1 ~= 10022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10022(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220165010, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10023(context, evt)
	if evt.param1 ~= 10023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220165010, suite = 16 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end