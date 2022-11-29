-- 基础信息
local base_info = {
	group_id = 155008010
}

-- Trigger变量
local defs = {
	pointarray_route = 500800006
}

-- DEFS_MISCS
--[[ 

	solution_state_i :
	0 = 未开启
	1 = 开启
	2 = 完成
	3 = 奖励被领取后关闭
]]

local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {10001,10002,10003,10004,10005}

SolutionList = 
{
	{1,3,5,4,2},
	{3,1,2,4,5},
	{5,2,1,3,4},
	{2,1,3,4,5},
	{4,5,1,3,2},

}

Gates = 
{
	10001,
	10002,
	10003,
	10004,
	10005
}

ChamberList = 
{
	{155008012,"solution_state_1"},
	{155008013,"solution_state_2"},
	{155008014,"solution_state_3"},
	{155008015,"solution_state_4"},
	{155008016,"solution_state_5"},
}

function OpenChamber(context,chamberindex)
	ScriptLib.PlayCutScene(context, 51, 0)
	ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 1, ChamberList[chamberindex][1])
		--ScriptLib.RefreshGroup(context, { group_id = ChamberList[chamberindex][1], suite = 2 }) 
		ScriptLib.ChangeGroupVariableValue(context,"curChamberIndex",chamberindex)
		--ScriptLib.AddExtraGroupSuite(context, v[2], 2)
end

function CloseChamber(context,chamberindex)
	ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, ChamberList[chamberindex][1])
		--ScriptLib.RefreshGroup(context, { group_id = ChamberList[chamberindex][1], suite = 3 }) 
		ScriptLib.ChangeGroupVariableValue(context,"curChamberIndex",0)
		--ScriptLib.AddExtraGroupSuite(context, v[2], 2)
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
	{ config_id = 10001, gadget_id = 70230069, pos = { x = -136.116, y = 266.242, z = 440.868 }, rot = { x = 0.000, y = 222.341, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 10002, gadget_id = 70230070, pos = { x = -152.047, y = 266.177, z = 442.053 }, rot = { x = 0.000, y = 145.136, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 10003, gadget_id = 70230071, pos = { x = -158.379, y = 266.186, z = 427.441 }, rot = { x = 0.000, y = 77.204, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 10004, gadget_id = 70230072, pos = { x = -146.318, y = 266.100, z = 416.687 }, rot = { x = 0.000, y = 3.391, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 10005, gadget_id = 70230073, pos = { x = -132.447, y = 266.093, z = 425.073 }, rot = { x = 0.000, y = 292.236, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010006, name = "GROUP_LOAD_10006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10006", trigger_count = 0 },
	{ config_id = 1010007, name = "VARIABLE_CHANGE_10007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_10007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "curChamberIndex", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_10006", "VARIABLE_CHANGE_10007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_10006(context, evt)
			local curchamber = ScriptLib.GetGroupVariableValue(context, "curChamberIndex")
			local curchamberstate = ScriptLib.GetGroupVariableValue(context,"solution_state_"..curchamber)
			if curchamber ~= 0 and curchamberstate == 2 then 
				OpenChamber(context,curchamber)
			end
		return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10007(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
		
				local varname = evt.source_name
				local prevalue = evt.param2
				local curvalue = evt.param1
				local validcheck = 0 
				ScriptLib.PrintContextLog(context,"[155008010] : "..varname.." = "..curvalue)
				for i=1, #ChamberList do 
					if varname == ChamberList[i][2] then 
						validcheck = 1
					end
				end
		
				if validcheck == 0 then 
					return -1 
				end 
		
				local index = math.floor(varname:gsub("%D+", ""))
				ScriptLib.PrintContextLog(context,"[155008010] : index = "..index)
				--开启
				if evt.param1 == 2 then 
					OpenChamber(context,index)
				end 
			
				--关闭
				if evt.prama1 == 3 then 
					CloseChamber(context,index)
				end
				--TODO
				return 0
end

require "V2_4/SealedAltar"
require "V2_4/EnvState"