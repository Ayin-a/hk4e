--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       TitanElevator
||	owner:          zijun.ma
||	description:    泰坦机器人的电梯管理系统
||	LogName:        TD_Elevator
||	Protection:     [Protection]
=======================================]]
--[[
goto -1557 235 2338
group unload 133304011;
group load 133304011
group refresh 133304011 1;
GROUP SETVAR 133304011 1F 1;
GROUP SETVAR 133304011 2F 1;
GROUP SETVAR 133304011 3F 1

GROUP SETVAR 133304011 1F 0;
GROUP SETVAR 133304011 2F 0;
GROUP SETVAR 133304011 3F 0
--]]

--[[
local LevelInfo = {
    ELCid = defs.gadget_ELCid,
    GearCidList = { defs.gadget_GearCid01,defs.gadget_GearCid02,defs.gadget_GearCid03 }, -- defs.GearCid//务必按照电梯最底层排序到电梯最上层
    GearIDList = { 780, 781, 782}, -- defs.GearId//对应去操作台第几层,ID不准重复
    PassVarList = {"1F","2F","3F"}, -- 对应电梯是否解锁
    RouteList = {
        [1] = {
            [1] = 0,
            [2] = 330400003,
            [3] = 330400013,
        },
        [2] = {
            [1] = 330400004,
            [2] = 0,
            [3] = 330400011,
        },
        [3] = {
            [1] = 330400014,
            [2] = 330400012,
            [3] = 0,
        },
    }
}
--]]

local VarInfo = {
    -- 值String
    CurStep = "CurPlayStep",
    CurELPos = "CurELPos",
    TargetPos = "TargetPos",
}

local PlayStep = {
    Init = 0, -- 电梯无目标。操作台可用。
    Come = 1, -- 操作台不可用。（End状态下可能会进入）
    Wait = 2, -- 电梯有目标，玩家进入后Start。操作台可用。
    Start = 3, -- 电梯有目标。操作台不可用。抵达楼层后进入End。
}
local ObjState = {
    Elevator = { Deactivate = 0, Active = 201, Check = 202 },
    Switch = {Deactivate = 0, Active = 201, Runing = 202}
}

local Tri_TitanElevator = {
    -- 检查Event
    { keyWord = "GadgetCheck",event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    -- GroupLoad
    { keyWord = "ELInit",event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    -- 电梯抵达
    { keyWord = "ELReach", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", trigger_count = 0},
    -- 电梯开始移动时
    { keyWord = "ELMove", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    -- 按钮
    { keyWord = "PressButton", event = EventType.EVENT_SELECT_OPTION, source = "", trigger_count = 0},
    -- 电梯Key改变时
    { keyWord = "PassChange", event = EventType.EVENT_VARIABLE_CHANGE, source = "", trigger_count = 0},
}

function LF_Initialize_TitanElevator()
    local startConfigID = 50020001
    for _,v in pairs(Tri_TitanElevator) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        v.condition = ""
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end
    LF_InsertTriggers(Tri_TitanElevator,{1})

    local var = { config_id= 50020101, name = VarInfo.CurStep, value = 0, no_refresh = false }  -- 步骤计数器
    variables[var.name] = var
    local var = { config_id= 50020102, name = VarInfo.CurELPos, value = 1, no_refresh = false }  -- 电梯层数
    variables[var.name] = var
    local var = { config_id= 50020103, name = VarInfo.TargetPos, value = 0, no_refresh = false }  -- 电梯层数
    variables[var.name] = var

    return 0
end

function action_GadgetCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_Elevator  GadgetCheck| configID = " .. evt.param2 .. " 的状态被修改为" .. evt.param1 )
    return 0
end

-- GroupLoad
function action_ELInit(context,evt)
    ScriptLib.SetGroupVariableValue(context, VarInfo.TargetPos, 0)
    ScriptLib.SetGroupVariableValue(context, VarInfo.CurELPos, 1)
    LF_SetPlayStep(context,PlayStep.Init,"action_ELInit")
    LF_SetAllELOption(context)
    return 0
end

-- EVENT_PLATFORM_ARRIVAL
function action_ELReach(context,evt)

    if LevelInfo.ELCid ~= evt.param1 then
        return 0
    end

    if LF_CheckPlayStep(context,{PlayStep.Come},"action_ELReach 01") then
        LF_SetPlayStep(context,PlayStep.Wait,"action_ELReach 02")
        -- 电梯进入检查模式
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.ELCid, ObjState.Elevator.Check)
        -- 操作台全启
        LF_SetAllELOption(context)
        return 0
    end

    if LF_CheckPlayStep(context,{PlayStep.Start},"action_ELReach 02") then
        LF_SetPlayStep(context,PlayStep.Init,"action_ELReach 02")
        -- 电梯静默
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.ELCid, ObjState.Elevator.Deactivate)
        -- 操作台全启
        LF_SetAllELOption(context)
        return 0
    end

    return 0
end

-- EVENT_GADGET_STATE_CHANGE
function action_ELMove(context,evt)
    if evt.param1 ~=  ObjState.Elevator.Active or evt.param2 ~= LevelInfo.ELCid then
        return 0
    end

    if not LF_CheckPlayStep(context,{PlayStep.Wait},"action_ELMove") then
        return 0
    end

    local curELPos = ScriptLib.GetGroupVariableValue(context, VarInfo.CurELPos)
    local curELTarget = ScriptLib.GetGroupVariableValue(context, VarInfo.TargetPos)
    local routeID = LF_GetRouteID(curELPos,curELTarget)

    if  -1 == ScriptLib.SetPlatformRouteId(context, LevelInfo.ELCid, routeID) then
        ScriptLib.PrintContextLog(context, "## TD_Elevator : action_ELMove 电梯设置没成功，拿到的routeID为" .. routeID)
        return 0
    end

    LF_DelAllELOption(context)
    ScriptLib.SetGroupVariableValue(context, VarInfo.CurELPos, curELTarget)
    ScriptLib.SetGroupVariableValue(context, VarInfo.TargetPos, 0)
    ScriptLib.StartPlatform(context, LevelInfo.ELCid)
    LF_SetPlayStep(context,PlayStep.Start,"action_ELMove")
    return 0
end

-- EVENT_SELECT_OPTION
function action_PressButton(context,evt)

    local gearCid = evt.param1
    -- 确认是第几层操作台
    local curGearPos = LF_GetIndexInTable(gearCid,LevelInfo.GearCidList)
    if curGearPos <= 0 then
        return 0
    end

    ScriptLib.SetGadgetStateByConfigId(context, gearCid, ObjState.Switch.Runing)

    local targetPos =  LF_GetIndexInTable(evt.param2,LevelInfo.GearIDList)
    ScriptLib.PrintContextLog(context, "## TD_Elevator action_PressButton: Cid：" .. gearCid .. "|Gear:" .. evt.param2 .. "|targetPos:" .. targetPos)
    -- 确认现在状态
    if LF_CheckPlayStep(context,{PlayStep.Init, PlayStep.Wait},"action_PressButton") then
        -- 确认是否要Come
        local curELPos = ScriptLib.GetGroupVariableValue(context, VarInfo.CurELPos)
        if curELPos == curGearPos then
            ScriptLib.PrintContextLog(context, "## TD_Elevator action_PressButton: 当前电梯在同楼层")
            if LF_CheckPlayStep(context,{PlayStep.Init},"action_PressButton") then
                ScriptLib.PrintContextLog(context, "## TD_Elevator action_PressButton: 这个操作台是Init")
                -- 当前就是目标楼层
                LF_SetPlayStep(context,PlayStep.Wait,"action_PressButton")
                -- 电梯进入检查模式
                ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.ELCid, ObjState.Elevator.Check)
            end
            -- 修改前往的地方
            ScriptLib.SetGroupVariableValue(context, VarInfo.TargetPos, targetPos)
            -- 刷新操作台
            LF_DelELOption(context, gearCid)
            LF_SetELOption(context, gearCid)
        else
            ScriptLib.PrintContextLog(context, "## TD_Elevator action_PressButton: 当前电梯不在同楼层")
            -- 操作台无了
            LF_DelAllELOption(context)
            -- 电梯开始移动
            local routeID = LF_GetRouteID(curELPos,curGearPos)
            if  -1 == ScriptLib.SetPlatformRouteId(context, LevelInfo.ELCid, routeID) then
                ScriptLib.PrintContextLog(context, "## TD_Elevator action_PressButton: 电梯设置没成功，拿到的routeID为" .. routeID)
            end
            -- 电梯移动
            ScriptLib.StartPlatform(context, LevelInfo.ELCid)
            -- 电梯切换为激活模式
            ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.ELCid, ObjState.Elevator.Active)
            -- 转阶段
            LF_SetPlayStep(context,PlayStep.Come,"action_PressButton")
            -- 参数变化
            ScriptLib.SetGroupVariableValue(context, VarInfo.CurELPos, curGearPos)
            ScriptLib.SetGroupVariableValue(context, VarInfo.TargetPos, targetPos)
        end
        return 0
    end


    return 0
end

function action_PassChange(context,evt)
    local varName = evt.source_name
    if not LF_IsInTable(varName,LevelInfo.PassVarList) then
        return 0
    end
    if evt.param1 == evt.param2 or evt.param1 < 0 then
        return 0
    end

    --修改对应物件
    if LF_CheckPlayStep(context,{PlayStep.Init,PlayStep.Wait},"action_PassChange") then
        LF_DelAllELOption(context)
        LF_SetAllELOption(context)
    end

    return 0
end

--[[=====================================
||	LocalFunction
--======================================]]
function LF_GetRouteID(curPos,targetPos)
    local tempCurPos = Fix(curPos,LevelInfo.RouteList,"LF_GetRouteID")
    local curRouteList = LevelInfo.RouteList[tempCurPos]
    local tempTarget = Fix(targetPos,curRouteList,"LF_GetRouteID")
    local routeID = curRouteList[tempTarget]
    return routeID
end

-- 获取所有钥匙数据
function LF_GetKeyList(context)
    local curKeyList = {}
    for i = 1,#LevelInfo.PassVarList do
        local curkey = ScriptLib.GetGroupVariableValue(context, LevelInfo.PassVarList[i])
        curKeyList[i] = curkey
    end
    ScriptLib.PrintContextLog(context, "## TD_Elevator 当前KeyList为" .. LF_ArrayToString(curKeyList))
    return curKeyList
end

function LF_CheckUnLock(context,curKeyList,index)
    local tempIndex = Fix(index,curKeyList,"检查前往的电梯是否已解锁")
    if curKeyList[tempIndex] > 0 then
        return true
    end
    return false
end

function LF_CheckGearEnable(context,fromPos,targetPos)
    local curPos = ScriptLib.GetGroupVariableValue(context, VarInfo.CurELPos)
    local curTargetPos = ScriptLib.GetGroupVariableValue(context, VarInfo.TargetPos)
    if fromPos ~= targetPos and (curPos ~= fromPos or curTargetPos ~= targetPos) then
        return true
    end
    return false
end

function LF_GetGearID(index)
    local idIndex  = Fix(index,LevelInfo.GearIDList,"LF_SetAllELOption 根据Index拿对应的gearid")
    local gearID = LevelInfo.GearIDList[idIndex]
    return gearID
end

-- 所有机关上操作台
function LF_SetAllELOption(context)
    local curKeyList = LF_GetKeyList(context)
    local unlockShiled= false
    -- 借助这个取一下当前已经操作的操作台，不用重复创建
    for i = 1,#LevelInfo.GearCidList do
        local curGear = LevelInfo.GearCidList[i]
        local isUnlock_i  = LF_CheckUnLock(context,curKeyList,i)
        local gearList = {}
        if isUnlock_i then
            for j = 1,#LevelInfo.GearCidList do
                local isUnlock_j  = LF_CheckUnLock(context,curKeyList,j)
                local gearEnable = LF_CheckGearEnable(context,i,j)
                -- 检查前往的电梯是否已解锁
                -- 判断是否已经设置了电梯前往目标楼层
                if isUnlock_j and gearEnable then
                    local gearID = LF_GetGearID(j)
                    table.insert(gearList, gearID)
                end
            end

            if #gearList>0 then
                ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, curGear, gearList)
                ScriptLib.SetGadgetStateByConfigId(context, curGear, ObjState.Switch.Active)
                unlockShiled = true
                ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetAllELOption: 当前操作台" .. curGear .. "设置成功")
            else
                ScriptLib.SetGadgetStateByConfigId(context, curGear, ObjState.Switch.Deactivate)
                ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetAllELOption: 当前操作台" .. curGear .. "无指令可用")
            end
        else
            ScriptLib.SetGadgetStateByConfigId(context, curGear, ObjState.Switch.Deactivate)
            ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetAllELOption: 当前操作台" .. curGear .. "未解锁")
        end
    end

    -- 确认是否解锁光罩
    if unlockShiled then
        ScriptLib.AddExtraGroupSuite(context, 0, 2)
    end

    return 0
end

-- 目标机关上操作台
function LF_SetELOption(context,cid)
    local curKeyList = LF_GetKeyList(context)

    local curGear = cid
    -- 确认是第几层操作台
    local curGearPos = LF_GetIndexInTable(curGear,LevelInfo.GearCidList)
    local isUnlock_From  = LF_CheckUnLock(context,curKeyList,curGearPos)

    if curGearPos <= 0 then
        ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetELOption: 操作不是电梯的操作台")
        return 0
    end
    if not isUnlock_From then
        ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetAllELOption: 当前操作台" .. curGear .. "未解锁")
    end

    local gearList = {}
    for j = 1,#LevelInfo.GearIDList do
        local isUnlock_To  = LF_CheckUnLock(context,curKeyList,j)
        local gearEnable = LF_CheckGearEnable(context,curGearPos,j)
        -- 检查前往的电梯是否已解锁
        -- 判断是否已经设置了电梯前往目标楼层
        if isUnlock_To and gearEnable then
            local gearID = LF_GetGearID(j)
            table.insert(gearList, gearID)
        end
    end

    if #gearList>0 then
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, curGear, gearList)
    else
        ScriptLib.PrintContextLog(context, "## TD_Elevator LF_SetELOption: 当前操作台" .. curGear .. "无指令可用")
    end

    return 0
end

-- 删除机关全部操作台
function LF_DelAllELOption(context)
    for i = 1,#LevelInfo.GearCidList do
        local curGear = LevelInfo.GearCidList[i]
        for j = 1,#LevelInfo.GearIDList do
            local gear = LevelInfo.GearIDList[j]
            ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, curGear, gear)
        end
    end
    return 0
end

-- 删除目标机关全部操作台
function LF_DelELOption(context,cid)
    local curGear = cid
    for j = 1,#LevelInfo.GearIDList do
        local gear = LevelInfo.GearIDList[j]
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, curGear, gear)
    end
    return 0
end



-- 步骤检查
function LF_CheckPlayStep(context,phase,functionName)
    local curPlayStep = ScriptLib.GetGroupVariableValue(context, VarInfo.CurStep)
    for _,v in pairs(phase) do
        if v == curPlayStep then
            ScriptLib.PrintContextLog(context, "## TD_Elevator From:" .. functionName .." ||  当前[Phase:".. curPlayStep .."]符合目标进度" ..LF_ArrayToString(phase)  )
            return true
        end
    end

    ScriptLib.PrintContextLog(context, "## TD_Elevator From:" .. functionName .." ||  当前[Phase:".. curPlayStep .."]不符合目标进度" .. LF_ArrayToString(phase) .."!!!" )
    return false
end

-- 步骤设置
function LF_SetPlayStep(context,phase,functionName)
    ScriptLib.SetGroupVariableValue(context, VarInfo.CurStep, phase)
    ScriptLib.PrintContextLog(context, "## TD_Elevator From：" .. functionName .."  || 流程进度变化，当前[Phase:"..phase .."]" )
    return 0
end

--[[=====================================
||	常用工具包
--======================================]]
-- 标准的InsertTriggers方法
function LF_InsertTriggers(TempTrigger,TempRequireSuite)
    local hasRequireSuitList = not (TempRequireSuite == nil or #TempRequireSuite <=0)
    if hasRequireSuitList then
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suite_disk) then
                        table.insert(suite_disk[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do
                for _,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for _,v in pairs(TempTrigger) do
                    table.insert(suite_disk[i].triggers, v.name)
                end
            end
        end
    end
end
-- 简单拆分一个数组
function LF_ArrayToString(array)
    local s = "{"
    for k,v in pairs(array) do
        if k < #array then
            s = s .. v ..","
        else
            s = s .. v
        end
    end
    s = s .."}"
    return s
end
-- 根据数组的长度修饰num
function Fix(value,array,error)
    if value < 1 then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return 1
    end
    if value > #array then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return #array
    end

    return value
end
-- 判断特定值是否在Table中
function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true
        end
    end
    return false
end
-- 返回特定值在Table中的第一个位置
function LF_GetIndexInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return k
        end
    end
    return 0
end



LF_Initialize_TitanElevator()