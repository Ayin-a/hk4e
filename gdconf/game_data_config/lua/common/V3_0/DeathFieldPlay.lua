--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1296.946 271.098 -1590.922
--[[======================================
||	filename:       DeathFieldPlay
||	owner:          zijun.ma
||	description:    死域玩法
||	LogName:        TD_DeathFieldPlay
||	Protection:     [Protection]
=======================================]]
--[[
GROUP GETVAR 133301250 PlayPhase
--]]
--[[
local RequireSuite = {} --死域玩法的初始suit。若不填或不注入，默认走init_config.suite

local DeathField ={
    CoreID = 33001,
    BossID = 33006,
    BossSuite = 2,
    EndSuite = 3, -- 不为空时，
    PointList = {33002,33003,33004},
}
--]]


-- 流程规划(一次性玩法)
-- PlayPhase = 0 => 死域核心、死域之主、死域节点、草种子、死域节点与死域核心的链接
-- 中期流程 => 草种子交互后破坏死域节点，同时清理相关指引
-- PlayPhase = 1 => 所有节点破坏后,死域之主创生
-- PlayPhase = 2 => 死域之主死亡后，玩家可与死域核心交互
-- PlayPhase = 3 => 死域核心破坏后,死域被切换
-- goto 1296 271 -1590

local DeathFieldGadget ={
    --Core = 70310193,
    Point = 70310195,
}

local DeathFieldPlay_Trigger = {
    { config_id = 40000001, name = "tri_DeathField_PointDie", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",
      condition = "", action = "action_DeathField_PointDie", trigger_count = 0},
    { config_id = 40000002, name = "tri_DeathField_BossDie", event = EventType.EVENT_ANY_MONSTER_DIE, source = "",
      condition = "", action = "action_DeathField_BossDie", trigger_count = 0},
    { config_id = 40000003, name = "tri_DeathField_CoreDie", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CoreDie",
      condition = "", action = "action_DeathField_CoreDie", trigger_count = 0},
    { config_id = 40000004, name = "tri_DeathField_GroupLoad", event = EventType.EVENT_GROUP_LOAD, source = "",
      condition = "", action = "action_DeathField_GroupLoad", trigger_count = 0},
}

function LF_Initialize_DeathFieldPlay()
    for k,v in pairs(DeathFieldPlay_Trigger) do
        table.insert(triggers, v)
    end
    LF_InsertTriggers(DeathFieldPlay_Trigger,RequireSuite)

    LF_BossDataCheck()
    LF_PointDataCheck()

    local var = { config_id= 40000101, name = "DeathPointNum", value = 0, no_refresh = false }  --死亡节点计数
    variables[var.name] = var


    if DeathField.NoProtect == true then
        -- 不做保底处理，Group刷新时会刷到初始状态
        local var = { config_id= 40000102, name = "PlayPhase", value = 0, no_refresh = false } -- 玩法阶段
        variables[var.name] = var
    else
        local var = { config_id= 40000102, name = "PlayPhase", value = 0, no_refresh = true } -- 玩法阶段
        variables[var.name] = var
    end

    return 0
end

-- Boss SGV同步
function LF_BossDataCheck()
    -- 死域之主的独立注入
    if nil == DeathField.BossID then
        return 0
    end

    if nil == monsters[DeathField.BossID] then
        return 0
    end

    local boss = monsters[DeathField.BossID]

    if nil == boss.logic_state then
        boss.logic_state = {"SGV_DeathZoneState"}
    elseif not LF_IsInTable("SGV_DeathZoneState",boss.logic_state) then
        table.insert(boss.logic_state,"SGV_DeathZoneState")
    end

    return 0
end

function LF_PointDataCheck()
    -- 统一使所有死域节点的状态修改为可存档
    if DeathField.PointList == nil then
        return 0
    end
    for _,v in ipairs(DeathField.PointList) do
        local gadgetData = gadgets[v]
        if gadgetData ~= nil then
            if nil == gadgetData.persistent then
                -- 如果无logic_state，则直接写入
                gadgetData.persistent = true
            end
        end
    end
    return 0
end

-- 所有节点破坏时，Core切1
function action_DeathField_PointDie(context,evt)

    if gadgets[evt.param2].gadget_id ~= DeathFieldGadget.Point or 202 ~= evt.param1 then
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay PointDie 未进入，检测到物件状态改变，ConfigID为 " .. evt.param2 .. "GadgetState为" .. evt.param1)
        return  0
    end

    -- 死域节点击杀数+1
    local curDeathPointNum = ScriptLib.GetGroupVariableValue(context, "DeathPointNum")
    ScriptLib.SetGroupVariableValue(context,"DeathPointNum",curDeathPointNum + 1)
    ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 节点死亡流程：DeathPointNum + 1 = " .. curDeathPointNum + 1)

    -- 若3个节点死亡，死域切为1
    if curDeathPointNum + 1 >= #DeathField.PointList then
        LF_DeathField_Phase01(context)
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 节点死亡流程：侦测到全部节点死亡，核心状态切换为201")
    end

    return 0
end

-- 死域之主死亡时，Core切201
function action_DeathField_BossDie(context,evt)
    local playPhase = ScriptLib.GetGroupVariableValue(context, "PlayPhase")
    if playPhase ~= 1 then
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay BossDie未进入，当前阶段为 " .. playPhase)
        return 0
    end

    local tempList = ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)
    -- 如果当前Group没有存活怪物就会转阶段
    if next(tempList)==nil then
        -- 切阶段2
        LF_DeathField_Phase02(context)
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 死域之主已死亡,核心状态切换为201")
    end

    return 0
end

-- 死域核心死亡时，Core切202，进入死域转换流程
function action_DeathField_CoreDie(context,evt)
    local playPhase = ScriptLib.GetGroupVariableValue(context, "PlayPhase")
    if playPhase ~= 2 then
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay CoreDie未进入，当前阶段为 " .. playPhase)
        return 0
    end
    LF_DeathField_Phase03(context)
    -- 通知指定ConfigID的死域切换
    ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 死域核心已被玩家破坏")

    return 0
end

function action_DeathField_GroupLoad(context,evt)
    if DeathField.NoProtect == true then
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay GroupLoad时 仅DynamicGroup用，不做保底处理")
        return 0
    end

    local playPhase = ScriptLib.GetGroupVariableValue(context, "PlayPhase")
    local curDeathZoneID =
    ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay GroupLoad时，当前阶段为" .. playPhase)
    -- playPhase = 0 时，刷新Group为状态1
    if playPhase == 0 then
        -- 刷初始Suite
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 0})
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 将Group刷新到初始Group")
    end
    -- playPhase = 1 时，重新招怪
    if playPhase == 1 then
        LF_DeathField_Phase01(context)
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay Boss未死亡，重刷出来")
    end

    if playPhase == 2 then
        LF_DeathField_Phase02(context)
        ScriptLib.PrintContextLog(context,"TD_DeathFieldPlay 死亡核心待解除的状态")
    end

    if playPhase == 3 then
    -- 检查死域是否已关闭
        if ScriptLib.GetDeathZoneStatus(context,0) ~= 0 then
            ScriptLib.ChangeDeathZone(context,0,{is_open = false})
        end
        if DeathField.EndSuite ~= nil and DeathField.EndSuite ~= ScriptLib.GetGroupSuite(context, 0) then
            ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = DeathField.EndSuite})
        end
    end

    return 0
end

--[[=====================================
||	流程函数
--======================================]]
function LF_DeathField_Phase01(context)
    -- 核心状态切换为1
    ScriptLib.SetGadgetStateByConfigId(context, DeathField.CoreID, 1)
    -- 召唤怪物
    ScriptLib.AddExtraGroupSuite(context, 0, DeathField.BossSuite)
    -- 阶段流转
    ScriptLib.SetGroupVariableValue(context,"PlayPhase",1)
    return 0
end

function LF_DeathField_Phase02(context)
    -- 核心状态切换为201
    ScriptLib.SetGadgetStateByConfigId(context, DeathField.CoreID, 201)
    -- 阶段流转
    ScriptLib.SetGroupVariableValue(context,"PlayPhase",2)
    return 0
end

function LF_DeathField_Phase03(context)
    -- 核心状态切换为202
    ScriptLib.SetGadgetStateByConfigId(context, DeathField.CoreID, 202)
    -- 指定死域关闭
    ScriptLib.ChangeDeathZone(context,0,{is_open = false})
    -- 阶段流转
    ScriptLib.SetGroupVariableValue(context,"PlayPhase",3)
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

function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

-- 根据数组的长度修饰num
function Fix(value,array,error)
    local arrayType= type(array)
    if arrayType ~= "table" then
        ScriptLib.PrintLog(error .. "array 非法")
        return 1
    end

    local valueType= type(value)
    if valueType ~= "number" then
        ScriptLib.PrintLog(error .. "value 非法")
        return 1
    end

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

LF_Initialize_DeathFieldPlay()
