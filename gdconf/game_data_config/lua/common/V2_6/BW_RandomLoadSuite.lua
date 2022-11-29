--[[======================================
||	filename:	BW_RandomLoadSuite
||	owner: 		chen.chen
||	description:	初次load时用来根据suiteWeightTable配置的权重随机一个suite加载并存档，之后加载都使用第一次的随机结果
||	LogName:	BW_RandomLoadSuite
||	Protection:	
=======================================]]--

local suiteWeightTable={
	[2]=100,
	[3]=100,
	[4]=100,
	[5]=100,
	[6]=100,
	[7]=100,
	[8]=100,
	[9]=100,
	[10]=100,
	[11]=100,
	[12]=40,
	[13]=40,
}
local extraTriggers={
  { config_id = 40000001, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--需要额外创建的suite number
	table.insert(variables, { config_id=50000001,name = "ExtraSuite", value = 0,no_refresh = true})
end

function action_EVENT_GROUP_LOAD(context, evt)
	local _extraSuite=ScriptLib.GetGroupVariableValue(context, "ExtraSuite")
	--如果已经随机过初始suite了，则直接加载对应的suite
	if _extraSuite~=0 then
		--ScriptLib.AddExtraGroupSuite(context, 0, _extraSuite)
		ScriptLib.RefreshGroup(context, { group_id = 0, suite = _extraSuite })
		return 0
	--如果还没有随机过，则按权重随机一个新的suite加载	
	else
		--计算一下权重的和
		local _maxWeight=0
		for k,v in pairs(suiteWeightTable) do
			_maxWeight=_maxWeight+v
		end
		if _maxWeight==0 then
			ScriptLib.PrintContextLog(context,"## [BW_RandomLoadSuite] Warning：没有配置任何加载权重")
			return 0
		end
    --根据权重配置随机一个值
		math.randomseed(ScriptLib.GetServerTime(context))
		weight=math.random(1,_maxWeight)
		--根据随机结果找到对应的suite，存档并加载
		for k,v in pairs(suiteWeightTable) do
			if weight<=v then
				_extraSuite=k
				ScriptLib.SetGroupVariableValue(context, "ExtraSuite", _extraSuite)
				--ScriptLib.AddExtraGroupSuite(context, 0, _extraSuite)
				ScriptLib.RefreshGroup(context, { group_id = 0, suite = _extraSuite })
				break
			else
				weight=weight-v
			end
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)