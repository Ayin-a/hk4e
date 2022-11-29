--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--操作台位置固定，每次有柱子移动时刷新操作台状态，没有柱子的操作台移除操作数
--[[
--定义关卡内的数据结构
--每个点都有一个操作台，根据这个点有没有柱子在来决定操作台的操作内容
defs = {
group_id = 133223403, 
pointarray_id = 322300053, --使用的移动点阵ID
pillar_num = 5, --移动石柱的数量
suite_opts = 2, --操作台在的Suite
--定义符文石和移动点之间的位置关系，selfSigil是这个点上的提示符文，没有就填0
Graph = {       
[1]={preNode= 0, nextNode= 0, outNode= 0, inNode= 2, selfSigil= 0},
[2]={preNode= 7, nextNode= 3, outNode= 1, inNode= 0, selfSigil= 3},
[3]={preNode= 2, nextNode= 4, outNode= 0, inNode= 0, selfSigil= 1},
[4]={preNode= 3, nextNode= 6, outNode= 5, inNode= 0, selfSigil= 4},
[5]={preNode= 0, nextNode= 0, outNode= 0, inNode= 4, selfSigil= 0},
[6]={preNode= 4, nextNode= 7, outNode= 0, inNode= 0, selfSigil= 7},
[7]={preNode= 6, nextNode= 2, outNode= 8, inNode= 0, selfSigil= 6},
[8]={preNode= 0, nextNode= 0, outNode= 0, inNode= 7, selfSigil= 0},},
--每个桩的存储id,name不用管，initPos是初始位置，finPos是最后的正确位置
PillarInfo = {
[403001] = { name = "Pillar01", initPos = 1, finPos = 2},
[403002] = { name = "Pillar02", initPos = 7, finPos = 3},
[403003] = { name = "Pillar03", initPos = 8, finPos = 7},
[403004] = { name = "Pillar04", initPos = 5, finPos = 4},
[403005] = { name = "Pillar05", initPos = 4, finPos = 6},
},
--每个操作台对应的位置
OperatorPos = {
[403006] = 1,
[403007] = 2,
[403008] = 3,
[403009] = 4,
[403010] = 5,
[403011] = 6,
[403012] = 7,
[403013] = 8,},
}
]]


--把符文石和操作台拆到两个Suite里，收到消息的时候才会加载操作台，并且修改符文石的状态

local Trigger_PillarMove = {
	[1] = { name = "gadget_create", config_id = 9000201, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },
	[2] = { name = "select_option", config_id = 9000202, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	[3] = { name = "platform_reach",config_id = 9000203, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
	[4] = { name = "group_load",config_id = 9000204, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[5] = { name = "variable_change",config_id = 9000205, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 },

}

--管理每个操作台的移动方向逻辑,返回一个操作台可以进行的操作列表
function GetOptList(opt_config_id)
	local opt_list = {}
	local opt_pos = defs.OperatorPos[opt_config_id]
	local opt_map = defs.Graph[opt_pos]
	--前一个的符文，拿到操作数
	if opt_map.preNode ~= 0 then
		local preSigil = (defs.Graph[opt_map.preNode]).selfSigil
		if preSigil ~= 0 then 
			table.insert(opt_list, 300+preSigil)
		else
			table.insert(opt_list, 308)
		end
	end
	--后一个的符文，拿到操作数
	if opt_map.nextNode ~= 0 then
		local nextSigil = (defs.Graph[opt_map.nextNode]).selfSigil
		if nextSigil ~= 0 then 
			table.insert(opt_list, 300+nextSigil)
		else
			table.insert(opt_list, 308)
		end
	end
	--有外接点，塞一个向外移动
	if opt_map.outNode ~= 0 then
		table.insert(opt_list, 309)
	end
	--有内接点，塞一个向内移动
	if opt_map.inNode ~= 0 then
		table.insert(opt_list, 310)
	end
	return opt_list
end

--解码传进来的操作数，找到正确的终点
function GetEndRoute(opt_config_id, opt_sel_id)
	local target_sigil = 0
	local endRoute = 0
	--拿到传进来的操作台的位置和邻接的操作台对应符文
	local opt_pos = defs.OperatorPos[opt_config_id]
	local opt_map = defs.Graph[opt_pos]
	--向外侧移动
	if opt_sel_id == 309 then
		endRoute = opt_map.outNode
	end
	--向内侧移动
	if opt_sel_id == 310 then
		endRoute = opt_map.inNode
	end
	--向有符文处移动,301~307
	if opt_sel_id <= 308 and opt_sel_id > 300 then
		if opt_sel_id == 308 then
			target_sigil = 0
		else
			target_sigil = opt_sel_id - 300
		end
	--防止为0，index报nil
		if opt_map.preNode ~= 0 then	
			if target_sigil == defs.Graph[opt_map.preNode].selfSigil then
				endRoute = opt_map.preNode
			end
		end
	--防止为0，index报nil	
		if opt_map.nextNode ~= 0 then
			if target_sigil == defs.Graph[opt_map.nextNode].selfSigil then
				endRoute = opt_map.nextNode
			end
		end
	end
	return {opt_pos,endRoute}
end

--更新操作台的操作数
function CheckAndModifyOps(context, opt_config_id)
--先将操作置为空方便刷新
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, opt_config_id, {})
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Group_"..defs.group_id)
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Modify_Start_"..opt_config_id)
	local opt_pos = defs.OperatorPos[opt_config_id]
--遍历所有柱子的位置，找到现在这个操作台上的柱子，打开操作台
	for cfg_id,info in pairs(defs.PillarInfo) do
		if opt_pos == ScriptLib.GetGroupTempValue(context, info.name, {}) then
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, opt_config_id, GetOptList(opt_config_id))
			ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : OPT_OPEN")
			return 0
		end
	end

--遍历结束没有找到柱子，将操作台的操作置为空
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, opt_config_id, {})
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Modify_Empty")
	return 0
end

--检查现在的柱子位置状态，全部正确就返回刷奖励
function CheckState(context)
	local rightCounts = 0
	for config_id,info in pairs(defs.PillarInfo) do
		if	info.finPos == ScriptLib.GetGroupTempValue(context, info.name, {}) then
			rightCounts = rightCounts + 1
		end
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Check_Fail")
	--满足排列记录完成
	if rightCounts == defs.pillar_num then
		--记录完成
		ScriptLib.SetGroupVariableValue(context, "Finished", 1)
		--清空操作台可操作内容
		for config_id,pos in pairs(defs.OperatorPos) do
			ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, config_id, {})
		end
	end
	return 0
end

--物件创建时初始化事件
function action_gadget_create(context, evt)
	local config_id = evt.param1
	--校验传进来的gadget是不是Group里的操作台，不是则返回 
	if defs.OperatorPos[config_id] == nil then
		return -1
	end
	--初始化操作台的操作数
	CheckAndModifyOps(context, config_id)
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Init_End")

	return 0
end

--操作台收到移动指令时移动当前位置的柱子
function action_select_option(context, evt)
	local config_id = evt.param1	--	操作台的configid
	local option_id = evt.param2	--	操作id
	--校验传进来的gadget是不是Group里的操作台，不是则返回 
	if defs.OperatorPos[config_id] == nil then
		return -1
	end
	--检测是否有石柱在移动，有的话则不会执行指令，应该要弹一个Reminder
	if 0 ~= ScriptLib.GetGroupTempValue(context, "isMoving", {}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Is_Moving")
		ScriptLib.ShowReminder(context, 400095)
		return -1
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_"..config_id.."_Received_"..option_id)
	local path = GetEndRoute(config_id, option_id)
	local pillar_config_id = 0
	for cfg_id,info in pairs(defs.PillarInfo) do
		if path[2] == ScriptLib.GetGroupTempValue(context, info.name, {}) then
			--有柱子卡了，弹提示，结束
			ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Stucked")
			ScriptLib.ShowReminder(context, 400095)
			return -1
		end
		if path[1] == ScriptLib.GetGroupTempValue(context, info.name, {}) then
			pillar_config_id = cfg_id
		end
	end
--	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_ConfigID_"..pillar_config_id)
	ScriptLib.SetGroupTempValue(context, "TargetPoint", path[2], {})
	ScriptLib.SetPlatformPointArray(context, pillar_config_id, defs.pointarray_id, path, { route_type = 0})
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, config_id, {})
	ScriptLib.StartPlatform(context, pillar_config_id)
	ScriptLib.SetGroupTempValue(context, "isMoving", 1, {})
	--柱子变成203状态带特效
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, pillar_config_id, 203)
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Move_Start")
	return 0
end


--石柱每次到达更新信息
function action_platform_reach_point( context, evt)
	--确认是组里的柱子到了位置
	local pillar_config_id = evt.param1
	--到达的柱子是这组Group里的
	local point_id = evt.param3
	if nil == defs.PillarInfo[pillar_config_id] then
		return -1
	end
	--到的不是目标点
	if point_id ~= ScriptLib.GetGroupTempValue(context, "TargetPoint", {}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : IS_START_POINT")
		return -1
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_"..pillar_config_id.."_Reach_Point"..point_id)
	--更新柱子的位置信息,储存
	ScriptLib.SetGroupTempValue(context, defs.PillarInfo[pillar_config_id].name, point_id, {})
	if point_id == defs.PillarInfo[pillar_config_id].finPos then
		ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : RightPos")
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, pillar_config_id, 201)
	else
		ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : WrongPos")
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, pillar_config_id, 202)
	end

	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Set_Pillar_State")
	--刷新所有操作台的信息，拿状态
	for cfg_id,pos in pairs(defs.OperatorPos) do
		CheckAndModifyOps(context, cfg_id)
	end
	
	--校验是否为正确结果,正确则结束
	CheckState(context)
	--标记没柱子在移动了
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Pillar_Move_Finish")
	ScriptLib.SetGroupTempValue(context, "isMoving", 0, {})
	return 0
end

--变量发生变化的时候切换组内加载组内的所有操作台，开启操作
function action_variable_change( context,evt )
	local var_name = evt.source_name
	local value_new = evt.param1
	if var_name == "isNeedNotify" then
		for cfg_id,info in pairs(defs.PillarInfo) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 202)
		end
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suite_opts)
	end
	if var_name == "isQuestNotify" then
		for cfg_id,info in pairs(defs.PillarInfo) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg_id, 202)
		end
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suite_opts)
	end
	ScriptLib.PrintContextLog(context, "@@ LUA_PILLAR : Can be pushed")
	return 0
end

--在Group加载的时候重置柱子记录的位置，防止断线重连的时候出错
--新版本把柱子的位置全都用TempValue记，这样更保险
function action_group_load(context, evt)
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "Finished") then
		--完成了就切到Suite3
		ScriptLib.RefreshGroup(context, { group_id = defs.group_id , suite = 3})
		return 0
	end
	for cfg_id,info in pairs(defs.PillarInfo) do
		ScriptLib.SetGroupTempValue(context, info.name, info.initPos, {})
	end
	if 0 ~= ScriptLib.GetGroupVariableValue(context, "isQuestNotify") then
		for cfg,infos in pairs(defs.PillarInfo) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, cfg, 202)
		end
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, defs.suite_opts)
	end
	return 0
end

--加触发器
function Initialize_PM()
	for k,v in pairs(Trigger_PillarMove) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	return 0
end

Initialize_PM()