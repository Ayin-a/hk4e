--[[======================================
||	filename:	BW_LightRoadTrack
||	owner: 		chen.chen
||	description: 	光路路径节点玩法
||	LogName:	## [BW_LightRoadTrack]
||	Protection:	
=======================================]]--

--defs的静态映射表，因为playbundle只支持gadget_的形式
--[[
local nodeTable={
	[1]=defs.gadget_node01,
	[2]=defs.gadget_node02,
	[3]=defs.gadget_node03,
	[4]=defs.gadget_node04,
  [5]=defs.gadget_node05,
  [6]=defs.gadget_node06,
  [7]=defs.gadget_node07,
  [8]=defs.gadget_node08,
}

local guideEffTable={
	[1]=defs.gadget_hint01,
	[2]=defs.gadget_hint02,
	[3]=defs.gadget_hint03,
	[4]=defs.gadget_hint04,
  [5]=defs.gadget_hint05,
  [6]=defs.gadget_hint06,
  [7]=defs.gadget_hint07,
  [8]=defs.gadget_hint08,
}
]]--

local extraTriggers={
  { config_id = 40000000, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_event_group_load", trigger_count = 0 },
  { config_id = 40000001, name = "EVENT_GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
  { config_id = 40000002, name = "EVENT_ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 ,forbid_guest = true},
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	--玩法状态
	table.insert(variables, { config_id=50000001,name = "PlayStep", value = 0,no_refresh = true})
	--为每一个光路路径节点增加一个region
	local id=30000000
	for i=1,#gadgets do
		if gadgets[i].gadget_id==70290319 then
			local configId=gadgets[i].config_id
			local insertRegion={ config_id = id+configId, shape = RegionShape.SPHERE, radius = 2, pos=gadgets[i].pos, area_id = gadgets[i].area_id }
			table.insert(regions,insertRegion)
			table.insert(suites[2].regions,id+configId)
		end
	end
end
--[[
PlayStep:
0:未开始
1:寻找中
2:已完成
]]

-----------------------------EventActions-----------------------------------------
--关卡被加载时根据完成状态恢复group
function action_event_group_load(context, evt)
	local playStep=ScriptLib.GetGroupVariableValue(context, "PlayStep")
	--进入方法log
	ScriptLib.PrintContextLog(context,"##[BW_LightRoadTrack] group load with playstep:"..playStep)
	--如果处于未开始状态，加载suite2
	if playStep==0 then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	--如果已开始，本玩法不记录中间状态，所以重置玩法
	elseif playStep==1 then
		ScriptLib.SetGroupVariableValue(context, "PlayStep", 0)
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
  --如果玩法已完成，则直接加载suite3，并点亮底座
	else
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_startpoint, 204)
	end
	return 0
end

--用于处理重力压板的状态变化
function action_gadget_state_change(context, evt)
	--进入方法log
	ScriptLib.PrintContextLog(context,"##[BW_LightRoadTrack] group gadget state change, config_id="..evt.param2)
	--如果重力压板状态变化了
	if evt.param2==defs.gadget_startpoint then
		--checkstate
		ScriptLib.PrintContextLog(context,"##[BW_LightRoadTrack] start point state change:"..evt.param1)
		--如果重力压板被激活，则需要展示节点和指引
		if evt.param1==203 then
      LF_SetAllNodeState(context,201)
			for k,v in pairs(guideEffTable) do
				if v ~=0 then
					ScriptLib.CreateGadget(context, { config_id = v })
				end 
			end
			--标志玩法开始
			ScriptLib.SetGroupVariableValue(context, "PlayStep", 1)
		end
		--离开压板，需要开启玩法计时，但不改变物件状态
		if evt.param1==201 and evt.param3==203 then
			for k,v in pairs(guideEffTable) do
				if v ~=0 then
					ScriptLib.KillGroupEntity(context, { group_id = 0, gadgets = {v} })
				end 
			end
			--标志未开始
			ScriptLib.SetGroupVariableValue(context, "PlayStep", 0)
			LF_SetAllNodeState(context,0)
		end
	end
	return 0
end

--用于处理玩法过程中达到节点
function action_enter_region(context, evt)
	--进入方法log
	ScriptLib.PrintContextLog(context,"##[BW_LightRoadTrack] enter region, config_id="..(evt.param1-30000000))
	--如果不处于玩法中，则直接返回
	if ScriptLib.GetGroupVariableValue(context, "PlayStep")~=1 then
		return 0
	end
	--判定是否按照步骤开始踩
	local enterConfigId=evt.param1-30000000
	--判断是否踩到的正确的节点
	--踩了，熄灭，消除流光，并将目标index+1
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, enterConfigId, 0)
	for k,v in pairs(nodeTable) do
		if v==enterConfigId then 
			ScriptLib.KillGroupEntity(context, { group_id = 0, gadgets = {guideEffTable[k]} })
		end
	end
	--判断玩法是否已经完成
	if LF_CheckAllNodeActive(context)==true then
		--标志玩法结束
		ScriptLib.SetGroupVariableValue(context, "PlayStep", 2)
		--创建宝箱
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		--常亮路径压板
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_startpoint, 204)
	end 
	return 0
end

--封装一下用于全量设置node的状态
function LF_SetAllNodeState(context,state)
	for k,v in pairs(nodeTable) do
		if v ~= 0 then
			--改成active状态
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, state)
		end
	end
	return 0
end

--确认是否所有节点都踩到了
function LF_CheckAllNodeActive(context)
	for k,v in pairs(nodeTable) do
		if v~=nil and v~=0 then
			if ScriptLib.GetGadgetStateByConfigId(context, 0, v)==201 then
				--找到不符合的config
				ScriptLib.PrintContextLog(context,"##[BW_LightRoadTrack] check all node active fail, config_id="..v)
				return false
			end
		end
	end
	return true
end

LF_Initialize_Group(triggers, suites)