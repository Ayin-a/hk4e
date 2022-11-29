--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       DeathFieldStandard
||	owner:          zijun.ma
||	description:    死域Group标准Require，所有死域Group中会实装的Require
||	LogName:        TD_DeathFieldStandard
||	Protection:     [Protection]
=======================================]]

local deathMonsterDict = {
    [26090101] = {monsterid = 26090101,name = "蕈兽-小-飞-水"},
    [26090201] = {monsterid = 26090201,name = "蕈兽-小-飞-草"},
    [26090301] = {monsterid = 26090301,name = "蕈兽-小-飞-风"},
    [26090401] = {monsterid = 26090401,name = "蕈兽-小-转-雷"},
    [26090501] = {monsterid = 26090501,name = "蕈兽-小-转-冰"},
    [26090601] = {monsterid = 26090601,name = "蕈兽-小-转-火"},
    [26090701] = {monsterid = 26090701,name = "蕈兽-小-伸-火"},
    [26090801] = {monsterid = 26090801,name = "蕈兽-小-伸-风"},
    [26090901] = {monsterid = 26090901,name = "蕈兽-小-伸-岩"},
    [26091001] = {monsterid = 26091001,name = "蕈兽-小-伸-雷"},
    [26120301] = {monsterid = 26120301,name = "蕈兽-精英-走-水"},
    [26120401] = {monsterid = 26120401,name = "蕈兽-精英-走-岩"},
    [26120101] = {monsterid = 26120101,name = "蕈兽-精英-飞-草"},
    [26120201] = {monsterid = 26120201,name = "蕈兽-精英-飞-冰"},
}

local deathGadgetDict = {
    --三态物件
    [70330197] = {gadgetid = 70330197,name = "弹跳蘑菇"},
    [70330199] = {gadgetid = 70330199,name = "可抬起石块"},
    [70330200] = {gadgetid = 70330200,name = "三态显形植物"},
    [70330216] = {gadgetid = 70330216,name = "毒气蘑菇"},
    [70330221] = {gadgetid = 70330221,name = "生命之菇"},
    [70330230] = {gadgetid = 70330230,name = "草神透镜"},
    [70220104] = {gadgetid = 70220104,name = "梦境灵花"},
    --死域物件
    [70310192] = {gadgetid = 70310192,name = "死域飞弹"},
    [70310196] = {gadgetid = 70310196,name = "死域指示特效01"},
    [70290513] = {gadgetid = 70290513,name = "死域指示特效02"},
    [70290491] = {gadgetid = 70290491,name = "死域核心光源"},
    [70290492] = {gadgetid = 70290492,name = "死域节点光源"},
}

local deathGatherDict = {
    [2045] = {point_type = 2045,name = "生命之菇"},
}


local DeathFieldStandard_Trigger = {
    { config_id = 90700001, name = "DeathFieldStandard_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "",
      condition = "", action = "action_CheckDeathEntity", trigger_count = 0},
    { config_id = 90700002, name = "DeathFieldStandard_DEATH_ZONE_STATUS_CHANGE", event = EventType.EVENT_DEATH_ZONE_STATUS_CHANGE, source = "",
      condition = "", action = "action_DeathZoneChange", trigger_count = 0},
}

function LF_Initialize_DeathFieldStandard()
    for k,v in pairs(DeathFieldStandard_Trigger) do
        table.insert(triggers, v)
    end

    LF_InsertTriggers(DeathFieldStandard_Trigger,{})

    local var = { config_id= 90700101, name = "SGV_DeathZoneState", value = 0, no_refresh = true, variable_type = 1 }  --死域状态
    variables[var.name] = var

    LF_InitialDeathMonster()
    LF_InitialDeathGadget()
    LF_InitialDeathGather()

    return 0
end

--[[=====================================
||	初始化函数
--======================================]]
function LF_InitialDeathMonster()
    for _,v in pairs(monsters) do
        local monsterID = v.monster_id
        if deathMonsterDict[monsterID] ~= nil then
            if nil == v.logic_state then
                -- 如果无logic_state，则直接写入
                v.logic_state = {"SGV_DeathZoneState"}
            elseif not LF_IsInTable("SGV_DeathZoneState",v.logic_state) then
                -- 如果有其它LogicState,则插入数据
                table.insert(v.logic_state,"SGV_DeathZoneState")
            end
        end
    end
end

function LF_InitialDeathGadget()
    for _,v in pairs(gadgets) do
        local gadgetsID = v.gadget_id
        if deathGadgetDict[gadgetsID] ~= nil then
            if nil == v.logic_state then
                -- 如果无logic_state，则直接写入
                v.logic_state = {"SGV_DeathZoneState"}
            elseif not LF_IsInTable("SGV_DeathZoneState",v.logic_state) then
                -- 如果有其它LogicState,则插入数据
                table.insert(v.logic_state,"SGV_DeathZoneState")
            end
        end
    end
end

function LF_InitialDeathGather()
    for _,v in pairs(gadgets) do
        local gadgetsID = v.gadget_id
        local pointType = v.point_type
        if gadgetsID == 70500000 and pointType ~= nil then
            if deathGatherDict[pointType] ~= nil then
                if nil == v.logic_state then
                    -- 如果无logic_state，则直接写入
                    v.logic_state = {"SGV_DeathZoneState"}
                elseif not LF_IsInTable("SGV_DeathZoneState",v.logic_state) then
                    -- 如果有其它LogicState,则插入数据
                    table.insert(v.logic_state,"SGV_DeathZoneState")
                end
            end
        end

    end
end

--[[=====================================
||	流程函数
--======================================]]
function action_CheckDeathEntity(context,evt)
    -- 查询死域值并根据死域值设置LogicState
    local curDeathStatus = ScriptLib.GetDeathZoneStatus(context,0)
    ScriptLib.PrintContextLog(context, "## TD_DeathFieldStandard GroupLoad: 当前Group"..base_info.group_id.."死域状态为"..curDeathStatus)
    if -1 == curDeathStatus then
        ScriptLib.PrintContextLog(context, "## TD_DeathFieldStandard GroupLoad: 当前Group"..base_info.group_id.."没有对应死域")
        return -1
    end
    ScriptLib.SetGroupLogicStateValue(context,"SGV_DeathZoneState",curDeathStatus)
    ScriptLib.PrintContextLog(context, "## TD_DeathFieldStandard GroupLoad: 以根据curDeathStatus设置当前死域LogicState")
    return 0
end

function action_DeathZoneChange(context,evt)
    -- 查询死域值并根据死域值设置LogicState
    local curDeathStatus = ScriptLib.GetDeathZoneStatus(context,0)
    ScriptLib.SetGroupLogicStateValue(context,"SGV_DeathZoneState",curDeathStatus)
    ScriptLib.PrintContextLog(context, "## TD_DeathFieldStandard DeathZoneChange 死域LogicState切换为" .. curDeathStatus)
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

LF_Initialize_DeathFieldStandard()
