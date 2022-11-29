--雷元素溢出洞口
--需求：
--1. 同group内的溢出洞口，每经过时间randomTime，发一次球
--2. 每次randomCount个洞口会发球
--[[
local defs = {
	--GroupID
	group_id = 240950005,

	--控制挑战开始的操作机关configID
	--starter_configID = ,

	--随机时间轴。每个轴上数字间隔8~15秒,请人力随机
	RandomTimeAxis = {
        {2,18,38,56,81,99,115,133,148,165,180,196,211,235,257,276,300,315,330,349,367,383,400,416,431,449,471,487},
        {1,17,36,53,69,89,109,134,158,173,197,213,231,249,264,289,305,324,347,362,385,407,429,453,473,491},
        {2,19,42,61,85,104,128,146,167,190,209,232,255,271,288,307,327,348,368,393,412,430,455,477,500},
	},

	--配置每次几个洞口发球
	random_thunderhole_sum = {
		min = 1, 
		max = 3,
	},

}
]]--

local define = {
	gadgetList = {},
	groupID = defs.group_id,
	starter_configID = defs.starter_configID,
	RandomTimeAxis = defs.RandomTimeAxis,
	random_thunderhole_sum = defs.random_thunderhole_sum,
}

local extraTriggers={
	initialtrigger = 
	{		
		--["Select_Option"] = { config_id = 8000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
		["TimeAxis_Event"] = { config_id = 8000002, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_trigger_timeaxis", trigger_count = 0 },
		--["Challenge_Fail"] = { config_id = 8000003, name = "Challenge_Fail", event= EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 },
		["GroupVariable_Change"] = { config_id = 8000003, name = "GroupVariable_Change", event= EventType.EVENT_VARIABLE_CHANGE, source = "challenge", condition = "", action = "action_group_variable_change", trigger_count = 0 },
		--["GadgetState_Change"] = { config_id = 8000004, name = "GadgetState_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
		--["Challenge_Success"] = { config_id = 8000005, name = "Challenge_Success", event= EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 },
	}
}

function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extraTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	GetThunderHoleGadget(context)
	return 0
end

--取得所有的溢出洞口
function GetThunderHoleGadget(context)
	for k,v in pairs(gadgets) do
		if v.gadget_id == 70330086 then
		table.insert(define.gadgetList,v.config_id)
		end
	end
	return 0
end

--[[function action_select_option(context, evt)
	-- 判断是gadgetid starter_configID option_id 7
	if evt.param1 == define.starter_configID then
		if evt.param2 == 7 then
			--所有溢出洞口物件切状态
			for k,v in pairs(define.gadgetList) do
				ScriptLib.SetGadgetStateByConfigId(context, v, 201)
			end
			--初始化时间轴
			ScriptLib.InitTimeAxis(context, "shoot", define.RandomTimeAxis[math.random(#define.RandomTimeAxis)], true)
		end
	end
	return 0
end
]]--

function action_trigger_timeaxis(context, evt)
	RandomThunderHole(context, define.random_thunderhole_sum.min, define.random_thunderhole_sum.max)
	return 0
end

-- 在suit中随机抽取randomCount个幸运物件，让它们发球
function RandomThunderHole(context, minNum, maxNum)
	math.randomseed(ScriptLib.GetServerTime(context))
	randomNum = math.random(minNum, maxNum)

	for i=1,randomNum do	
		if ScriptLib.GetGadgetStateByConfigId(context, define.groupID, define.gadgetList[i]) ~= 0 then
		ScriptLib.SetGadgetStateByConfigId(context, define.gadgetList[i], 202)--物件切202发球后会自己切回201
		end
	end
	return 0
end

--[[function action_gadget_state_change(context, evt)
		if evt.param2 == define.starter_configID and evt.param1 == 0 then
			--停止时间轴
			ScriptLib.EndTimeAxis(context, "shoot")
			--关闭未关闭的溢出洞口
			StopAllGear(context)
		else
			--检查是不是关卡把洞口物件关了，如果关卡给关了，把时间轴停下
			CheckThunderHoleState(context)
		end
	return 0
end]]--
function action_group_variable_change(context, evt)
	--如果是开启挑战
		if evt.param1 == 0 and evt.param2 == 1 then
			--停止时间轴
			ScriptLib.EndTimeAxis(context, "shoot")
			--关闭未关闭的溢出洞口
			StopAllGear(context)
		end
	--如果是结束挑战
		if evt.param1 == 1 and evt.param2 == 0 then
			--所有溢出洞口物件切状态
			for k,v in pairs(define.gadgetList) do
				ScriptLib.SetGadgetStateByConfigId(context, v, 201)
			end
			--初始化时间轴
			ScriptLib.InitTimeAxis(context, "shoot", define.RandomTimeAxis[math.random(#define.RandomTimeAxis)], true)
		end
	return 0
end
function StopAllGear(context)
	--所有溢出洞口物件停
	for k,v in pairs(define.gadgetList) do
		if ScriptLib.GetGadgetStateByConfigId(context, define.groupID, v) ~= 0 then
			ScriptLib.SetGadgetStateByConfigId(context, v, 0)
		end
	end
	return 0
end

function CheckThunderHoleState(context)
	for i=1,#define.gadgetList do
		if ScriptLib.GetGadgetStateByConfigId(context, define.groupID, define.gadgetList[i]) == 0 then
			ScriptLib.EndTimeAxis(context, "shoot")	
			break
		end		
	end
	return 0
end
LF_Initialize_Group(triggers, suites)