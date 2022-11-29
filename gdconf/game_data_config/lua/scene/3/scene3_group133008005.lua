-- 基础信息
local base_info = {
	group_id = 133008005
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
	{ config_id = 5001, gadget_id = 70500000, pos = { x = 1337.913, y = 270.826, z = -523.246 }, rot = { x = 355.615, y = 173.921, z = 9.360 }, level = 30, point_type = 9126, isOneoff = true, persistent = true, autopick = true, area_id = 10 },
	{ config_id = 5004, gadget_id = 70210101, pos = { x = 1339.141, y = 270.965, z = -525.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 5005, gadget_id = 70210101, pos = { x = 1333.784, y = 271.295, z = -519.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 5006, gadget_id = 70210101, pos = { x = 1355.978, y = 272.839, z = -522.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 5007, gadget_id = 70210101, pos = { x = 1338.232, y = 270.965, z = -523.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, oneoff_reset_version = 2, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 5003, shape = RegionShape.SPHERE, radius = 9.8, pos = { x = 1344.542, y = 270.095, z = -524.481 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "GATHER_5002", event = EventType.EVENT_GATHER, source = "5001", condition = "", action = "action_EVENT_GATHER_5002" },
	{ config_id = 1005003, name = "ENTER_REGION_5003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5003", action = "action_EVENT_ENTER_REGION_5003", trigger_count = 0 },
	{ config_id = 1005008, name = "GADGET_STATE_CHANGE_5008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5008", action = "action_EVENT_GADGET_STATE_CHANGE_5008" }
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
		gadgets = { 5004, 5005, 5006, 5007 },
		regions = { 5003 },
		triggers = { "GATHER_5002", "ENTER_REGION_5003", "GADGET_STATE_CHANGE_5008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
		gadgets = { 5001 },
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

-- 触发操作
function action_EVENT_GATHER_5002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133008005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5003(context, evt)
	if evt.param1 ~= 5003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "701020401") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5008(context, evt)
	if 5007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5008(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008005, 4)
	
	return 0
end