-- 基础信息
local base_info = {
	group_id = 220135001
}

-- DEFS_MISCS
function SLC_Try_Trans_Player(context)
         ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=102.3399, y= 102.781, z=-35.97215}, radius = 1, rot = {x=0,y=180,z=0}, is_skip_ui=false})
        return 0
end

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
	{ config_id = 1004, gadget_id = 70360001, pos = { x = 101.970, y = -202.760, z = 604.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.CUBIC, size = { x = 100.000, y = 20.000, z = 250.000 }, pos = { x = 108.409, y = -218.752, z = 608.243 }, team_ability_group_list = { "KazuhaDreamland_Enter_TransPlayer_Handle" } },
	{ config_id = 1003, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 108.311, y = -221.170, z = 528.067 } },
	{ config_id = 1006, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 10.000 }, pos = { x = 108.311, y = -221.170, z = 537.230 } }
}

-- 触发器
triggers = {
	{ config_id = 1001003, name = "ENTER_REGION_1003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1003", action = "action_EVENT_ENTER_REGION_1003", trigger_count = 0 },
	{ config_id = 1001005, name = "QUEST_START_1005", event = EventType.EVENT_QUEST_START, source = "7903601", condition = "condition_EVENT_QUEST_START_1005", action = "action_EVENT_QUEST_START_1005", trigger_count = 0 },
	{ config_id = 1001006, name = "ENTER_REGION_1006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1006", action = "action_EVENT_ENTER_REGION_1006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "leave", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 1002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 104.206, y = -218.706, z = 694.731 } }
	},
	triggers = {
		{ config_id = 1001002, name = "ENTER_REGION_1002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1002", action = "action_EVENT_ENTER_REGION_1002", trigger_count = 0 }
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
		gadgets = { 1004 },
		regions = { 1003, 1006 },
		triggers = { "ENTER_REGION_1003", "QUEST_START_1005", "ENTER_REGION_1006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 1001 },
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
function condition_EVENT_ENTER_REGION_1003(context, evt)
	if evt.param1 ~= 1003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1003(context, evt)
	-- 将本组内变量名为 "leave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "leave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7903601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_1005(context, evt)
	-- 判断变量"leave"为1
	if ScriptLib.GetGroupVariableValue(context, "leave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_1005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220135001, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1006(context, evt)
	if evt.param1 ~= 1006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7903601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end