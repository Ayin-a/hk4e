--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	Hurarongdao 华容道玩法
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，华容道玩法，设置可移动板块的按键、记录板块位置、判定解谜成功
||	LogName       ||    ## ReviveBoss_LOG
||	Protection    ||	使用var来记录当前板块的位置，在groupload时使用createbypos恢复
=====================================================================================================================


local PlatList = {76001,76002,76003,76004,0,76006,76007,76008,76009}
local initPlatList = {0,76001,76002,76003,76004,76006,76007,76008,76009}

local groupID = 177005076
local ArrayID = 700500010

local operatorConfigID = 76010
local successOptionID = 703
local offeringConfigID = 76014
local borderConfigID = 76018

local lastOfferingConfigID = 76011
local completeConfigID = 76016
local centreConfigID = 76016

local successConfigID = 0

local OptionID = 705   
local RestartOption = 704
local PointList ={
        {pos={x=242.596, y=325.599, z=284.231}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=241.107, y=325.599, z=282.2}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=239.68, y=325.599, z=280.16}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=240.584, y=325.599, z=285.718}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=239.099, y=325.599, z=283.706}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=237.562, y=325.599, z=281.526}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=238.57, y=325.599, z=287.208}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=237.091, y=325.599, z=285.201}, rot={x=0 ,y=306.31, z=0}},
        {pos={x=235.627, y=325.599, z=283.219}, rot={x=0 ,y=306.31, z=0}},
}



======================================================================================================================]]

--12.21  迭代，为了保证只有一个按键  新增了function SLC_Huarongdao_Selecte( context, isSelected)    删除了LF_SetOption中的按键设置逻辑   在action_PlatReachPoint中新增设置按键逻辑
--12.22  迭代，新增了一个按键缓存功能，如果玩家一次踩到多块版，只显示第一个板的按键，离开第一块板的区域时检查缓存中时候还有可用的板
--12.29  BUG修复，流程中出现了没有被删除的板块，为了防止LD这边的return问题，把逻辑迁移到re那个什么    b1331347




local extrTriggers = {
	initialtrigger = {
		["Reach_Point"] = { config_id = 8000001, name = "Reach_Point", event= EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_PlatReachPoint", trigger_count = 0 },
		["Option_Down"] = { config_id = 8000002, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_OptionDown", trigger_count = 0 },
		["Gadget_State_Change"] = { config_id = 8000003, name = "Gadget_State_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_GadgetStateChange", trigger_count = 0 },
		["Group_Load"] = { config_id = 8000005, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoad", trigger_count = 0 },
	}
}

local referenceConfigID = 76021

--在tempvalue组里插入数据，返回其当前所在的位置，singlMode为true表示自动过滤重复数据
function LF_TempValueInsert( context, key, value, isSingleMode )

	for i=1,10 do
		local curSlot = LF_GetTempValueByIndex( context, key, i )	

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 缓存加值循环")

		if curSlot == value and isSingleMode then
			ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 出现了重复的ID")
			return -1
		end

		if curSlot == nil then
			--插值
			ScriptLib.SetGroupTempValue(context, key..i, value,{})
			--记录长度
			if ScriptLib.GetGroupTempValue(context, key.."Size", {}) == 0 then
				ScriptLib.SetGroupTempValue(context, key.."Size", 1, {})
			elseif ScriptLib.GetGroupTempValue(context, key.."Size", {}) <10 then
				ScriptLib.ChangeGroupTempValue(context, key.."Size", 1, {})
			end

			return i
		end
	end

	return -1
	
end

function LF_TempValueRemoveByIndex( context, key, index )
	local sum = LF_TempValueGetSize( context, key )

	if sum == 0 then
		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 有问题，缓存是空的")
		return -1
	elseif index>sum then
		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : index越界了兄弟")
		return -1
	end

	--取成List
	local tempList = {}
	for i=1,sum do	
		table.insert(tempList, ScriptLib.GetGroupTempValue(context, key..i, {}))
	end

	table.remove(tempList,index)

	--记录长度
	ScriptLib.ChangeGroupTempValue(context, key.."Size", -1, {})

	--List转回TempValue
	for i=1,sum-1 do
		ScriptLib.SetGroupTempValue(context, key..i, tempList[i], {})
	end

	ScriptLib.SetGroupTempValue(context, key..sum, 0, {})

	return 0
end

function LF_TempValueRemoveByValue( context, key, value )
	local sum = LF_TempValueGetSize( context, key )
	local i = 1


	for i=1,sum do
		if ScriptLib.GetGroupTempValue(context, key..i, {})==value then
			--删一个值
			LF_TempValueRemoveByIndex( context, key, i )

			--i = i - 1
		end
	end

	return 0
end


function LF_GetTempValueByIndex( context, key, index )
	local sum = LF_TempValueGetSize( context, key )
	if index > sum then
		return nil
	end

	return ScriptLib.GetGroupTempValue(context, key..index, {})
end






function LF_TempValueGetSize( context, key )

	return ScriptLib.GetGroupTempValue(context, key.."Size", {})
end



function SLC_Huarongdao_Selecte( context, isSelected)

	--获取当前拼图的configID
	local configID = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })

	if isSelected == 1 then

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : In Select")

		--将所有被踩到的拼图加入缓存区
		local i = LF_TempValueInsert( context, "SelectPlat", configID, true )

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 当前进入的是第 "..i.." 块拼图")

		--如果是第一块进入的拼图
		if i == 1 then
			--设置操作台按键、拼图发光
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, configID, "SGV_HUARONGDAO_MOVE", 1)


			--当前非移动状态则直接设置按键，否则需要在reachpoint时补按键
			if ScriptLib.GetGroupTempValue(context, "PlatInMove",{})==0 then
				ScriptLib.SetWorktopOptionsByGroupId(context, groupID, configID, {OptionID})
			end
		end

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 缓存容量： "..i)


		--测试LOG
		-- for i=1,10 do
		-- 	if ScriptLib.GetGroupTempValue(context, "SelectPlat"..i, {}) == 0 then
		-- 		break
		-- 	else
		-- 		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : AfterInsert Slot "..i.." Value ==== "..ScriptLib.GetGroupTempValue(context, "SelectPlat"..i, {}))
		-- 	end
		-- end

	else

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : Out Select")

		--取消操作台按键，拼图不发光
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, configID, "SGV_HUARONGDAO_MOVE", 0)
		ScriptLib.DelWorktopOptionByGroupId(context, groupID, configID, OptionID)
		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 删除按键，configID = "..configID)

		--将离开范围的拼图移除缓存区
		LF_TempValueRemoveByValue( context, "SelectPlat", configID )

		

		--如果缓存区还有拼图，设置发光和按键

		if ScriptLib.GetGroupTempValue(context, "SelectPlat1", {}) ~= 0 and ScriptLib.GetGroupTempValue(context, "PlatInMove",{})==0 then
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, ScriptLib.GetGroupTempValue(context, "SelectPlat1", {}), "SGV_HUARONGDAO_MOVE", 1)
			ScriptLib.SetWorktopOptionsByGroupId(context, groupID, ScriptLib.GetGroupTempValue(context, "SelectPlat1", {}), {OptionID})
		end


		--测试LOG
		for i=1,10 do
			if ScriptLib.GetGroupTempValue(context, "SelectPlat"..i, {}) == 0 then
				break
			else
				ScriptLib.PrintContextLog(context, "## HRD_LOG2 : AfterInsert Slot "..i.." Value ==== "..ScriptLib.GetGroupTempValue(context, "SelectPlat"..i, {}))
			end
		end
	end


	return 0
end

function action_OptionDown( context,evt )

	--联机下不可使用
	if ScriptLib.CheckIsInMpMode(context) then

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 联机下不可使用")

		ScriptLib.AssignPlayerShowTemplateReminder(context, 165, {param_vec={},param_uid_vec={},uid_vec={context.uid}})

		return 0 
	end


	--板块移动按键，按下后移动板块
	if evt.param2 == OptionID then

		ScriptLib.SetGroupTempValue(context, "PlatInMove",1,{})

		ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 平台移动，ConfigID = "..evt.param1)

		local BlankPoint = LF_GetBlankPoint(context)

		--删除缓存
		local sum = LF_TempValueGetSize( context, "SelectPlat" )

		for i=2,sum do
			ScriptLib.PrintContextLog(context, "## HRD_LOG2 : 按下按键，删除缓存, value = "..ScriptLib.GetGroupTempValue(context, "SelectPlat"..i,{}))
			LF_TempValueRemoveByIndex( context, "SelectPlat", i )
		end


		--清理按键和状态
		for i,v in ipairs(PlatList) do
			--除了被移动的板块，其他板块都清理状态
			if v ~= 0 and v ~= evt.param1 then
				ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 0)
			end
			--移动过程中，所有平台清理按键
			if v ~= 0 then
				ScriptLib.DelWorktopOptionByGroupId(context, groupID, v, OptionID)
			end
		end
		
		ScriptLib.PrintContextLog(context, "## HRD_LOG : Start Move")

		ScriptLib.SetPlatformPointArray(context, evt.param1, ArrayID, {BlankPoint}, {route_type = 0})

		--更新variable列表
		for i=1,9 do
			if ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i) == evt.param1 then

				ScriptLib.SetGroupVariableValue(context, "PlatPoint"..i, 0)

				break
			end
		end

		ScriptLib.SetGroupVariableValue(context, "PlatPoint"..BlankPoint, evt.param1)

		ScriptLib.PrintContextLog(context, "## HRD_LOG : Set Point"..BlankPoint.." to "..evt.param1)

		--提前准备好状态
		LF_SetOption(context)


		--测试LOG
		-- for i=1,9 do

		-- 	ScriptLib.PrintContextLog(context, "## HRD_LOG : Get Point Value Point "..i.." IS "..ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i))
		-- end
		
	elseif evt.param2 == RestartOption then
		--按下重来按键后，恢复到初始图案
		ScriptLib.SetGroupTempValue(context, "PlatInMove",0,{})
		--删除缓存
		local sum = LF_TempValueGetSize( context, "SelectPlat" )

		if sum~= 0 then
			for i= 1,sum do
				LF_TempValueRemoveByIndex( context, "SelectPlat", i )
			end
		end


		for i=1,9 do
			local CurConfigID = ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i)
			ScriptLib.PrintContextLog(context, "## HRD_LOG : Get Point Value Point "..i.." IS "..CurConfigID)
			if CurConfigID~=0 then
				ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, CurConfigID)
			end
			--把初始数据塞回去
			ScriptLib.SetGroupVariableValue(context, "PlatPoint"..i, initPlatList[i])
		end


		--创建散装板块
		for i=1,9 do
			local CurConfigID = ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i)
			ScriptLib.PrintContextLog(context, "## HRD_LOG : Get Point Value Point "..i.." IS "..CurConfigID)
			if CurConfigID~=0 then
				ScriptLib.CreateGadgetByConfigIdByPos(context, CurConfigID, PointList[i].pos, PointList[i].rot)
			end
		end
		LF_SetPlatState(context, 0)
		LF_SetOption(context)
	elseif evt.param2 == successOptionID then
		--按下任务流转按键
		--任务进度流转，关卡进度流转
		ScriptLib.AddQuestProgress(context, "7227622")
		ScriptLib.SetGroupVariableValue(context, "stageflag", 1)
		ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 3)

		--删除操作台按键
		ScriptLib.DelWorktopOptionByGroupId(context, groupID, operatorConfigID, successOptionID)

		--删除底板、参照板、散装板
		ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, baseConfigID )
		ScriptLib.RemoveEntityByConfigId(context, groupID, EntityType.GADGET, referenceConfigID )
		ScriptLib.RemoveExtraGroupSuite(context, groupID, 2)

		--创建完整板
		ScriptLib.CreateGadget(context, { config_id = borderConfigID })

	end

	return 0 
end

function action_GroupLoad( context, evt)

	ScriptLib.PrintContextLog(context, "## HRD_LOG : Group加载")

	

	ScriptLib.SetGroupTempValue(context, "PlatInMove",0,{})


	--根据任务状态还原
	local uidList = ScriptLib.GetSceneUidList(context)
	if next(uidList)~=nil then
		local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])

		ScriptLib.PrintContextLog(context, "## HRD_LOG : QuestState is "..ScriptLib.GetQuestState(context, avatar_entity, 7227622))

		if ScriptLib.GetQuestState(context, avatar_entity, 7227622) == QuestState.UNFINISHED then
			-- 将本组内变量名为 "stageflag" 的变量设置为 0
			ScriptLib.SetGroupVariableValue(context, "stageflag", 0)
			-- 增加启动按钮
			ScriptLib.SetWorktopOptionsByGroupId(context, 177005076, 76010, {703})

			--加载底板
			ScriptLib.CreateGadget(context, { config_id = 76019 })
			--加载原版参照
			ScriptLib.CreateGadget(context, { config_id = 76021 })

			-- 卸载完整华容道
			ScriptLib.RemoveEntityByConfigId(context, 177005076, EntityType.GADGET, 76018 )

			-- 添加suite2的所有内容
			ScriptLib.AddExtraGroupSuite(context, 177005076, 2)
			-- 将本组内变量名为 "stageflag" 的变量设置为 0
			ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 2)
		end
	end

	
	ScriptLib.PrintContextLog(context, "## HRD_LOG : 重载后PUZZLEFLAG = "..ScriptLib.GetGroupVariableValue(context, "PuzzleFlag"))

	--根据玩法状态创建板块
	if ScriptLib.GetGroupVariableValue(context, "PuzzleFlag")==1 or ScriptLib.GetGroupVariableValue(context, "PuzzleFlag")==2 then
		--创建散装板块
		for i=1,9 do
			local CurConfigID = ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i)
			ScriptLib.PrintContextLog(context, "## HRD_LOG : Get Point Value Point "..i.." IS "..CurConfigID)
			if CurConfigID~=0 then
				ScriptLib.CreateGadgetByConfigIdByPos(context, CurConfigID, PointList[i].pos, PointList[i].rot)
			end
		end

		--根据玩法状态设置平台状态
		if ScriptLib.GetGroupVariableValue(context, "PuzzleFlag") == 1 then
			--重设状态，开启按键
			LF_SetPlatState(context, 0)
			LF_SetOption(context)
		end
		



	--LD在WQ中处理了
	-- elseif ScriptLib.GetGroupVariableValue(context, "PuzzleFlag")>2 then
	-- 	--创建整体板块
	-- 	ScriptLib.CreateGadget(context, { config_id = borderConfigID })

	end


	--删除缓存
	local sum = LF_TempValueGetSize( context, "SelectPlat" )

	ScriptLib.PrintContextLog(context, "## HRD_LOG : Group加载, 缓存尺寸为"..sum)

	if sum~= 0 then
		for i= 1,sum do
			LF_TempValueRemoveByIndex( context, "SelectPlat", i )
		end
	end


	return 0
end


--查空point
function LF_GetBlankPoint( context)
	
	for i=1,9 do
		if ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i) == 0 then

			--ScriptLib.PrintContextLog(context, "## HRD_LOG : BlankPoint Is"..i)

			return i
		end
		
	end

end


--查找可移动操作台
function LF_FindMoveablePlat( context)

	local BlankPoint = LF_GetBlankPoint(context)
	local MoveablePlatList = {}

	--在最左列
	if BlankPoint%3 == 1 then
		if BlankPoint - 3 > 0 then
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint - 3)
			table.insert(MoveablePlatList, BlankPoint - 3)
		end
		if BlankPoint + 3 < 10 then
			table.insert(MoveablePlatList, BlankPoint + 3)
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint + 3)
		end

		--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint + 1)
		table.insert(MoveablePlatList, BlankPoint + 1)
	end

	--在最右列
	if BlankPoint%3 == 0 then
		if BlankPoint - 3 > 0 then
			table.insert(MoveablePlatList, BlankPoint - 3)
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint - 3)
		end
		if BlankPoint + 3 < 10 then
			table.insert(MoveablePlatList, BlankPoint + 3)
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint + 3)
		end
		table.insert(MoveablePlatList, BlankPoint - 1)
		--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint - 1)
	end

	--在中列
	if BlankPoint%3 == 2 then
		if BlankPoint - 3 > 0 then
			table.insert(MoveablePlatList, BlankPoint - 3)
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint - 3)
		end
		if BlankPoint + 3 < 10 then
			table.insert(MoveablePlatList, BlankPoint + 3)
			--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint + 3)
		end
		table.insert(MoveablePlatList, BlankPoint + 1)
		--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint + 1)
		table.insert(MoveablePlatList, BlankPoint - 1)
		--ScriptLib.PrintContextLog(context, "## HRD_LOG : Find Moveable Point"..BlankPoint - 1)
	end


	return MoveablePlatList
end


--设置操作台按键
function LF_SetOption(context)
	local MoveablePlatList = LF_FindMoveablePlat( context)

	for i,v in ipairs(MoveablePlatList) do

		local PlatConfigID = ScriptLib.GetGroupVariableValue(context, "PlatPoint"..v)

		ScriptLib.PrintContextLog(context, "## HRD_LOG : SET OPTION, PLATCONFIGID IS  "..PlatConfigID)

		--ScriptLib.SetWorktopOptionsByGroupId(context, groupID, PlatConfigID, {OptionID})

		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatConfigID, 203)
	end

	return 0
end


--设置平台到指定的state
function LF_SetPlatState( context, gadgetState )

	for i,v in ipairs(PlatList) do
		if v ~= 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, gadgetState)
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, v, "SGV_HUARONGDAO_MOVE", 0)
		end
	end

	return 0
end


--成功判定
function CheckPointAndPlat( context)


	for i=1,9 do
		if ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i) ~= PlatList[i] then

			ScriptLib.PrintContextLog(context, "## HRD_LOG : Not Right")

			return false
		end
	end

	ScriptLib.PrintContextLog(context, "## HRD_LOG : Right")

	return true
end


--创建一个开始按键
function action_GadgetStateChange( context,evt )

	--完成第一次碎片提交
	if evt.param2 == offeringConfigID and evt.param1 == 201 then
		ScriptLib.PrintContextLog(context, "## HRD_LOG : set RestartOption ")

		--设置操作台开关显示为——重启玩法
		ScriptLib.SetWorktopOptionsByGroupId(context, groupID, operatorConfigID, {RestartOption})

		--创建散装板块
		for i=1,9 do
			local CurConfigID = ScriptLib.GetGroupVariableValue(context, "PlatPoint"..i)
			ScriptLib.PrintContextLog(context, "## HRD_LOG : Get Point Value Point "..i.." IS "..CurConfigID)
			if CurConfigID~=0 then
				ScriptLib.CreateGadgetByConfigIdByPos(context, CurConfigID, PointList[i].pos, PointList[i].rot)
			end
		end

		--设置玩法状态
		ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 1)


		--设置板块按键
		LF_SetPlatState(context, 0)
		LF_SetOption(context)
	end


	--完成第二次碎片提交 
	if evt.param2 == lastOfferingConfigID and evt.param1 == 201 then
		--切换整版拼图状态
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, completeConfigID, 201)

		--创建中心拼图
		ScriptLib.CreateGadget(context, { config_id = centreConfigID })
		

		--设置玩法状态
		ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 4)

	end


	return 0
end


--移动平台reach point，判定是否成功，重设按键
function action_PlatReachPoint( context,evt )

	ScriptLib.PrintContextLog(context, "## HRD_LOG : reachPoint")
	
	if CheckPointAndPlat(context) == true then
		--设置挑战完成
		ScriptLib.SetWorktopOptionsByGroupId(context, groupID, operatorConfigID, {successOptionID})

		--设置玩法状态
		ScriptLib.SetGroupVariableValue(context, "PuzzleFlag", 2)

		--设置平台状态到201，发光
		LF_SetPlatState(context, 201)

		--创建一次光效
		ScriptLib.CreateGadget(context, { config_id = successConfigID })


	else
		ScriptLib.SetGroupTempValue(context, "PlatInMove",0,{})

		--重新设置操作台按键
		--ScriptLib.PrintContextLog(context, "## HRD_LOG : ReSet Option")
		-- LF_SetOption(context)

		--ScriptLib.PrintContextLog(context, "## HRD_LOG : SGV = "..ScriptLib.GetGadgetAbilityFloatValue(context, groupID, evt.param1, "SGV_HUARONGDAO_MOVE"))
		if  LF_GetTempValueByIndex( context, "SelectPlat", 1 )~=nil then

			ScriptLib.SetWorktopOptionsByGroupId(context, groupID, LF_GetTempValueByIndex( context, "SelectPlat", 1 ), {OptionID})
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, LF_GetTempValueByIndex( context, "SelectPlat", 1 ), "SGV_HUARONGDAO_MOVE", 1)

		end
	end

	return 0
end





function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()
