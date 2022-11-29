-- 基础信息
local base_info = {
	group_id = 420040003
}

-- DEFS_MISCS
-- 家园Group物件 002 计分器
local defs = {
	ScoreCid = 3001,
	PedalCid = 3002,
	Operator = 3003,
}
local keyName = "SGV_ScoringShelf_01"

function EnterField(context, evt)
	-- 获取ScoreCid的计数
	local countNum = ScriptLib.GetGroupTempValue(context, keyName, {})

	-- 使ScoreCid增加1个计数
	countNum = countNum + 1
	if countNum > 10 then
		countNum = 10
	end

	-- 将计数传递给物件
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.ScoreCid, keyName, countNum)
	-- 清空物件参数
	ScriptLib.SetGroupTempValue(context, keyName, countNum, {})

	return 0
end

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
	{ config_id = 3001, gadget_id = 77307005, pos = { x = 329.000, y = 186.550, z = 517.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_ScoringShelf_01"]= 0} },
	{ config_id = 3002, gadget_id = 77307009, pos = { x = 329.000, y = 186.550, z = 522.200 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70360001, pos = { x = 330.576, y = 186.550, z = 514.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true, worktop_config = { init_options = { 326 } }, follow_entity = 3001 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003004, name = "GADGET_CREATE_3004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_3004", trigger_count = 0 },
	{ config_id = 1003005, name = "SELECT_OPTION_3005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION_3005", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 3001, 3002, 3003 },
		regions = { },
		triggers = { "GADGET_CREATE_3004", "SELECT_OPTION_3005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_CREATE_3004(context, evt)
	if defs.ScoreCid ~= evt.param1 then
		return 0
	end
	
	-- 归零
	ScriptLib.SetGroupTempValue(context, keyName, 0, {})
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.ScoreCid, keyName, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3005(context, evt)
	-- 判断是gadgetid Operator option_id 326
	if defs.Operator ~= evt.param1 or 326 ~= evt.param2 then
	    return 0
	end
	-- 归零
	ScriptLib.SetGroupTempValue(context, keyName, 0, {})
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.ScoreCid, keyName, 0)
	
	return 0
end