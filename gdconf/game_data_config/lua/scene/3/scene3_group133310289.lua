-- 基础信息
local base_info = {
	group_id = 133310289
}

-- DEFS_MISCS
local levelUpOption = 0
local chainId = 100004
local maxLevel = 5
local regionID = 289002

local notifyGroupList = {
133308173,
133308176
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
	{ config_id = 289002, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2480.395, y = 25.169, z = 4336.246 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1289001, name = "QUEST_START_289001", event = EventType.EVENT_QUEST_START, source = "7305246", condition = "", action = "action_EVENT_QUEST_START_289001", trigger_count = 0 },
	{ config_id = 1289002, name = "ENTER_REGION_289002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 289002 },
		triggers = { "QUEST_START_289001", "ENTER_REGION_289002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_289001(context, evt)
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/SetChainLevel"