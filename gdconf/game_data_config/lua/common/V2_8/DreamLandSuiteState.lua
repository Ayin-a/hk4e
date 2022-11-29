--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   DreamLandSuiteState
||  owner:      weiwei.sun
||  description:    2.8Group内容切换类玩法，泛用型物件状态保存器。存9个物件，9个状态 
||  LogName:    ## [DreamLandSuiteState]
||  Protection: 
=======================================]]
--[[
defs = {
    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 3,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 
    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_BuDing_MDLY"] = {2},
        ["2_8_BuDing_MDDQ"] = {2},
        ["2_8_BuDing_DQLY"] = {3,2},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {
    
    4004, 4005, 4006
    }

}

]]

--定义数字对应的gadgetState
local state_define={
    [1] = 0,--Default
    [2] = 101,--ChestLocked
    [3] = 102,--ChestOpened
    [4] = 104,--ChestBramble
    [5] = 105,--ChestFrozen
    [6] = 201,--GearStart
    [7] = 202,--GearStop
    [8] = 203,--GearAction1
    [9] = 204,--GearAction2
}


local state_Triggers = {

    { config_id = 8800001, name = "Group_Load_Dreamland", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load_Dreamland", trigger_count = 0 },
    { config_id = 8800002, name = "LevelTag_Change_Dreamland", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_LevelTag_Change_Dreamland", trigger_count = 0 },
    { config_id = 8800003, name = "Gadget_StateChange_Dreamland", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_Gadget_StateChange_Dreamland", trigger_count = 0 },
    
}


function LF_Initialize_Dreamland_Group(triggers, suites)
    for i=1,#state_Triggers do
        table.insert(triggers, state_Triggers[i])
        table.insert(suites[init_config.suite].triggers,state_Triggers[i].name)
    end
    table.insert(variables,{ config_id = 58800001, name = "saved_state", value = 1000000000, no_refresh = true })
end

--在GadgetStateChange时，如果为saved_gadget中的物件，则记录
--evt.param2:configID
--evt.param1:切换后的state
function action_Gadget_StateChange_Dreamland(context, evt)
    local index = LF_GetIndexInTable(context, evt.param2, defs.saved_gadget)
    --非存档物件
    if 0 == index then
        ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] Save gadget state ignored. configID@"..evt.param2.." index@"..index)
        return 0
    end
    --写什么数字
    local state_index = LF_GetStateIndexByGadgetState(context, evt.param1)
    --写在哪一位
    local state_place = math.pow(10, index - 1)
    --该位数字现在是几
    local saved_int = ScriptLib.GetGroupVariableValue(context, "saved_state")
    local saved_table = LF_Split_Int(context, saved_int)

    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] LF_GetStateIndexByGadgetState: Get state_place@"..state_place.." state_index@"..state_index)  
    --写
    ScriptLib.ChangeGroupVariableValue(context, "saved_state", (state_index - saved_table[index]) * state_place)
    local result = ScriptLib.GetGroupVariableValue(context, "saved_state")
    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] Save gadget state. configID@"..evt.param2.." index@"..index.." saved_state@"..result)
    return 0
end

function LF_GetStateIndexByGadgetState(context, state_id)
    local state_index = 0
    for k,v in pairs(state_define) do
        if v == state_id then
            state_index = k
            return state_index
        end
    end
    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] #WARN# LF_GetStateIndexByGadgetState: Get undefined gadget state! state@"..state_id)
    return 0
end

function LF_GadgetStateRecover(context)
    --检查gadget数量是否在合法范围内
    if 9 < #defs.saved_gadget then
        ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] #WARN# saved_gadget over used!")
        return 0
    end

    local saved_int = ScriptLib.GetGroupVariableValue(context, "saved_state")
    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] LF_GadgetStateRecover. saved_int@"..saved_int..". num to save@"..#defs.saved_gadget)
    local saved_table = LF_Split_Int(context, saved_int)
    for i = 1, #defs.saved_gadget do
        if 0 ~= saved_table[i] then
            local ret = ScriptLib.SetGadgetStateByConfigId(context, defs.saved_gadget[i], state_define[saved_table[i]])
        end
        if -1 == ret then
            ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] #WARN# LF_GadgetStateRecover: Set gadget state failed! config_id@"..defs.saved_gadget[i].." stateIndex@"..saved_table[i])
        end
    end
    return 0
end

function action_LevelTag_Change_Dreamland(context, evt)
    local tag_name = ScriptLib.GetLevelTagNameById(context, evt.param2)
    if "" == tag_name then
        ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] LevelTag_Change_Dreamland: Get level tag name failed.")
        return 0
    end
    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] LevelTag_Change_Dreamland: Get level tag name@"..tag_name)
    LF_SwitchByDreamlandLevelTag(context, tag_name)
    LF_GadgetStateRecover(context)
    return 0
end

function action_Group_Load_Dreamland(context ,evt)

    local tag_name =  LF_GetCurLevelTagName(context)
    if "" == tag_name then
        ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] Group_Load_Dreamland: Get level tag name failed.")
        return 0
    end
    ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] Group_Load_Dreamland: Get level tag name@"..tag_name)
    LF_SwitchByDreamlandLevelTag(context, tag_name)
    LF_GadgetStateRecover(context)
    return 0
end

function LF_GetCurLevelTagName(context)
    --2.8海岛中，每个levelTagGroup（即series）中的tag都是互斥关系，所以取第一位
    local cur_tag = ScriptLib.GetCurrentLevelTagVec(context, defs.levelTagGroupID)[1]
    local tag_name = ScriptLib.GetLevelTagNameById(context, cur_tag)
    return tag_name
end

--根据LevelTagName切suite。含有Trigger的suite1不动
function LF_SwitchByDreamlandLevelTag(context, tag_name)

    if 1 ~= defs.switchByLevelTag then
        return 0
    end

    for k, v in pairs(suites) do 
        if k ~= 1 then
            if 0 ~= LF_GetIndexInTable(context, k, defs.switchByLevelTag_suites[tag_name]) then 
                ScriptLib.AddExtraGroupSuite(context, base_info.group_id, k)
                ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] SwitchByDreamlandLevelTag: tag_name@"..tag_name.." add suite@"..k)
            else
                ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, k)
                ScriptLib.PrintContextLog(context, "## [DreamLandSuiteState] SwitchByDreamlandLevelTag: tag_name@"..tag_name.." remove suite@"..k)
            end
        end
    end

    return 0
end

function LF_GetIndexInTable(context, value, check_table)
    for i = 1, #check_table do
        if check_table[i] == value then
            return i
        end
    end
    return 0
end

function LF_Split_Int(context, num)
    local tb = {0,0,0,0,0,0,0,0,0}
    for i=1, #tb do
        tb[i] = num%10
        num = math.floor(num/10)
    end
    return tb
end

LF_Initialize_Dreamland_Group(triggers, suites)