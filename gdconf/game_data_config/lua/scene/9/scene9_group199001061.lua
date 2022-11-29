-- 基础信息
local base_info = {
	group_id = 199001061
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
	{ config_id = 61001, gadget_id = 70290196, pos = { x = 225.394, y = 152.234, z = 348.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	-- 玩家进入山洞，派蒙吐槽苹果
	{ config_id = 61002, shape = RegionShape.SPHERE, radius = 7, pos = { x = 217.461, y = 152.564, z = 345.843 }, area_id = 402 }
}

-- 触发器
triggers = {
	-- 玩家进入山洞，派蒙吐槽苹果
	{ config_id = 1061002, name = "ENTER_REGION_61002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61002", action = "action_EVENT_ENTER_REGION_61002" }
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
		gadgets = { 61001 },
		regions = { 61002 },
		triggers = { "ENTER_REGION_61002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_61002(context, evt)
	if evt.param1 ~= 61002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61002(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=217.461,y=152.5635,z=345.8431}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111204, pos, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7902214finished") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end