-- 基础信息
local base_info = {
	group_id = 155007092
}

-- Trigger变量
local defs = {
	group_ID = 155007092,
	gadget_Rune_01 = 92001,
	gadget_Rune_02 = 92002,
	gadget_Rune_03 = 92003,
	gadget_Rune_04 = 92004,
	gadget_Rune_05 = 92005,
	gadget_controller_01 = 92016,
	gadget_controller_02 = 92019,
	gadget_controller_03 = 92024,
	gadget_controller_04 = 92026,
	gadget_controller_05 = 92028
}

-- DEFS_MISCS
local gadgetlist = 
{
	{defs.gadget_controller_01, defs.gadget_Rune_01, "Rune_01"},
	{defs.gadget_controller_02, defs.gadget_Rune_02, "Rune_02"},
	{defs.gadget_controller_03, defs.gadget_Rune_03, "Rune_03"},
	{defs.gadget_controller_04, defs.gadget_Rune_04, "Rune_04"},
	{defs.gadget_controller_05, defs.gadget_Rune_05, "Rune_05"}
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
	-- 1
	{ config_id = 92001, gadget_id = 70230080, pos = { x = -131.078, y = 216.497, z = 1522.668 }, rot = { x = 335.597, y = 97.886, z = 357.467 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 2
	{ config_id = 92002, gadget_id = 70230081, pos = { x = -159.989, y = 199.383, z = 1437.759 }, rot = { x = 1.573, y = 10.323, z = 359.250 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 3
	{ config_id = 92003, gadget_id = 70230082, pos = { x = 17.230, y = 211.977, z = 1587.210 }, rot = { x = 26.100, y = 218.289, z = 4.240 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 4
	{ config_id = 92004, gadget_id = 70230083, pos = { x = -39.777, y = 201.166, z = 1564.509 }, rot = { x = 343.506, y = 252.176, z = 5.486 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 5
	{ config_id = 92005, gadget_id = 70230084, pos = { x = -77.729, y = 198.887, z = 1522.069 }, rot = { x = 0.000, y = 316.469, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 1A
	{ config_id = 92016, gadget_id = 70360001, pos = { x = -130.479, y = 216.489, z = 1522.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 2B
	{ config_id = 92019, gadget_id = 70360001, pos = { x = -159.965, y = 198.948, z = 1438.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 3C
	{ config_id = 92024, gadget_id = 70360001, pos = { x = 16.925, y = 211.345, z = 1587.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 4D
	{ config_id = 92026, gadget_id = 70360001, pos = { x = -40.448, y = 199.979, z = 1564.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 },
	-- 5E
	{ config_id = 92028, gadget_id = 70360001, pos = { x = -78.759, y = 196.967, z = 1523.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化添加Option
	{ config_id = 1092011, name = "GROUP_LOAD_92011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_92011", trigger_count = 0 },
	-- 选择对应的符文激活
	{ config_id = 1092018, name = "SELECT_OPTION_92018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_92018", action = "action_EVENT_SELECT_OPTION_92018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Rune_01", value = 0, no_refresh = true },
	{ config_id = 2, name = "Rune_02", value = 0, no_refresh = true },
	{ config_id = 3, name = "Rune_03", value = 0, no_refresh = true },
	{ config_id = 4, name = "Rune_04", value = 0, no_refresh = true },
	{ config_id = 5, name = "Rune_05", value = 0, no_refresh = true }
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
		gadgets = { 92001, 92002, 92003, 92004, 92005, 92016, 92019, 92024, 92026, 92028 },
		regions = { },
		triggers = { "GROUP_LOAD_92011", "SELECT_OPTION_92018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_92011(context, evt)
		for i=1,#gadgetlist do
			if ScriptLib.GetGroupVariableValue(context, gadgetlist[i][3]) ~= 1 then
				ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_ID, gadgetlist[i][1], {65})
			end
		end
		return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_92018(context, evt)
		for i=1,#gadgetlist do
			if evt.param1 == gadgetlist[i][1] and 65 == evt.param2 then 
				return true
			end
		end
		return false
end

-- 触发操作
function action_EVENT_SELECT_OPTION_92018(context, evt)
		for i=1,#gadgetlist do
			if gadgetlist[i][1] == evt.param1 then 
				ScriptLib.SetGadgetStateByConfigId(context, gadgetlist[i][2], 201)
				ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, gadgetlist[i][1], 65)
				ScriptLib.SetGroupVariableValue(context, gadgetlist[i][3], 1)	
				ScriptLib.ChangeGroupVariableValueByGroup(context, "activecount", 1, 155007011)
				ScriptLib.SetGroupVariableValueByGroup(context, gadgetlist[i][3], 1, 155007011)
			end
		end
		return 0
end