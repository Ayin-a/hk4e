-- 基础信息
local base_info = {
	group_id = 133302641
}

-- Trigger变量
local defs = {
	group_id = 133302641
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 641001, monster_id = 25210301, pos = { x = -696.973, y = 206.683, z = 2767.318 }, rot = { x = 0.000, y = 193.352, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 24 },
	{ config_id = 641003, monster_id = 25210301, pos = { x = -698.780, y = 206.462, z = 2764.295 }, rot = { x = 0.000, y = 157.369, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 24 },
	{ config_id = 641004, monster_id = 25210201, pos = { x = -697.763, y = 206.926, z = 2761.808 }, rot = { x = 0.000, y = 328.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 24 },
	{ config_id = 641006, monster_id = 25210301, pos = { x = -696.973, y = 206.683, z = 2767.318 }, rot = { x = 0.000, y = 193.352, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 24 },
	{ config_id = 641008, monster_id = 25210301, pos = { x = -698.780, y = 206.462, z = 2764.295 }, rot = { x = 0.000, y = 157.369, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9004, area_id = 24 },
	{ config_id = 641009, monster_id = 25210201, pos = { x = -697.763, y = 206.926, z = 2761.808 }, rot = { x = 0.000, y = 328.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9001, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 641014, gadget_id = 70290196, pos = { x = -697.176, y = 205.383, z = 2765.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1641011, name = "GROUP_LOAD_641011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_641011", trigger_count = 0 },
	{ config_id = 1641012, name = "HUNTING_FINISH_FINAL_641012", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_641012" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 641013, pos = { x = -701.118, y = 206.374, z = 2761.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 641002, monster_id = 25210301, pos = { x = -700.839, y = 205.921, z = 2769.820 }, rot = { x = 0.000, y = 280.991, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 },
		{ config_id = 641005, monster_id = 25210201, pos = { x = -696.444, y = 206.664, z = 2773.191 }, rot = { x = 0.000, y = 271.277, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
		{ config_id = 641007, monster_id = 25210301, pos = { x = -700.839, y = 205.921, z = 2769.820 }, rot = { x = 0.000, y = 280.991, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 24 },
		{ config_id = 641010, monster_id = 25210201, pos = { x = -696.444, y = 206.664, z = 2773.191 }, rot = { x = 0.000, y = 271.277, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
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
		gadgets = { 641014 },
		regions = { },
		triggers = { "GROUP_LOAD_641011", "HUNTING_FINISH_FINAL_641012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 641001, 641003, 641004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 641006, 641008, 641009 },
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
function action_EVENT_GROUP_LOAD_641011(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133302641, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_641012(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end