-- 基础信息
local base_info = {
	group_id = 240001002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010201, pos = { x = 59.189, y = 42.017, z = 120.076 }, rot = { x = 0.000, y = 277.804, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21010301, pos = { x = 59.785, y = 42.017, z = 122.978 }, rot = { x = 0.000, y = 288.381, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010301, pos = { x = 0.929, y = 47.319, z = 59.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 21010201, pos = { x = -0.901, y = 47.028, z = 57.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 21010701, pos = { x = 5.140, y = 47.188, z = 57.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21010701, pos = { x = 3.229, y = 47.341, z = 58.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010701, pos = { x = 57.716, y = 42.016, z = 119.507 }, rot = { x = 0.000, y = 294.272, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21010701, pos = { x = 57.409, y = 42.016, z = 120.507 }, rot = { x = 0.000, y = 305.224, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" },
	{ config_id = 1000006, name = "ANY_MONSTER_DIE_6", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "" }
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
	rand_suite = true
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
		monsters = { 2001, 2002, 2003, 2004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_4,
		monsters = { 2005, 2006, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
		-- 重新生成指定group，指定suite
	math.randomseed(os.time())
	local suite_id = math.random(2,4)
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240001003, suite = suite_id }) then
			return -1
		end
	
	
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=7, y=42, z=96}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	return 0
	
end