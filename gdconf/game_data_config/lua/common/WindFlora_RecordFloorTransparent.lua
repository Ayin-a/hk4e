local TempTrigger = {
    { name = "Timer_Event_SwitchToVisible", config_id = 860010, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "SwitchToVisible", condition = "", action = "action_Visible_Floor", trigger_count = 0 },
    { name = "Timer_Event_SwitchToPreVisible", config_id = 860011, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "SwitchToPreVisible", condition = "", action = "action_PreVisible_Floor", trigger_count = 0 },
    { name = "Timer_Event_SwitchToInvisible", config_id = 860012, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "SwitchToInvisible", condition = "", action = "action_Invisible_Floor", trigger_count = 0 },
    { name = "Timer_Event_ShowFlower", config_id = 860013, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "ShowFlower", condition = "", action = "action_Show_Flower", trigger_count = 0 },
    { name = "Timer_Event_CloseFlower", config_id = 860014, event = EventType.EVENT_TIME_AXIS_PASS,
      source = "CloseFlower", condition = "", action = "action_Close_Flower", trigger_count = 0 },
    { name = "ENTER_REGION_Fall", config_id = 860020, event = EventType.EVENT_ENTER_REGION,
      source = "", condition = "condition_ENTER_REGION_Fall", action = "action_ENTER_REGION_Fall", trigger_count = 0,forbid_guest = false },
    { name = "ENTER_REGION_Over", config_id = 860021, event = EventType.EVENT_ENTER_REGION,
      source = "", condition = "", action = "action_ENTER_REGION_Over", trigger_count = 0,forbid_guest = false },
    { name = "gallery_stop", config_id = 860022, event = EventType.EVENT_GALLERY_STOP,
      source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },
    { name = "GM_Mode", config_id = 860030, event = EventType.EVENT_VARIABLE_CHANGE,
      source = "Start", condition = "", action = "action_GM_Mode", trigger_count = 0 }
}

local Enum ={
    FallNum = "fall_down_darkfloor",
    TimeEnterRegion = "get_destination_darkfloor"
}

-- ==============初始化代码声明=============

function LF_Initialize_Level()
    for i, v in ipairs(TempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end
    local var = { config_id=50000001,name = "suite_index", value = 0, no_refresh = false }
    variables[var.name] = var
    var = { config_id=50000002,name = "Start", value = 0, no_refresh = false }
    variables[var.name] = var

    -- Gadget种花
    for j = 1, defs.FlowerNumRange.max, 1 do
        gadgets[20000 + j] = { config_id = 20000 + j, gadget_id = defs.FlowerGadgetID,
                               pos = { x = 0.000, y = 0.000, z = 0.000 },
                               rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
    end

    -- 初始化时间轴序列
end

-- 隐藏地板
function action_Invisible_Floor(context, evt)
   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Pre Set All Floor To Invisible")
    local suiteIndex = ScriptLib.GetGroupTempValue(context, "FloorSuites_Index", {})

    --ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Invisible suiteIndex[1]:" .. suiteIndex)
    local gadget_list = suites[suiteIndex].gadgets

   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Invisible gadget_list[1]:" .. gadget_list[1])
    for k, v in ipairs(gadget_list) do
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, v, 901) then
           -- ScriptLib.PrintContextLog(context, "## TD_ErrorLog : cid -> " .. v .. " | gadgetState -> " .. 901)
        end
    end
   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Have Set All Floor To Invisible")
    return 0
end

-- 提前显示地板
function action_PreVisible_Floor(context, evt)

    local oldShowGadgets = GetRandomGadgetIDList(context, "preShowGadgets")
    -- 处理随机结果
    for k, v in ipairs(oldShowGadgets) do
        if v > 0 then
            ScriptLib.SetGadgetStateByConfigId(context, v, 901)
        end
    end

    local preShowGadgets = SetRandomGadgetIDList(context, "preShowGadgets")
    -- 处理随机结果
    for k, v in ipairs(preShowGadgets) do
        if v > 0 then
            ScriptLib.SetGadgetStateByConfigId(context, v, 902)
        end
    end
    return 0
end

function SetRandomGadgetIDList(context, arrayName)
    local suiteIndex = ScriptLib.GetGroupTempValue(context, "FloorSuites_Index", {})

    local currentGadgets = {}
    for k, v in ipairs(suites[suiteIndex].gadgets) do
        currentGadgets[k] = v
    end

    -- 确定随机数量
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomNum = math.random(defs.PreVisibleFloorNumRange.min, defs.PreVisibleFloorNumRange.max)

    -- 获取提前展示的Gadgets列表
    local preShowGadgets = {}
    for i = 1, defs.PreVisibleFloorNumRange.max do
        if i <= randomNum then
            local randomIndex = math.random(1, #currentGadgets)
            table.insert(preShowGadgets, currentGadgets[randomIndex])
            table.remove(currentGadgets, randomIndex)
        else
            table.insert(preShowGadgets, 0)
        end
    end

    for k, v in ipairs(preShowGadgets) do
        ScriptLib.SetGroupTempValue(context, arrayName .. k, v, {})
    end

    return preShowGadgets
end

function GetRandomGadgetIDList(context, arrayName)
    local preShowGadgets = {}
    for i = 1, defs.PreVisibleFloorNumRange.max do
        local gadgetId = ScriptLib.GetGroupTempValue(context, arrayName .. i, {})
        table.insert(preShowGadgets, gadgetId)
    end
    return preShowGadgets
end


-- 显示地板
function action_Visible_Floor(context, evt)
  --  ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Pre Set All Floor To Visible")
    local suiteIndex = ScriptLib.GetGroupTempValue(context, "FloorSuites_Index", {})

   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Visible suiteIndex[1]:" .. suiteIndex)
    local gadget_list = suites[suiteIndex].gadgets

   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Visible gadget_list[1]:" .. gadget_list[1])

    for k, v in ipairs(gadget_list) do
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, v, 902) then
          --  ScriptLib.PrintContextLog(context, "## TD_ErrorLog : cid -> " .. v .. " | gadgetState -> " .. 902)
        end
    end
    ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Have Set All Floor To Visible")

    return 0
end

-- 显示花花
function action_Show_Flower(context, evt)
    -- 出随机数
    local suiteIndex = ScriptLib.GetGroupTempValue(context, "FloorSuites_Index", {})
    local currentGadgets = {}
    for k, v in ipairs(suites[suiteIndex].gadgets) do
        currentGadgets[k] = v
    end
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomNum = math.random(defs.FlowerNumRange.min, defs.FlowerNumRange.max)
    local posInfoList = {}
    for i = 1, randomNum, 1 do
        local randomIndex = math.random(1, #currentGadgets)
        local tempPos = gadgets[currentGadgets[randomIndex]].pos
        local posInfo = { pos = { x = tempPos.x, y = tempPos.y + defs.FlowerHeight, z = tempPos.z },
                          rot = gadgets[currentGadgets[randomIndex]].rot }
        table.insert(posInfoList, posInfo)
        table.remove(currentGadgets, randomIndex)
    end

    -- 根据ConfigIdList寻找在对应位置创生花朵
    for j = 1, #posInfoList, 1 do
        ScriptLib.CreateGadgetByConfigIdByPos(context, 20000 + j, posInfoList[j].pos, posInfoList[j].rot)
    end

    -- 保存随机结果
    ScriptLib.SetGroupTempValue(context, "randomFlowerNum", randomNum, {})

    return 0
end

-- 删除各种花
function action_Close_Flower(context, evt)
    local randomNum = ScriptLib.GetGroupTempValue(context, "randomFlowerNum", {})
   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : randomNum :" .. randomNum)
    for j = 1, randomNum, 1 do
        if 0 ~= ScriptLib.GetEntityIdByConfigId(context, 20000 + j) then
            ScriptLib.RemoveEntityByConfigId(context, defs.GroupID, EntityType.GADGET, 20000 + j)
        end
    end

    return 0
end

function StartGallery(context, prev_context, activeStage)
    ScriptLib.PrintContextLog(context, "## ================ INITIALIZE 33 ==============")

    --初始化地板
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local randomIdx = math.random(1, #defs.FloorSuites)
    local floorTimeAxis_Index = math.random(1, #defs.FloorTimeAxis)

    -- QA用测试接口
    local tempFloorSuitesIndex = ScriptLib.GetFleurFairMultistagePlayGalleryTempValue(context,defs.MainGroupID,1,"6001_FLOORSUITESINDEX")
    --ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : QASet tempFloorSuitesIndex" .. tempFloorSuitesIndex)
    if tempFloorSuitesIndex > 0 and tempFloorSuitesIndex <= #defs.FloorSuites then
        randomIdx = tempFloorSuitesIndex
       -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : QACheck randomIdx" .. randomIdx)
    end

    -- 保存临时Value
    ScriptLib.SetGroupTempValue(context, "FloorSuites_Index", defs.FloorSuites[randomIdx], {})


   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : FloorSuites_Index = :" .. defs.FloorSuites[randomIdx])
   -- ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : FloorTimeAxis_Index = :" .. floorTimeAxis_Index)

    -- 启动Group//开启时间轴
    ScriptLib.AddExtraGroupSuite(context, defs.GroupID, defs.FloorSuites[randomIdx])
    ScriptLib.InitTimeAxis(context, "SwitchToInvisible", defs.FloorTimeAxis[floorTimeAxis_Index].InvisibleTimeAxis, false)
    ScriptLib.InitTimeAxis(context, "SwitchToPreVisible", defs.FloorTimeAxis[floorTimeAxis_Index].PreVisibleTimeAxis, false)
    ScriptLib.InitTimeAxis(context, "SwitchToVisible", defs.FloorTimeAxis[floorTimeAxis_Index].VisibleTimeAxis, false)
    ScriptLib.InitTimeAxis(context, "ShowFlower", defs.FlowerBornTimeLine, false)
    ScriptLib.InitTimeAxis(context, "CloseFlower", defs.FlowerDeathTimeLine, false)

	-- 游戏开始时对应地板设置为902
	local gadget_list = suites[defs.FloorSuites[randomIdx]].gadgets
	for k, v in ipairs(gadget_list) do
		if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, v, 902) then
		end
	end

    -- 初始化随机显示地板的TempValue
    InitRandomGadgetID(context, "preShowGadgets")

    ScriptLib.StartGallery(context, defs.GalleryID)

    -- 记录游戏开始时间
    ScriptLib.SetGroupTempValue(context, "GameStartTime", ScriptLib.GetServerTime(context), {})
    --时间轴启动
    return 0
end

function InitRandomGadgetID(context, arrayName)
    local preShowGadgets = {}
    for i = 1, defs.PreVisibleFloorNumRange.max do
        table.insert(preShowGadgets, 0)
    end
    for k, v in ipairs(preShowGadgets) do
        ScriptLib.SetGroupTempValue(context, arrayName .. k, v, {})
    end
end

-- 落下时的传送逻辑
function condition_ENTER_REGION_Fall(context, evt)
    if evt.param1 ~= defs.FallRegionConfigID then
        return false
    end
    -- 判断角色数量不少于1
    if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        return false
    end
    return true
end

function SubController( context, SubSocre, Tag)
	-- 取出要减分数的绝对值
	local absSubScore = math.abs(SubSocre)
	local CurScore = ScriptLib.GetFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid)

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, 0)
	end

	if CurScore >= absSubScore then
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, SubSocre)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, -1 * CurScore)
	end
end

function action_ENTER_REGION_Fall(context, evt)
    --ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : ENTER_REGION_Fall :: context Uid = " .. context.uid .. " evt Uid" .. evt.uid)
    if evt.uid == context.uid then
        ScriptLib.TransPlayerToPos(context,
                { uid_list = { evt.uid }, pos = defs.RevivePoint.pos,
                  radius = defs.RevivePoint.radius, rot = defs.RevivePoint.rot })

        SubController(context, InvisibleFloor_Falling_Deduction, "hit_counts_falldown_6001")
        
        ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, evt.uid, InvisibleFloor_Falling_Deduction)


       if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,evt.uid) == 0 then
       		ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,evt.uid, 1)
       	else
       		ScriptLib.AddSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,evt.uid, 1)
       end
    end
    return 0
end



-- 抵达终点时的逻辑
function action_ENTER_REGION_Over(context, evt)
    if evt.param1 ~= defs.OverRegionConfigID then
        return 0
    end
    if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
        return 0
    end
    if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, evt.uid) ~= 0 then
        return 0
    end

    -- 第一次到达终点判定
    local timeValue = ScriptLib.GetServerTime(context) - ScriptLib.GetGroupTempValue(context, "GameStartTime",{})
    ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.TimeEnterRegion,evt.uid, timeValue)

    -- 处理玩家抵达终点加分
    ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, evt.uid, InvisibleFloor_Clear_Bonus)

    -- stopGallery
    -- 处理是否提前结束游戏
    local UidList = ScriptLib.GetSceneUidList(context)
    local entityCount = 0
    for i,v in ipairs(UidList) do
        if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v) > 0 then
            entityCount = entityCount + 1
        end
    end

    if entityCount >= #UidList then
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Last Trigger context Player ".. context.uid)
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Last Trigger evt Player ".. evt.uid)
        ScriptLib.StopGallery(context, defs.GalleryID, false)
    else
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Trigger context Player ".. context.uid)
        ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : Trigger evt Player ".. evt.uid)
        ScriptLib.FinishFleurFairGalleryStageByUid(context, defs.MainGroupID, 1, context.uid, false)
    end

    return 0
end

-- 游廊结束逻辑
function action_gallery_stop(context, evt)
    -- 游廊结束时，判断是否超时
    -- 未超时则为接满分数

     for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end

    ActionAddEnergy( context )
    
    if evt.param2 == 1 then
        -- 若超时
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", { 0, defs.GroupID })
    else
        ScriptLib.ExecuteGroupLua(context, defs.MainGroupID, "EndPlayStage", { 1, defs.GroupID })
    end
    return 0
end

function ActionAddEnergy( context )
	-- 结算，被命中N次以下的玩家获得加分
	local UidList = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(UidList) do


		ScriptLib.PrintContextLog(context, "## TD_RecordFloorTransparent : FALLDOWN NUM IS "..ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,v))

		ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "collect_energy_6001", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "get_random_flora", v))

		--ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "hit_counts_falldown_6001", v, -5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum,v))

        --是否进入过终点
		if ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v) > 0 then

			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_fall_down_darkfloor", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum, v ))
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_transparten_get_time_6001", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v))

			ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "transparten_get_time_6001", v, ScriptLib.GetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, Enum.TimeEnterRegion, v))

			ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "complete_timelimit_challenge_6001", v, InvisibleFloor_Clear_Bonus)
		else

			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_fall_down_darkfloor", v, -1)
         	ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_transparten_get_time_6001", v, 100)

            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.FallNum, v , -1)
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "transparten_get_time_6001", v, 100)
            ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID,1,Enum.TimeEnterRegion, v , 100)

			ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, defs.MainGroupID, 1, v, InvisibleFloor_Failed_Deduction)
			ScriptLib.SetSceneMultiStagePlayUidValue(context,defs.MainGroupID, 1, "defeated_timelimit_challenge_6001", v, InvisibleFloor_Failed_Deduction)
		end	
	end
end

function action_GM_Mode(context, evt)
    -- GROUP SETVAR 235800006 Start 1
    if 1 == ScriptLib.GetGroupVariableValue(context, "Start") then
        StartGallery(context, context)
    end

    return 0
end

function RemoveFloorSuite(context, prev_context )
    for i=2,#suites do
        ScriptLib.RemoveExtraGroupSuite(context, defs.GroupID, i)
    end
	
	return 0
end

LF_Initialize_Level()
