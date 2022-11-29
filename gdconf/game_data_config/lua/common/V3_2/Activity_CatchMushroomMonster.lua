--[[======================================
||	filename:       Activity_CatchMushroomMonster
||	owner:          chen.chen
||	description:    蕈兽抓捕
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

--[[
local mushroomBeastInfo = 
{
	[1]={configId=85006,maxProgress=300,normal=10,active=20,dieOut=30,patrolRoute={1,2,3,4,5,6}},
	[2]={configId=85007,maxProgress=300,normal=10,active=20,dieOut=30,patrolRoute={7,8,9,10,11,12,13}}
}

local groupInfo =
{
	pointArrayId = 110200025,
}

]]
local globalInfo =
{
	maxProgress=1200,
	empiricalParamOne=0,
	empiricalParamTwo=1,
	fungustype={
		air={26090191,26090291,26090292,26090391},
		ground={26090491,26090591,26090691},
		stretch={26090791,26090891,26090991,26091091},
	}
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_CatchMushroomMonster] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000002, name = "enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
    { config_id = 40000003, name = "leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },
    { config_id = 40000004, name = "platform_arrival", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_ARRIVAL", trigger_count = 0 },
	{ config_id = 40000005, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0},
	{ config_id = 40000006, name = "gallery_start", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START", trigger_count = 0},
	{ config_id = 40000007, name = "gallery_stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_EVENT_GALLERY_STOP", trigger_count = 0},
	{ config_id = 40000008, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0},
	{ config_id = 40000009, name = "group_will_unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD", trigger_count = 0},
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
	
	for k,v in pairs(mushroomBeastInfo) do
		--标记蕈兽是否正在受到惊吓状态
		table.insert(variables,{ config_id=50000000+v.configId,name = v.configId.."isAlert", value = 0})
		--标记蕈兽当前的移动目标位置
		table.insert(variables,{ config_id=52000000+v.configId,name = v.configId.."targetPoint", value = 0})
		--标记蕈兽移动过程的出发位置
		table.insert(variables,{ config_id=53000000+v.configId,name = v.configId.."startPoint", value = 0})
	end
	table.insert(variables,{ config_id=51000000,name = "has_succeeded", value = 0, no_refresh = true})
	
    return 0
end

--判断是那种类型的蕈兽
function LF_GetFungusType(context,monsterId)
	for i=1,#globalInfo.fungustype.air do
		if globalInfo.fungustype.air[i]==monsterId then
			return 1
		end
	end
	for i=1,#globalInfo.fungustype.ground do
		if globalInfo.fungustype.ground[i]==monsterId then
			return 2
		end
	end
	for i=1,#globalInfo.fungustype.stretch do
		if globalInfo.fungustype.stretch[i]==monsterId then
			return 3
		end
	end
	return 0
end

--设置蕈兽路径
function LF_SetFungusRoute(context,fungusConfigId,pointArrayId,routePoints,route_type)
	local fungusEntityId=ScriptLib.GetEntityIdByConfigId(context, fungusConfigId)
    local fungusMonsterId=ScriptLib.GetMonsterIdByEntityId(context, fungusEntityId)
    local fungusType=LF_GetFungusType(context,fungusMonsterId)
    if fungusType==0 then
    	PrintLog(context, "蕈兽怪物id不在任何分类中")
    elseif fungusType==1 then
    	ScriptLib.SetPlatformPointArray(context, fungusConfigId, pointArrayId, routePoints, { route_type = route_type,speed_level=2 })
    elseif fungusType==2 then
    	ScriptLib.SetPlatformPointArray(context, fungusConfigId, pointArrayId, routePoints, { route_type = route_type,speed_level=1 })
    elseif fungusType==3 then
    	ScriptLib.SetPlatformPointArray(context, fungusConfigId, pointArrayId, routePoints, { route_type = route_type })
    end
	return 0
end

--设置逃跑目标点
function LF_SetAlertBeastTarget(context,inputConfigId)
	for k,v in pairs(mushroomBeastInfo) do
		if v.configId==inputConfigId then
			ScriptLib.SetGroupVariableValue(context, inputConfigId.."isAlert",1)
			local avatarEntity=ScriptLib.GetAvatarEntityIdByUid(context,context.owner_uid)
			PrintLog(context,"avatar entity"..avatarEntity)
			local monsterEid = ScriptLib.GetEntityIdByConfigId(context, inputConfigId)
			local maxDistance=0
			local targetPoint=0
			for a,b in pairs(v.patrolRoute) do
				local tempScore=globalInfo.empiricalParamOne*LF_CalculateXZDistance(context,avatarEntity,b)+globalInfo.empiricalParamTwo*LF_CalculateIntersectionAngle(context,monsterEid,b)
				if tempScore>maxDistance and LF_CheckPointIsValid(context,b,v.configId) then
					maxDistance=tempScore
					targetPoint=b
				end
			end
			if targetPoint~=0 then
				PrintLog(context,"逃逸目标点"..targetPoint)
				if ScriptLib.GetGroupVariableValue(context, v.configId.."targetPoint") ~= targetPoint then
					LF_SetFungusRoute(context,inputConfigId,groupInfo.pointArrayId,{targetPoint},0)
					ScriptLib.SetGroupVariableValue(context, v.configId.."targetPoint",targetPoint)
				end
			end
		end
	end
	return 0
end

--检测点是否合法
--1.目标点距离蕈兽位置必须有一定距离，暂定大于5
--2.目标点距离玩家位置也需要有一定距离，暂定大于7
function LF_CheckPointIsValid(context,pointId,fungusConfigId)
	local isValid=true
	if ScriptLib.GetGroupVariableValue(context, fungusConfigId.."startPoint") == pointId then
		isValid=false
	end
	if ScriptLib.GetGroupVariableValue(context, fungusConfigId.."targetPoint") ~= 0 then
		return isValid
	end
	local fungusEntityId = ScriptLib.GetEntityIdByConfigId(context, fungusConfigId)
	local avatarEntity=ScriptLib.GetAvatarEntityIdByUid(context,ScriptLib.GetSceneOwnerUid(context))
	if LF_CalculateXZDistance(context,fungusEntityId,pointId) <= 5 then
		isValid=false
	end
	if LF_CalculateXZDistance(context,avatarEntity,pointId) <= 7 then
		isValid=false
	end

	return isValid
end

--规划一条新路径
function LF_CreateNewRoute(context,inputConfigId,inputPoint)
	for k,v in pairs(mushroomBeastInfo) do
		if v.configId==inputConfigId then
			for i=1, #v.patrolRoute do
				if v.patrolRoute[i]==inputPoint then
					local newRoute={}
					for j=i+1,#v.patrolRoute do
						table.insert(newRoute, v.patrolRoute[j])
					end
					for k=1,i do
						table.insert(newRoute, v.patrolRoute[k])
					end
					LF_SetFungusRoute(context,inputConfigId,groupInfo.pointArrayId,newRoute,2)
					break
				end
			end
		end
	end
	
	return 0
end

--计算两entity的XZ平面距离
function LF_CalculateXZDistance(context,entityId,pointId,entityIdTwo)
	local pos1=ScriptLib.GetPosByEntityId(context, entityId)
	local pos2={}
	if pointId~=0 then
		local arrayPointRet,arrayPointPos,arrayPointRot=ScriptLib.GetPlatformArrayInfoByPointId(context, groupInfo.pointArrayId, pointId)
		pos2={x=arrayPointPos.x,y=arrayPointPos.y,z=arrayPointPos.z}
	else
		pos2=ScriptLib.GetPosByEntityId(context, entityIdTwo)
	end
	local distance=math.sqrt((pos1.x-pos2.x)*(pos1.x-pos2.x)+(pos1.z-pos2.z)*(pos1.z-pos2.z))
	return distance
end

--计算蕈兽指向玩家向量和指向路点向量的夹角
function LF_CalculateIntersectionAngle(context,fungusEntityId,pointId)
	local angle=0
	local avatarEntityId=ScriptLib.GetAvatarEntityIdByUid(context,ScriptLib.GetSceneOwnerUid(context))
	local fungusPos=ScriptLib.GetPosByEntityId(context, fungusEntityId)
	local avatarPos=ScriptLib.GetPosByEntityId(context, avatarEntityId)
	local arrayPointRet,arrayPointPos,arrayPointRot=ScriptLib.GetPlatformArrayInfoByPointId(context, groupInfo.pointArrayId, pointId)
	local pointPos={x=arrayPointPos.x,y=arrayPointPos.y,z=arrayPointPos.z}
	--蕈兽指向玩家
	local vectorOne={x=avatarPos.x-fungusPos.x,y=avatarPos.y-fungusPos.y,z=avatarPos.z-fungusPos.z}
	--蕈兽指向目标点
	local vectorTwo={x=pointPos.x-fungusPos.x,y=pointPos.y-fungusPos.y,z=pointPos.z-fungusPos.z}
	return LF_CalculateXZRotate(context,vectorOne.x,vectorOne.y,vectorTwo.x,vectorTwo.y)
end

--计算XZ平面上两个向量的夹角
function LF_CalculateXZRotate(context,x1,y1,x2,y2)
	local cos=(x1*x2+y1*y2)/(math.sqrt(x1*x1+y1*y1)*math.sqrt(x2*x2+y2*y2))
	local rotate=math.deg(math.acos(cos))
	local output=math.abs(180-(180-rotate)%360)
	--PrintLog(context, "计算夹角"..output)
	return output
end

--蕈兽是否存活
function LF_MonsterIsAlive(context,configId)
	local monsterList=ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)
	--PrintLog(context,"存活怪物数量："..#monsterList)
	for _,v in pairs(monsterList) do
		if v==configId then
			return true
		end
	end
	return false
end

--判断蕈兽是否在圈内
function LF_IsFungusInRegion(context,configId,regionId)
	local region={}
	for i = 1, #regions do
        if regions[i].config_id == regionId then 
            region = regions[i]
            break
        end
    end
    local monster_eid = ScriptLib.GetEntityIdByConfigId(context, configId)
	local pos1 = ScriptLib.GetPosByEntityId(context, monster_eid)
	local X = pos1.x - region.pos.x
	local Y = pos1.y - region.pos.y
	local Z = pos1.z - region.pos.z
    
	if region.shape == RegionShape.SPHERE then
		if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
			return true
		else 
			return false
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
			return false
		else
			return true
		end
	end
	PrintLog(context, "蕈兽出圈判定逻辑错误")
	return false
end

--获取蕈兽的monsterid
function LF_GetFungusMonsterId(context,configId)
	for k,v in pairs(monsters) do
		if v.config_id==configId then
			return v.monster_id
		end
	end
	return 0
end

--初始化蕈兽行为
function LF_InitFungusBehaviour(context,v)
	local fungusMonsterId=LF_GetFungusMonsterId(context,v.configId)
	local isCaptured=ScriptLib.IsFungusCaptured(context, ScriptLib.GetSceneOwnerUid(context) ,fungusMonsterId)
	PrintLog(context, "查询蕈兽捕捉情况："..v.configId.."|"..tostring(isCaptured))
	if isCaptured==0 then
		--ScriptLib.KillEntityByConfigId(context, { config_id = v.configId,entity_type=EntityType.MONSTER })
		ScriptLib.CreateMonster(context, {config_id=v.configId, delay_time=0, server_global_value={["SGV_MushroomMonster_Alert"]=0}})
	elseif isCaptured==-1 then
		PrintLog(context,"查询蕈兽捕捉失败："..v.configId)
	end
	if LF_MonsterIsAlive(context,v.configId) then
		ScriptLib.SetGroupVariableValue(context, v.configId.."isAlert",0)
		ScriptLib.SetGroupVariableValue(context, v.configId.."targetPoint",0)
		ScriptLib.SetGroupVariableValue(context, v.configId.."startPoint",0)
		--7.28迭代，不寻路
		--LF_SetFungusRoute(context,v.configId,groupInfo.pointArrayId,v.patrolRoute,2)
	end
	return 0
end

--判断是否所有蕈兽都已被捕捉
function LF_AFungusCatched(context)
	local allBeastsDead=true
	for k,v in pairs(mushroomBeastInfo) do
		if LF_MonsterIsAlive(context,v.configId) then
			allBeastsDead=false
			break
		end
	end
	return allBeastsDead
end

function LF_GallerySuccess(context)
	ScriptLib.StopGallery(context,defs.gallery_id,false)
	ScriptLib.SetGroupVariableValue(context, "has_succeeded",1)
	--20220916，时序问题交给服务器处理了
	--ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
	return 0
end

------ Server Lua Call Functions -----------
--使用E技能的SLC，埋点用
function SLC_AvatarUseCatchWidget(context)
	--埋点
	ScriptLib.MarkGroupLuaAction(context, "FungusFighter_4",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {})
	return 0
end

--怪物受惊，通知group开始逃跑
function SLC_MushroomMonsterAlert(context)
	PrintLog(context,"蕈兽受到惊吓")
	--进入惊吓状态
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	--local beast = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_MushroomMonster_Alert", 1)
	LF_SetAlertBeastTarget(context,beast)
	return 0
end

--怪物被打到，通知加分
function SLC_MushroomMonsterCatch(context,param1)
	PrintLog(context,"蕈兽被命中")
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	--local beast = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	--ScriptLib.ChangeGroupVariableValue(context, beast.."progress", 100)
	local maxProgress=globalInfo.maxProgress
	local addProgress=-1
	local monsterId=ScriptLib.GetMonsterIdByEntityId(context, context.source_entity_id)
	--埋点
	local isFinished=0
	if monsterId~=nil then
		PrintLog(context,"蕈兽monsterid"..monsterId)
	else
		PrintLog(context,"蕈兽monsterid为空")
	end
	local curProgress=ScriptLib.GetGalleryProgressScore(context,tostring(monsterId),defs.gallery_id) 
	--数据校验
	if curProgress==-1 then
		PrintLog(context,"蕈兽抓捕值获取失败")
		return 0
	end
	for k,v in pairs(mushroomBeastInfo) do
		if v.configId==beast then
			if param1==0 then
				addProgress=v.normal
			elseif param1==1 then
				addProgress=v.active
			elseif param1==2 then
				addProgress=v.dieOut
			else
				PrintLog(context,"蕈兽三态获取失败")
			end
			break
		end
	end
	
	--尝试结算gallery
	if curProgress+addProgress >= maxProgress then
		if ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["group_id"]=base_info.group_id,["config_id"]=beast})==0 then
			PrintLog(context,"蕈兽抓捕结果成功")
			ScriptLib.AddGalleryProgressScore(context, tostring(monsterId), defs.gallery_id, addProgress)
			ScriptLib.KillEntityByConfigId(context, { config_id = beast,entity_type=EntityType.MONSTER })
			PrintLog(context,"kill蕈兽成功")
			--看下是不是所有蕈兽都抓住了
			if LF_AFungusCatched(context) then
				isFinished=1
				--埋点
				ScriptLib.MarkGroupLuaAction(context, "FungusFighter_2",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {["monster_id"] = monsterId,["cur_progress"]=curProgress+addProgress,["total_progress"]=maxProgress,["is_finish"]=isFinished})
				LF_GallerySuccess(context)
				return 0
			end
			--埋点
			ScriptLib.MarkGroupLuaAction(context, "FungusFighter_2",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {["monster_id"] = monsterId,["cur_progress"]=curProgress+addProgress,["total_progress"]=maxProgress,["is_finish"]=isFinished})
			return 0
		else
			PrintLog(context,"蕈兽抓捕结果上传失败")
		end
	else
		ScriptLib.AddGalleryProgressScore(context, tostring(monsterId), defs.gallery_id, addProgress)
		PrintLog(context,"分值"..curProgress+addProgress.."/"..maxProgress)
		--埋点
		ScriptLib.MarkGroupLuaAction(context, "FungusFighter_2",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {["monster_id"] = monsterId,["cur_progress"]=curProgress+addProgress,["total_progress"]=maxProgress,["is_finish"]=isFinished})
		return 0
	end
	return 0
end

------ conditions & actions ------
--活动结束保底
function action_EVENT_GROUP_WILL_UNLOAD(context, evt)
	if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
		ScriptLib.StopGalleryByReason(context,defs.gallery_id,5)
	end
	local hostUid=ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.EndTimeAxis(context,"itemCheck")
	ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
	ScriptLib.RevokePlayerShowTemplateReminder(context, 204, {hostUid})
	return 0
end
--group加载
function action_EVENT_GROUP_LOAD(context, evt)
    PrintLog(context, "group load")
	if ScriptLib.CheckIsInMpMode(context) or ScriptLib.GetGroupVariableValue(context, "has_succeeded") == 1 then
		PrintLog(context,"联机模式或玩法已完成，玩法不做初始化")
		return 0
	else
		for k,v in pairs(mushroomBeastInfo) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, v.configId)
			LF_InitFungusBehaviour(context,v)
		end
	end
	ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
    --把region加起来
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	--保护逻辑，检测蕈兽出圈刷新,同时也处理蕈兽的寻路目标问题
	ScriptLib.InitTimeAxis(context,"fungusCheck",{1},true)
    return 0
end

--玩家进入玩法区域
function action_EVENT_ENTER_REGION(context, evt)
	PrintLog(context, "enter play region")
	if evt.param1 ~= defs.play_region then
		return 0
	end
	if ScriptLib.CheckIsInMpMode(context) then
		PrintLog(context,"联机模式下，进圈不开gallery")
		ScriptLib.ShowReminder(context, 400211)
		return 0
	end
	--进圈的不是主机，就啥也不干
	if context.uid~=ScriptLib.GetSceneOwnerUid(context) then
		return 0
	end
	--增补，如果玩法已完成，则不再开启玩法
	if ScriptLib.GetGroupVariableValue(context, "has_succeeded") == 1 then
		PrintLog(context,"玩法已完成，玩法不做初始化")
		return 0
	end
	--主机进圈，开gallery
	if not ScriptLib.IsGalleryStart(context,defs.gallery_id) then
		if (ScriptLib.SetPlayerStartGallery(context, defs.gallery_id, {ScriptLib.GetSceneOwnerUid(context)}) ~= 0) then
        	return 0
    	end
    	for k,v in pairs(mushroomBeastInfo) do
			local monsterId=LF_GetFungusMonsterId(context,v.configId)
    		if LF_MonsterIsAlive(context,v.configId)==false then
				ScriptLib.InitGalleryProgressWithScore(context, tostring(monsterId), defs.gallery_id, {0,globalInfo.maxProgress},globalInfo.maxProgress, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_DIG,GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NONE)
    			PrintLog(context, "怪物："..v.configId.."已捕获")
			else
				ScriptLib.InitGalleryProgressWithScore(context, tostring(monsterId), defs.gallery_id, {0,globalInfo.maxProgress},0, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_DIG,GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NONE)
				PrintLog(context, "怪物："..v.configId.."未捕获")
    		end
    	end	
	end
	--看下是不是所有蕈兽都抓住了,是的话刷新一次结算
	if LF_AFungusCatched(context) then
		LF_GallerySuccess(context)
	end
	return 0
end

--玩家离开玩法区域
function action_EVENT_LEAVE_REGION(context, evt)
	if evt.param1 ~= defs.exit_region then
		return 0
	end
	PrintLog(context, "leave play region")
	--出圈的不是主机，就啥也不干
	if context.uid~=ScriptLib.GetSceneOwnerUid(context) then
		return 0
	end
	if ScriptLib.GetGroupVariableValue(context, "has_succeeded") ~= 1 then
		--埋点
		ScriptLib.MarkGroupLuaAction(context, "FungusFighter_3",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {})
	end
	if ScriptLib.IsGalleryStart(context,defs.gallery_id) then
		ScriptLib.StopGalleryByReason(context,defs.gallery_id,5)
	end
	return 0
end

--蕈兽到达路点 evt.param3:点阵的点
function action_EVENT_PLATFORM_ARRIVAL(context, evt)
	PrintLog(context, "platform arrival")
	if ScriptLib.GetGroupVariableValue(context, evt.param1.."isAlert") == 1 then
		ScriptLib.SetGroupVariableValue(context, evt.param1.."isAlert",0)
		ScriptLib.SetGroupVariableValue(context, evt.param1.."startPoint",ScriptLib.GetGroupVariableValue(context, evt.param1.."targetPoint"))
		ScriptLib.SetGroupVariableValue(context, evt.param1.."targetPoint",0)
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_MushroomMonster_Alert", 0)
		--分配新路径,7.28迭代，暂不分配新路径
		--LF_CreateNewRoute(context,evt.param1,evt.param3)
	end
	return 0
end

--时间轴处理tick逻辑
function action_EVENT_TIME_AXIS_PASS(context, evt)
	if evt.source_name=="itemCheck" then
		local hostUid=ScriptLib.GetSceneOwnerUid(context)
		--如果没装小道具且没显示，提示
		if (not ScriptLib.IsWidgetEquipped(context, hostUid, 220073)) and ScriptLib.GetGroupTempValue(context,"templateReminderShow",{})==0 then
			PrintLog(context, "提示装小道具")
			ScriptLib.AssignPlayerShowTemplateReminder(context,204,{param_uid_vec={},param_vec={},uid_vec={hostUid}})
            ScriptLib.SetGroupTempValue(context,"templateReminderShow",1,{})
		end
		--如果装了小道具且正在显示，去掉提示
		if ScriptLib.IsWidgetEquipped(context, hostUid, 220073) and ScriptLib.GetGroupTempValue(context,"templateReminderShow",{})==1 then
			PrintLog(context, "下掉提示装小道具")
			ScriptLib.RevokePlayerShowTemplateReminder(context, 204, {hostUid})
			ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
		end
	end
	--检测蕈兽是否出圈
	if evt.source_name=="fungusCheck" then
		--检测受惊蕈兽的逃跑目标点
		for k,v in pairs(mushroomBeastInfo) do
			if ScriptLib.GetGroupVariableValue(context, v.configId.."isAlert") == 1 then
				local fungusEntityId = ScriptLib.GetEntityIdByConfigId(context, v.configId)
				local avatarEntity=ScriptLib.GetAvatarEntityIdByUid(context,ScriptLib.GetSceneOwnerUid(context))
				--只有周围有人的时候才尝试修改位置
				if LF_CalculateXZDistance(context,fungusEntityId,0,avatarEntity) <= 5 then
					LF_SetAlertBeastTarget(context,v.configId)
				end	
			end
		end
		--检测蕈兽出界
		for k,v in pairs(mushroomBeastInfo) do
			if LF_MonsterIsAlive(context,v.configId) then
				if LF_IsFungusInRegion(context,v.configId,defs.play_region)==false then
					PrintLog(context, "蕈兽出界重置:"..v.configId)
					--ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.MONSTER, v.configId)
					--LF_InitFungusBehaviour(context,v)
					ScriptLib.KillEntityByConfigId(context, { config_id = v.configId,entity_type=EntityType.MONSTER })
				end
			end
		end
	end
	return 0
end

function action_EVENT_GALLERY_START(context, evt)
	PrintLog(context, "event gallery start")
	--埋点
	ScriptLib.MarkGroupLuaAction(context, "FungusFighter_1",ScriptLib.GetGalleryTransaction(context, defs.gallery_id) , {})
	--起提醒用的时间轴
	ScriptLib.InitTimeAxis(context,"itemCheck",{1},true)
	return 0
end

function action_EVENT_GALLERY_STOP(context, evt)
	PrintLog(context, "event gallery stop")
	--关时间轴
	local hostUid=ScriptLib.GetSceneOwnerUid(context)
	ScriptLib.EndTimeAxis(context,"itemCheck")
	ScriptLib.SetGroupTempValue(context,"templateReminderShow",0,{})
	ScriptLib.RevokePlayerShowTemplateReminder(context, 204, {hostUid})
	return 0
end

function action_EVENT_ANY_MONSTER_DIE(context, evt)
	PrintLog(context, "monster die")
	--如果蕈兽意外死亡，重置一下
	for k,v in pairs(mushroomBeastInfo) do
		if v.configId==evt.param1 then
			LF_InitFungusBehaviour(context,v)
		end
	end
	return 0
end

LF_Initialize_Level()
