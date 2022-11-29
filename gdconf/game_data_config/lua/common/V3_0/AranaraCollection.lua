--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- V3_0/AranaraCollection
--[[======================================
||	filename:       AranaraCollection
||	owner:          zijun.ma
||	description:    兰那罗邮箱控制
||	LogName:        TD_AranaraCollection
||	Protection:     [Protection]
=======================================]]
--[[
Group = 133301087
-- 标准相册页 解锁
拿到空的书
item add 220055;
quest accept 7302515
会更新两页新内容
quest finish 7302515;
quest accept 7303803
第一页会更新两行新内容
quest finish 7303803

goto -233 238.214 3467
-- 修改收集进度
COLLECTION STATE 1 1 1;
COLLECTION STATE 1 2 1;
COLLECTION STATE 1 3 1
--]]
-- 数据结构
--[[
local ACPlay = {
    MailBoxCid = 87001, 邮箱cid
    OptionCid = 87002, 操作台cid
    PageLevel02 = 2, 可领取邮件为2以上时，邮箱以202显示
    PageLevel03 = 3, 可领取邮件为3以上时，邮箱以203显示
    WorkOption = 75, 操作台
    TargetMailCount01 = 1, 领取多少邮件后，显示Reminder01
    Reminder01 = 1110013,
    TargetMailCount02 = 2, 领取多少邮件后，显示Reminder02
    Reminder02 = 1110013,
}
--]]

local ACDict = {
    [0] = { level=0, suite = 1, boxState = 0 },
    [1] = { level=1, suite = 2, boxState = 201 },
    [2] = { level=2, suite = 3, boxState = 202 },
    [3] = { level=3, suite = 4, boxState = 203 },
}

local AC_Trigger = {
    { keyWord = "CheckMail", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    { keyWord = "ReceiveMail", event = EventType.EVENT_SELECT_OPTION, source = "", trigger_count = 0},
    --{ keyWord = "MailCallBack", event = EventType.EVENT_ARANARA_COLLECTION_COLLECTED, source = "", trigger_count = 0},
}

function LF_Initialize_Level()
    local startConfigID = 40020001
    for _,v in pairs(AC_Trigger) do
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

    LF_InsertTriggers(AC_Trigger,{})

    local var = { config_id= 40020101, name = "ReceiveMailCount", value = 0, no_refresh = true }
    variables[var.name] = var
    local var = { config_id= 40020102, name = "ReminderProgress", value = 0, no_refresh = true }
    variables[var.name] = var

    return 0
end

--[[=====================================
||	action函数
--======================================]]

-- EVENT_GROUP_LOAD
function action_CheckMail(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_AranaraCollection: ## == INITIALIZE 1 == ")
    -- 拿页片数据(state => 0 不可收集 1 可收集 2 已收集 3 已完成
    local curCollectablePageNum = ScriptLib.GetAranaraCollectableCountByTypeAndState(context,1,1)
    ScriptLib.PrintContextLog(context, "## TD_AranaraCollection: action_CheckMail curCollectablePageNum：" .. curCollectablePageNum)
    if -1 == curCollectablePageNum then
        ScriptLib.PrintContextLog(context, "## TD_AranaraCollection action_CheckMail")
        return -1
    end
    if curCollectablePageNum >= ACPlay.PageLevel03 then
        LF_ChangeLevel(context,3)
        return 0
    end
    if curCollectablePageNum >= ACPlay.PageLevel02 then
        LF_ChangeLevel(context,2)
        return 0
    end
    if curCollectablePageNum > 0 then
        LF_ChangeLevel(context,1)
        return 0
    end
    LF_ChangeLevel(context,0)
    return 0
end

function action_ReceiveMail(context,evt)
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, ACPlay.OptionCid, ACPlay.WorkOption)
    ScriptLib.RecieveAllAranaraCollectionByType(context,base_info.group_id,1)
    ScriptLib.PrintContextLog(context, "## TD_AranaraCollection: action_ReceiveMail Trigger!")
    -- 邮箱显示状态清空
    ScriptLib.SetGadgetStateByConfigId(context, ACPlay.MailBoxCid, 0)
    -- 见：//design_data_depot/dev/Excel/Data/PushTipsData.xlsx
    ScriptLib.MarkPlayerAction(context, 1144, 1, 1)
    return 0
end

--[[=====================================
||	流程函数
--======================================]]
-- 根据数量等级，切布设式样和邮箱状态
function LF_ChangeLevel(context,level)
    if ACDict[level] == nil then
        ScriptLib.PrintContextLog(context, "## TD_AranaraCollection 非法level，level = " .. level)
        return 0
    end

    local levelInfo = ACDict[level]

    --周围布设已相同，刷了Group也没啥用（考虑后续可能还要迭代，暂时保留)
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = levelInfo.suite })
    ScriptLib.SetGadgetStateByConfigId(context, ACPlay.MailBoxCid, levelInfo.boxState)

    local msg = "## TD_AranaraCollection : LF_ChangeLevel"
    msg = msg .. "|gotoSuite = " .. levelInfo.suite
    msg = msg .. "|setState = " .. levelInfo.boxState

    if level>0 then
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, ACPlay.OptionCid, {ACPlay.WorkOption})
        msg = msg .. "|Have Set Option"
    end

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


LF_Initialize_Level()
