-- 基础信息
local base_info = {
	group_id = 133220389
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 389001, monster_id = 24020101, pos = { x = -2324.005, y = 240.713, z = -4190.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 389002, monster_id = 24020201, pos = { x = -2313.863, y = 239.918, z = -4180.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 389003, monster_id = 24020301, pos = { x = -2340.506, y = 238.937, z = -4184.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 11 },
	{ config_id = 389004, monster_id = 24020401, pos = { x = -2327.772, y = 237.722, z = -4171.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 17, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 11 }
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
	{ config_id = 1389005, name = "GROUP_LOAD_389005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_389005" },
	{ config_id = 1389006, name = "HUNTING_FINISH_FINAL_389006", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_389006" }
}

-- 点位
points = {
	{ config_id = 389007, pos = { x = -2326.053, y = 239.204, z = -4181.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 11 }
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
		regions = { },
		triggers = { "GROUP_LOAD_389005", "HUNTING_FINISH_FINAL_389006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雄蜂,
		monsters = { 389001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 藤蔓,
		monsters = { 389002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 蜘蛛,
		monsters = { 389003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 水母,
		monsters = { 389004 },
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
function action_EVENT_GROUP_LOAD_389005(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133220389, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_389006(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133220389, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end