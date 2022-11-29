-- 基础信息
local base_info = {
	group_id = 133309006
}

-- DEFS_MISCS
local levelUpOption = 0
local chainId = 100004
local maxLevel = 5
local regionID = 6002

local notifyGroupList = {
133309593,
133309428,
133309429,
133309430,
133309431
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
	{ config_id = 6002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2446.147, y = -24.529, z = 5651.471 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "QUEST_START_6001", event = EventType.EVENT_QUEST_START, source = "7305442", condition = "", action = "action_EVENT_QUEST_START_6001", trigger_count = 0 },
	{ config_id = 1006002, name = "ENTER_REGION_6002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 6002 },
		triggers = { "QUEST_START_6001", "ENTER_REGION_6002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_6001(context, evt)
	-- 将本组内变量名为 "Variable_Setchain" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Variable_Setchain", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V3_1/SetChainLevel"