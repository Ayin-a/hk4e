-- 基础信息
local base_info = {
	group_id = 199002008
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
	{ config_id = 8002, gadget_id = 70950145, pos = { x = 579.439, y = 120.000, z = 27.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	-- 来到船的前半段
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 65, pos = { x = 524.522, y = 118.819, z = -100.242 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 来到船的前半段
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001", trigger_count = 0 }
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
		gadgets = { 8002 },
		regions = { 8001 },
		triggers = { "ENTER_REGION_8001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902103finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=524.5223,y=118.8193,z=-100.2415}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111019, pos, 65) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end