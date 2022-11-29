-- 基础信息
local base_info = {
	group_id = 133002129
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
	{ config_id = 129001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1267.041, y = 296.546, z = -1045.395 }, area_id = 10 },
	{ config_id = 129002, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1231.988, y = 306.181, z = -1071.420 }, area_id = 10 },
	{ config_id = 129003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1202.159, y = 317.945, z = -1058.415 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1129001, name = "ENTER_REGION_129001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129001", action = "action_EVENT_ENTER_REGION_129001" },
	{ config_id = 1129002, name = "ENTER_REGION_129002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129002", action = "action_EVENT_ENTER_REGION_129002" },
	{ config_id = 1129003, name = "ENTER_REGION_129003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129003", action = "action_EVENT_ENTER_REGION_129003" }
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
		gadgets = { },
		regions = { 129001, 129002, 129003 },
		triggers = { "ENTER_REGION_129001", "ENTER_REGION_129002", "ENTER_REGION_129003" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_129001(context, evt)
	if evt.param1 ~= 129001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129001(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1272, y=296, z=-1041}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "sfx_snow_run_02", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_129002(context, evt)
	if evt.param1 ~= 129002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129002(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1233, y=306, z=-1070}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "sfx_snow_run_02", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_129003(context, evt)
	if evt.param1 ~= 129003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129003(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=1201, y=318, z=-1056}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "sfx_snow_run_02", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end