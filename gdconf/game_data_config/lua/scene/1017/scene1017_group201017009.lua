-- 基础信息
local base_info = {
	group_id = 201017009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9005, monster_id = 20011001, pos = { x = -23.158, y = 65.503, z = 103.087 }, rot = { x = 0.000, y = 352.117, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 9006, monster_id = 20011001, pos = { x = -15.868, y = 65.476, z = 110.633 }, rot = { x = 0.000, y = 307.168, z = 0.000 }, level = 1 },
	{ config_id = 9008, monster_id = 20010701, pos = { x = -17.651, y = 65.531, z = 104.841 }, rot = { x = 0.000, y = 293.165, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9001, gadget_id = 70220036, pos = { x = -10.830, y = 71.832, z = 93.450 }, rot = { x = 354.861, y = 322.289, z = 335.049 }, level = 1 },
	{ config_id = 9002, gadget_id = 70900201, pos = { x = -22.330, y = 63.100, z = 104.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -20.248, y = 63.100, z = 105.324 } }
}

-- 触发器
triggers = {
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003" }
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
		monsters = { 9005, 9006, 9008 },
		gadgets = { 9001 },
		regions = { 9003 },
		triggers = { "ENTER_REGION_9003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9002 },
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
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 9002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 调用提示id为 101700501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 101700501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end