-- 基础信息
local base_info = {
	group_id = 133301218
}

-- Trigger变量
local defs = {
	group_id = 133301218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218004, monster_id = 22040201, pos = { x = -1010.525, y = 269.810, z = 3887.932 }, rot = { x = 0.000, y = 230.660, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 218005, monster_id = 22040201, pos = { x = -1012.242, y = 271.951, z = 3881.226 }, rot = { x = 0.000, y = 315.175, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 218007, monster_id = 22040101, pos = { x = -1010.525, y = 269.810, z = 3887.932 }, rot = { x = 0.000, y = 230.660, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 218008, monster_id = 22040101, pos = { x = -1012.242, y = 271.951, z = 3881.226 }, rot = { x = 0.000, y = 315.175, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218010, gadget_id = 70290196, pos = { x = -1013.857, y = 268.098, z = 3888.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218001, name = "GROUP_LOAD_218001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_218001", trigger_count = 0 },
	{ config_id = 1218002, name = "HUNTING_FINISH_FINAL_218002", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_218002" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 218003, pos = { x = -1017.061, y = 272.002, z = 3885.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 218006, monster_id = 22040201, pos = { x = -1021.090, y = 272.074, z = 3882.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 },
		{ config_id = 218009, monster_id = 22040101, pos = { x = -1021.090, y = 272.074, z = 3882.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 101, area_id = 23 }
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
		gadgets = { 218010 },
		regions = { },
		triggers = { "GROUP_LOAD_218001", "HUNTING_FINISH_FINAL_218002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 兽境猎犬雷-小怪,
		monsters = { 218004, 218005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 兽境猎犬岩-小怪,
		monsters = { 218007, 218008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_GROUP_LOAD_218001(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133301218, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_218002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end