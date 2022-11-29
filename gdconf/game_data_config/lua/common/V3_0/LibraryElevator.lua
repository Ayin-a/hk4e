--[[======================================
||	filename:       LibraryElevator
||	owner:          chen.chen
||	description:    大图书馆电梯
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

--[[
定义每个任务环节的电梯锁定情况
local questLockInfo=
{
    [1]={
        [1]={uplock=true}
        [2]={uplock=true,downlock=true }
    },
    [2]={
        [2]={downlock=true }
    },
}



]]

local globalInfo=
{
    platformConfigId=1001,
    routeId=1,
    upOption=761,
    downOption=762,
    lockOption=763,
    summonOption=765,
    enterFloor=2
}
local floorInfo = 
{
    [1]={console=1002,arrayPoint=1},
    [2]={console=1003,arrayPoint=2},
    [3]={console=1004,arrayPoint=3}, 
}

local floorSummonInfo = 
{
    [1]={console=1005},
    [2]={console=1006},
    [3]={console=1007}, 
}

-- 打印日志
function PrintLog(context, content)
	local log = "## [LibraryElevator] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "tri_select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0 },
    { config_id = 40000002, name = "tri_group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000003, name = "tri_reach_point", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_REACH_POINT", trigger_count = 0 },
    { config_id = 41000004, name = "tri_variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "questUnlockProgress", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- VAR
    table.insert(variables, { config_id = 50000001, name = "currentFloor", value = 2,no_refresh = false})
    table.insert(variables, { config_id = 50000002, name = "questUnlockProgress", value = 1,no_refresh = true})
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
    return 0
end

function LF_SetConsoleOptions(context,floor)
    if floorInfo[floor]==nil then
        PrintLog(context, "没有该楼层")
        return 0
    end
    --获取任务进度
    local progress=ScriptLib.GetGroupVariableValue(context, "questUnlockProgress")
    local consoleConfigId=floorInfo[floor].console
    --底层只上向上按钮
    if floor==1 then
        if questLockInfo[progress]~=nil and questLockInfo[progress][floor]~=nil and questLockInfo[progress][floor].uplock==true then
            PrintLog(context, "向上被锁")
        else
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.upOption})
        end 
    --顶层只上向下按钮
    elseif floor==#floorInfo then
        if questLockInfo[progress]~=nil and questLockInfo[progress][floor]~=nil and questLockInfo[progress][floor].downlock==true then
            PrintLog(context, "向下被锁")
        else
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.downOption})
        end
    else
        if questLockInfo[progress]~=nil and questLockInfo[progress][floor]~=nil and questLockInfo[progress][floor].uplock==true and questLockInfo[progress][floor].downlock then
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.lockOption})
        elseif questLockInfo[progress]~=nil and questLockInfo[progress][floor]~=nil and questLockInfo[progress][floor].uplock==true then
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.downOption})
        elseif questLockInfo[progress]~=nil and questLockInfo[progress][floor]~=nil and questLockInfo[progress][floor].downlock==true then
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.upOption})
        else
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, consoleConfigId, {globalInfo.upOption,globalInfo.downOption})
        end    
    end
    --非当前层亮召唤电梯按钮
    for i=1,#floorSummonInfo do
        if i~=floor then
            ScriptLib.SetWorktopOptionsByGroupId(context, 0, floorSummonInfo[i].console, {globalInfo.summonOption})
        end
    end
    return 0
end

function LF_DeleteConsoleOptions(context,floor)
    if floorInfo[floor]==nil then
        PrintLog(context, "没有该楼层")
        return 0
    end
    local consoleConfigId=floorInfo[floor].console
    --全部删一波，这里不判断实际的lock情况了，感觉得不偿失
    ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.upOption)
    ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.downOption)
    ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.lockOption)
    --[[]
    if floor==1 then
        ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.upOption)
    elseif floor==#floorInfo then
        ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.downOption)
    else
        ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.upOption)
        ScriptLib.DelWorktopOptionByGroupId(context, 0, consoleConfigId, globalInfo.downOption)
    end
    ]]
    --非当前层删召唤电梯按钮
    for i=1,#floorSummonInfo do
        if i~=floor then
            ScriptLib.DelWorktopOptionByGroupId(context, 0, floorSummonInfo[i].console, globalInfo.summonOption)
        end
    end
    return 0
end

function LF_FindSummonLevel(context,configId)
    for i=1,#floorSummonInfo do
        if floorSummonInfo[i].console==configId then
            return i
        end
    end
    PrintLog(context, "召唤楼层未找到")
    return -1
end

function LF_MovePlatform(context,fromFloor,toFloor)
    ScriptLib.SetGroupVariableValue(context, "currentFloor", toFloor) 
    ScriptLib.SetPlatformPointArray(context, globalInfo.platformConfigId, globalInfo.routeId, {floorInfo[fromFloor].arrayPoint,floorInfo[toFloor].arrayPoint,}, { route_type = 0 })
    return 0
end


------ conditions & actions ------
--任务进度改变刷一下按钮锁定状态
function action_VARIABLE_CHANGE(context, evt)
    local curFloor=ScriptLib.GetGroupVariableValue(context, "currentFloor")
    LF_DeleteConsoleOptions(context,curFloor)
    LF_SetConsoleOptions(context,curFloor)
    return 0
end

function action_EVENT_GROUP_LOAD(context, evt)
    ScriptLib.SetGroupVariableValue(context, "currentFloor", 2) 
    --设置当前层电梯的按钮
    LF_SetConsoleOptions(context,globalInfo.enterFloor)

    return 0
end

function action_EVENT_PLATFORM_REACH_POINT(context, evt)
    PrintLog(context, "action_EVENT_PLATFORM_REACH_POINT")
    local curFloor=ScriptLib.GetGroupVariableValue(context, "currentFloor")
    LF_SetConsoleOptions(context,curFloor)
    return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
    local curFloor=ScriptLib.GetGroupVariableValue(context, "currentFloor")
    local questStep=ScriptLib.GetGroupVariableValue(context, "questUnlockProgress")
    if evt.param2 == globalInfo.downOption then
        LF_DeleteConsoleOptions(context,curFloor)
        LF_MovePlatform(context,curFloor,curFloor-1)
    elseif evt.param2 ==globalInfo.upOption then
        LF_DeleteConsoleOptions(context,curFloor)
        LF_MovePlatform(context,curFloor,curFloor+1)
    elseif evt.param2 ==globalInfo.lockOption then
        ScriptLib.ShowReminder(context, 400168)
    elseif evt.param2 ==globalInfo.summonOption then
        local summonFloor=LF_FindSummonLevel(context,evt.param1)
        if summonFloor == -1 then
            return 0
        end
        LF_DeleteConsoleOptions(context,curFloor)
        LF_MovePlatform(context,curFloor,summonFloor)
    else
        PrintLog(context, "按钮触发错误")
    end 
	return 0
end

LF_Initialize_Level()
