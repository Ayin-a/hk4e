--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]

--[[======================================
||	filename:       HookLook
||	owner:          zijun.ma
||	description:    钩爪点发射器通用注目
||	LogName:        TD_HookLook
||	Protection:     [Protection]
=======================================]]

--[[
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
}
--]]

local HookLook_Trigger = {
    { keyWord = "HookLook", event = EventType.EVENT_LUA_NOTIFY, source = "RaioFlowerBeHit", trigger_count = 0},
}

function LF_Initialize_HookLook()
    local startConfigID = 40040001
    for _,v in pairs(HookLook_Trigger) do
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

    LF_InsertTriggers(HookLook_Trigger,RequireSuite)

    return 0
end

--[[=====================================
||	action函数
--======================================]]
function action_HookLook(context, evt)
    -- 触发镜头注目，注目位置为坐标（-1747.105，336.1454，3702.49），持续时间为3秒，并且为强制注目形式，不广播其他玩家
    if HookLookPlay.HookPoint == nil then
        ScriptLib.PrintContextLog(context, "## TD_HookLook Misc 配置非法")
        return -1
    end

    if gadgets[HookLookPlay.HookPoint] == nil then
        ScriptLib.PrintContextLog(context, "## TD_HookLook gadgetInfo 配置非法")
        return 0
    end

    if not LF_Owner_is_Nearby(context) then
        return 0
    end

    -- 取所有玩家最近的位置

    local gadgetInfo = gadgets[HookLookPlay.HookPoint]
    local pos = gadgetInfo.pos
    ScriptLib.BeginCameraSceneLook(context,
            {
                look_pos = pos,
                is_allow_input = true,
                duration = HookLookPlay.Duration,
                is_force = true,
                is_broadcast = false,
            })

    return 0
end

--[[=====================================
||	流程函数
--======================================]]

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

-- 检查Owner是否在附近
function LF_Owner_is_Nearby(context)
    local ownerUid = ScriptLib.GetSceneOwnerUid(context)
    local ownerEid = ScriptLib.GetAvatarEntityIdByUid(context, ownerUid)
    local ownerPos = ScriptLib.GetPosByEntityId(context,ownerEid)

    -- 配合LUANOTIFY专用
    local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    if gadgets[configId] == nil then
        return false
    end
    local targetPos = gadgets[configId].pos

    local X = ownerPos.x - targetPos.x
    local Y = ownerPos.y - targetPos.y
    local Z = ownerPos.z - targetPos.z

    local radius = 20
    if HookLookPlay.radius ~= nil then
        radius = HookLookPlay.radius
    end

    local msg = "## TD_HookLook : LF_Owner_is_Nearby 距离为 = "
    msg = msg .. math.sqrt(X*X+Y*Y+Z*Z)
    msg = msg .. "Radius为 = ".. radius
    ScriptLib.PrintContextLog(context, msg)

    if math.sqrt(X*X+Y*Y+Z*Z) <= radius then
        return true
    else
        return false
    end
end

LF_Initialize_HookLook()
