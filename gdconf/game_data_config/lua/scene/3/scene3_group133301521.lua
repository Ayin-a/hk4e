-- 基础信息
local base_info = {
	group_id = 133301521
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
	{ config_id = 521001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -61.364, y = 230.748, z = 3255.737 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1521001, name = "ENTER_REGION_521001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_521001", action = "action_EVENT_ENTER_REGION_521001", trigger_count = 0 }
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
		regions = { 521001 },
		triggers = { "ENTER_REGION_521001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_521001(context, evt)
	if evt.param1 ~= 521001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_521001(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-61, y=230, z=3255}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Audio_music_object_shengjishu", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end