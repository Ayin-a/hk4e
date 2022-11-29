--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   EchoConch_Puzzle
||  owner:      xudong.sun
||  description:    物件交付接口返回值是列表。提供一个将列表第一位ID设为GroupVariable的功能，供关卡编辑器使用
||  LogName:    ## EchoPuzzle_LOG
||  Protection: 
=======================================]]
--[[
    local GivingID = {0,0,0}
    local MaterialID = {0,0,0}
    local ConchConfigID = {}
    local CreateList = {
        {[material_A]={{虚影_A,point_1},{configid,point}}, [materialID]={{configid,point},{configid,point}}, [materialID]={{configid,point},{configid,point}}},
        {[material_A]={{虚影_A,point_2},{configid,point}}, [materialID]={{configid,point},{configid,point}}, [materialID]={{configid,point},{configid,point}}},
        {[material_A]={{虚影_A,point_3},{configid,point}}, [materialID]={{configid,point},{configid,point}}, [materialID]={{configid,point},{configid,point}}},
    }
    local NoticeReminder= {
        [12]= 0,
        [13]= 0,
    }
]]

--[[
未交付不可交互 - 没特定State
未交付（可交互） - 0
交付不可取回（不可交互） - 101
交付可取回 - 102
]]

local giving_Triggers = {
    { config_id = 8800001, name = "Gadget_Giving_Finished", event = EventType.EVENT_GADGET_GIVING_FINISHED, source = "", condition = "", action = "action_Gadget_Giving_Finished", trigger_count = 0 },
    { config_id = 8800002, name = "Gadget_Giving_TakeBack", event = EventType.EVENT_GADGET_GIVING_TAKEBACK, source = "", condition = "", action = "action_Gadget_Giving_TakeBack", trigger_count = 0 },
    { config_id = 8800003, name = "Group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },    
}


function LF_Initialize_GadgetGiving(triggers, suites)
    for i=1,#giving_Triggers do
        table.insert(triggers, giving_Triggers[i])
        table.insert(suites[init_config.suite].triggers,giving_Triggers[i].name)
    end
    table.insert(variables,{ config_id=50000001, name = "conch_puzzle_success", value = 0})
end

--监听Gadget交付完成事件
--evt.param1: 交付Gadget的config_id
--evt.param2: 使用的giving_id
function action_Group_Load( context, evt)

    --打开交付开关 初始化当前givingID的信息
    for i,v in ipairs(ConchConfigID) do
        local tempList = ScriptLib.GetGivingItemList(context, GivingID[i])
        if ScriptLib.GetGroupVariableValue(context, "conch_puzzle_success")==1 then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, ConchConfigID[i], 101)
        elseif next(tempList) == nil then
            ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : empty configID is"..ConchConfigID[i])
            ScriptLib.ActiveGadgetItemGiving(context, GivingID[i], base_info.group_id, ConchConfigID[i])

            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, ConchConfigID[i], 0)
            ScriptLib.SetGroupTempValue(context, "Conch_Slot"..i, 0, {})
        else
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, ConchConfigID[i], 102)
            
            ScriptLib.SetGroupTempValue(context, "Conch_Slot"..i, tempList[1], {})
        end
    end

    if ScriptLib.GetGroupVariableValue(context, "conch_puzzle_success")==1 then
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)
    end


    return 0
end


function action_Gadget_Giving_Finished(context, evt)
    --evt.param1物件的configID   evt.param2物件的GivingID
    local slotNum = 0

    --获取当前Slot的ID
    for i=1,3 do
        if GivingID[i]== evt.param2 then
            slotNum = i
        end
    end

    if slotNum == 0 then
        ScriptLib.PrintGroupWarning(context,"## EchoConch_Puzzle action_Gadget_Giving_Finished: 没有找到当前所在的海螺Slot ID")
        return 0
    end

    ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : slotNum = "..slotNum)

    --设置slot为取回模式
    ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, 102)

    --创建虚影
      --获取当前交付的materialID
    local _materialID = ScriptLib.GetGivingItemList(context, evt.param2)[1]
    ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : _materialID = ".._materialID)

      --根据materialID创建对应的虚影
    for i,v in ipairs(CreateList[slotNum][_materialID]) do

        ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : configid = "..v.configid)
        ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : point = "..v.point)

        ScriptLib.CreateGadgetByConfigIdByPos(context, v.configid, points[v.point].pos, points[v.point].rot)
    end

    --记录当前slot装载的materialid
    ScriptLib.SetGroupTempValue(context, "Conch_Slot"..slotNum, _materialID, {})



    --2022/4/20新增提示reminder
    --获取当前提交的materialindex
    local materialIndex = 0
    for i,v in ipairs(MaterialID) do
        if v == _materialID then
            materialIndex = i
        end
    end

    if materialIndex == 0 then
        ScriptLib.PrintGroupWarning(context,"## EchoConch_Puzzle action_Gadget_Giving_Finished: 没有获取到当前materialIndex")
    elseif slotNum ~= materialIndex then
        --slotNum和materialIndex不对应，需要弹出错误提示
        local reminderIndex = slotNum*10 + materialIndex
        if NoticeReminder[reminderIndex]~= nil then
            ScriptLib.ShowReminderByUid(context, {context.owner_uid},NoticeReminder[reminderIndex])
        end
    end


    --检测解谜是否成功
    for i=1,3 do

        if ScriptLib.GetGroupTempValue(context, "Conch_Slot"..i, {}) ~= MaterialID[i] then
            return 0 
        end
    end

    --解谜成功执行以下操作

    --切换海螺状态到不可交互
    for i,v in ipairs(ConchConfigID) do
        ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, 101)
    end

    --发送成功通知
    ScriptLib.SetGroupVariableValue(context, "conch_puzzle_success", 1)
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 2)

    return 0

end

function action_Gadget_Giving_TakeBack(context, evt)

    local slotNum = 0

    --获取当前Slot的ID
    for i=1,3 do
        if GivingID[i]== evt.param2 then
            slotNum = i
        end
    end

    ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : Get slotNum = "..slotNum)

    --获取当前slotID对应的虚影materialID
    local _materialID = ScriptLib.GetGroupTempValue(context, "Conch_Slot"..slotNum, {})

    ScriptLib.PrintContextLog(context, "## EchoPuzzle_LOG : Get _materialID = ".._materialID)

    --删除虚影
    for i,v in ipairs(CreateList[slotNum][_materialID]) do
        
        ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = v.configid, entity_type=EntityType.GADGET })
    end

    ScriptLib.SetGroupTempValue(context, "Conch_Slot"..slotNum, 0, {})


    ScriptLib.ActiveGadgetItemGiving(context, evt.param2, base_info.group_id, evt.param1)
    ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 0)

    return 0
end


LF_Initialize_GadgetGiving(triggers, suites)