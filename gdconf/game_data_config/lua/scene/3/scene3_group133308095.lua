-- 基础信息
local base_info = {
	group_id = 133308095
}

-- DEFS_MISCS
local levelUpOption = 0
local chainId = 100007
local maxLevel = 1
local regionID = 95002

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
	{ config_id = 95002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1985.940, y = 290.538, z = 4109.792 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1095001, name = "QUEST_START_95001", event = EventType.EVENT_QUEST_START, source = "7308301", condition = "", action = "action_EVENT_QUEST_START_95001", trigger_count = 0 },
	{ config_id = 1095002, name = "ENTER_REGION_95002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 95002 },
		triggers = { "QUEST_START_95001", "ENTER_REGION_95002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_95001(context, evt)
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/SetChainLevel"