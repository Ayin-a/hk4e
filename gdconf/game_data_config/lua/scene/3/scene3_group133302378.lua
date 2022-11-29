-- 基础信息
local base_info = {
	group_id = 133302378
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
	{ config_id = 378001, gadget_id = 70330252, pos = { x = -759.149, y = 205.889, z = 2878.852 }, rot = { x = 0.000, y = 120.484, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 378008, gadget_id = 70210101, pos = { x = -759.149, y = 205.575, z = 2878.852 }, rot = { x = 0.000, y = 120.484, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 378002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -759.157, y = 205.583, z = 2878.872 }, area_id = 24 },
	-- rmd 1
	{ config_id = 378003, shape = RegionShape.SPHERE, radius = 15, pos = { x = -759.149, y = 205.575, z = 2878.852 }, area_id = 24 },
	-- rmd  2
	{ config_id = 378004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -759.149, y = 205.575, z = 2878.852 }, area_id = 24 },
	{ config_id = 378005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -759.149, y = 205.575, z = 2878.852 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1378002, name = "ENTER_REGION_378002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- rmd 1
	{ config_id = 1378003, name = "ENTER_REGION_378003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378003", action = "action_EVENT_ENTER_REGION_378003" },
	-- rmd  2
	{ config_id = 1378004, name = "ENTER_REGION_378004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378004", action = "action_EVENT_ENTER_REGION_378004", trigger_count = 3 },
	{ config_id = 1378005, name = "ENTER_REGION_378005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_378005", action = "action_EVENT_ENTER_REGION_378005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 378006, monster_id = 28050106, pos = { x = -759.563, y = 207.551, z = 2878.210 }, rot = { x = 0.000, y = 120.484, z = 0.000 }, level = 27, drop_tag = "魔法生物", isOneoff = true, area_id = 24 },
		{ config_id = 378007, monster_id = 28050106, pos = { x = -758.947, y = 206.422, z = 2878.368 }, rot = { x = 0.000, y = 120.484, z = 0.000 }, level = 27, drop_tag = "魔法生物", isOneoff = true, area_id = 24 }
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
	end_suite = 3,
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
		regions = { 378002 },
		triggers = { "ENTER_REGION_378002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 378001 },
		regions = { 378003, 378004, 378005 },
		triggers = { "ENTER_REGION_378003", "ENTER_REGION_378004", "ENTER_REGION_378005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 378008 },
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
function condition_EVENT_ENTER_REGION_378003(context, evt)
	if evt.param1 ~= 378003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378003(context, evt)
	-- 调用提示id为 1111300 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378004(context, evt)
	if evt.param1 ~= 378004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378004(context, evt)
	-- 调用提示id为 1111313 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111313) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_378005(context, evt)
	if evt.param1 ~= 378005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_378005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7019, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end