--[[======================================
||	filename:	CalculateBulletForward
||	owner: 		chen.chen
||	description:	用于楔子玩法管理玩法阶段和回滚逻辑，之前做八方向射击导致文件名比较无关，但已经有多处引用就先不改了
||	LogName:	##[CalculateBulletForward]
||	Protection:	
=======================================]]--

--[[
local shootLightMap={
	[10024]=23334
}

local lawfulGadgets=
{
	[1]={1002,1003},
	[3]={1004,1005}
}

]]--

local extraTriggers={
  { config_id = 40000000, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
  { config_id = 40000001, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "MoveStep", condition = "", action = "action_variable_change", trigger_count = 0},
  { config_id = 40000002, name = "EVENT_GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
  { config_id = 40000003, name = "EVENT_PLATFORM_REACH_POINT", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_reach_point", trigger_count = 0},
  { config_id = 40000004, name = "EVENT_TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "success", condition = "", action = "action_time_axis_pass_success", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
	table.insert(variables, { config_id=50000001,name = "MoveStep", value = 0,no_refresh = true})
	table.insert(variables, { config_id=50000002,name = "Successed", value = 0,no_refresh = true})
end

function LF_CheckContainGonfigID(checkTable,targetId)
	for k,v in pairs(checkTable) do
		if v==targetId then
			return true
		end
	end
	return false
end

--ServerLuaCall楔子被命中
function WedgeOfSealBreak(context)
	ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：楔子被命中")
	if context.target_entity_id~=nil then
		ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：target_entity_id="..context.target_entity_id)
	end
	if context.source_entity_id~=nil then
		ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：source_entity_id="..context.source_entity_id)
	end
	--找触发者
	local configID = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	--local configID = ScriptLib.GetConfigIdByEntityId(context, context.source_entity_id )
	ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：configID="..configID)
	for k,v in pairs(gadgets) do
		if v.config_id==configID then
			if lawfulGadgets~=nil then
				local tempValue=ScriptLib.GetGroupVariableValue(context, "MoveStep")
				if tempValue<defs.steps then
					tempValue=tempValue+1
					if lawfulGadgets[tempValue]==nil or LF_CheckContainGonfigID(lawfulGadgets[tempValue],configID) then
						ScriptLib.SetGroupGadgetStateByConfigId(context, 0, configID, 203)
						ScriptLib.SetGroupVariableValue(context, "MoveStep", tempValue)
						return 0
					else
						ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：触发了不合法的楔子发射器")
					end
				else
					ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：路径已走完")
				end
			else
				local tempValue=ScriptLib.GetGroupVariableValue(context, "MoveStep")
				if tempValue<defs.steps then
					tempValue=tempValue+1
					ScriptLib.SetGroupGadgetStateByConfigId(context, 0, configID, 203)
					ScriptLib.SetGroupVariableValue(context, "MoveStep", tempValue)
				else
					ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：路径已走完")
				end
			end
		end
	end
	return 0
end

-----------------------------EventActions-----------------------------------------
--时间轴用来在CS播放时后台回收逻辑楔子，加载纯表现楔子和底座
function action_time_axis_pass_success(context, evt)
	--进入方法log
	ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：完成时间轴触发")
	ScriptLib.KillGroupEntity(context, { group_id = 0, gadgets = {defs.config_id}})
	ScriptLib.AddExtraGroupSuite(context, 0, 3)
	return 0
end
--记录玩法是否完成，以及让楔子播掉落尘埃特效
function action_reach_point(context, evt)
	--如果event不来自楔子，则不处理
	if evt.param1~=defs.config_id then
		return 0
	end
	--如果是策划配置的落烟点，则播放匝地特效
	if evt.param3==defs.shake_point then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.config_id, 203)
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "MoveStep")>=defs.steps then
		--如果发现走完了所有路劲，则记录玩法完成，用于下次load是处理加载
		ScriptLib.SetGroupVariableValue(context, "Successed", 1)
		--播放匝地
		if defs.shake_point==nil then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.config_id, 203)
		end
		--同时起一个2S的时间轴用来在CS过程中隐藏掉坠落的楔子，加载纯氛围的楔子
		ScriptLib.InitTimeAxis(context, "success", {2}, false)
	else
			--否则处理播一下抖落特效
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.config_id, 202)
	end
	return 0
end


--初始化楔子位置
function action_group_load(context, evt)
	--进入方法log
	ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：group load")
	--如果玩法已经完成，则只加载静态的物件
	if ScriptLib.GetGroupVariableValue(context, "Successed")==1 then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
		return 0
	end
	--如果玩法未完成，则恢复玩进度
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	if ScriptLib.GetGroupVariableValue(context, "MoveStep")==0 then
		return 0
	end
	tempStep=ScriptLib.GetGroupVariableValue(context, "MoveStep")
	for i=tempStep,1,-1 do
		if defs.routes[i].route~=nil then
			ScriptLib.SetPlatformPointArray(context, defs.config_id, defs.routes[i].route, defs.routes[i].points, { route_type = 0 })
			break
		end
	end
	return 0
end

--variable改变时移动楔子
function action_variable_change(context, evt)
	--进入方法log
	ScriptLib.PrintContextLog(context, "##[CalculateBulletForward]楔子玩法：楔子开始移动")
	--播放开始下落特效
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.config_id, 201)
	tempStep=ScriptLib.GetGroupVariableValue(context, "MoveStep")
	if defs.routes[tempStep]~=nil then
		if defs.routes[tempStep].route~=nil then
			ScriptLib.SetPlatformPointArray(context, defs.config_id, defs.routes[tempStep].route, defs.routes[tempStep].points, { route_type = 0 })
		end
	end
	return 0
end

--楔子发射器关闭时，将对应流光也隐藏
function action_gadget_state_change(context, evt)
	--如果某个发射器被关闭了，则查一下有没有配关联的流光，如果有的话就隐藏
	if evt.param3==201 and evt.param1==203 then
		if shootLightMap~=nil then
			if shootLightMap[evt.param2]~=nil then
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, shootLightMap[evt.param2], 201)
			end
		end
	end
	return 0
end

LF_Initialize_Group(triggers, suites)