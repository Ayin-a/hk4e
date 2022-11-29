--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]

--[[======================================
||	filename:       VisualizationPlant
||	owner:          zijun.ma
||	description:    显形植物机制
||	LogName:        TD_VisualizationPlant
||	Protection:     [Protection]
=======================================]]

--
local RequireSuite = {}

--[[
local WatcherList ={
	[84001] = { pointArray = 110200022,pointArrayList = {1,2,3}},
	[84002] = { pointArray = 110200022,pointArrayList = {4,5,6}},
}
--]]

local VisualizationPlant_Trigger = {
    { keyWord = "CheckFlowerCreate", event = EventType.EVENT_GADGET_CREATE, source = "", trigger_count = 0},
    { keyWord = "CheckPoint", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", trigger_count = 0},
    { keyWord = "StageChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
}

function LF_Initialize_VisualizationPlant()
    local startConfigID = 40030001
    for _,v in pairs(VisualizationPlant_Trigger) do
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

    LF_InsertTriggers(VisualizationPlant_Trigger,RequireSuite)

    return 0
end

--[[=====================================
||	action函数
--======================================]]
function action_CheckFlowerCreate(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_VisualizationPlant  CheckFlowerCreate| configID = " .. evt.param1 )
    local cid = evt.param1
    if WatcherList[cid] ~= nil then
        LF_StartMove(context,cid)
    end
    return 0
end

function action_CheckPoint(context,evt)
    local cid = evt.param1
    local curPoint = evt.param3
    if WatcherList[cid] == nil then
        return 0
    end

    local pointList = WatcherList[cid].pointArrayList
    local curIndex = LF_GetIndexInTable(curPoint,pointList)
    local nextIndex = LF_GetNextPointIndex(pointList,curIndex)
    ScriptLib.SetGroupTempValue(context, "Cid_"..cid.."_Index",nextIndex, {})

    local msg = "## TD_VisualizationPlant  CheckPoint"
    msg = msg .. "| configID = " .. cid
    msg = msg .. "| nextIndex被保存 = " .. nextIndex
    ScriptLib.PrintContextLog(context, msg)

    return 0
end

function action_StageChange(context,evt)
    local msg = "## TD_VisualizationPlant  GadgetCheck"
    msg = msg .. "| configID = " .. evt.param2
    msg = msg .. "的状态被修改为 = " .. evt.param1
    ScriptLib.PrintContextLog(context, msg)
    local cid = evt.param2
    if WatcherList[cid] ~= nil then
        if 0 ~= evt.param1 then
            -- 停下来！
            ScriptLib.StopPlatform(context, cid)
        else
            -- 启动
            LF_StartMove(context,cid)
        end
        -- 运营埋点
        ScriptLib.MarkGroupLuaAction(context, "VisualizationPlant", "", {["group_id"] = base_info.group_id, ["config_id"] = cid, ["state_id"] = evt.param1})
    end
    return 0
end
--[[=====================================
||	流程函数
--======================================]]
function LF_StartMove(context,cid)
    local curPointIndex = ScriptLib.GetGroupTempValue(context, "Cid_"..cid.."_Index", {})
    local pointArray = WatcherList[cid].pointArray
    local pointList = WatcherList[cid].pointArrayList

    if 0 == curPointIndex then
        ScriptLib.SetGroupTempValue(context, "Cid_"..cid.."_Index", 1, {})
        curPointIndex = 1
    end

    local curPath = LF_GetStartPath(pointList,curPointIndex)

    ScriptLib.SetPlatformPointArray(context, cid, pointArray, curPath, { route_type = 2,record_mode=0 })

    local msg = "## TD_VisualizationPlant  LF_StartMove"
    msg = msg .. "| curPointIndex = " .. cid
    msg = msg .. "| configID = " .. cid
    msg = msg .. "| pointArray = " .. pointArray
    msg = msg .. "| pointArrayList = " .. LF_ArrayToString(pointList)
    msg = msg .. "| curPath = " .. LF_ArrayToString(curPath)
    msg = msg .. " 开始移动 "
    ScriptLib.PrintContextLog(context, msg)

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
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
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
                for k,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for k,v in pairs(TempTrigger) do
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

-- 根据起点获得点阵资料
function LF_GetStartPath(pointArrayList, curPointIndex)

    local path = {}
    local pointList = pointArrayList

    if pointList[curPointIndex] == nil then
        return path
    end

    for i = 1,#pointList do
        local point = pointList[curPointIndex]
        table.insert(path,point)
        curPointIndex = LF_GetNextPointIndex(pointList,curPointIndex)
    end

    return path
end

function LF_GetNextPointIndex(pointList, curPointIndex)
    local nextPointIndex = curPointIndex + 1
    if nextPointIndex > #pointList then
        nextPointIndex = 1
    end
    return nextPointIndex
end

-- 返回特定值在Table中的第一个位置
function LF_GetIndexInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return k;
        end
    end
    return 0;
end

LF_Initialize_VisualizationPlant()
