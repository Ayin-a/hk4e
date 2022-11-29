--2.4封印祭坛玩法

--defs = {
--}
--
----miscs
--
--SolutionList = {
--    {1,2,3,4,5},
--    {1,3,5},
--    {2,4},
--    {1,4,1}
--}
--
--Gates = {
--    1000001,
--    1000002,
--    1000003,
--    1000004,
--    1000005
--}
----------------------------------



local Tri = {
    [1] = { name = "group_load", config_id = 1500001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},  
    [2] = { name = "gadget_state_change", config_id = 1500002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [3] = { name = "variable_change", config_id = 1500003, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0},
    [4] = { name = "time_axis_pass", config_id = 1500004, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [5] = { name = "gadget_create", config_id = 1500005, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
    [6] = { name = "level_tag_change", config_id = 1500006, event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_level_tag_change", trigger_count = 0},
    
}

function Initialize()

    for k,v in pairs(Tri) do
        table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --玩法锁。当一个解法被解开时，锁住玩法，不再接受交互。
    --需要外部领取奖励后，将锁打开，开启玩法
    table.insert(variables,{ config_id=70000001,name = "play_lock", value = 0, no_refresh = true})

    --solution_state:记录当前各个解法的状态
    --0 = 未开放、1 = 已开放、2 = 已完成、3 = 已领取
    --solution_progress记录当前各个解法的完成进度，取值为迄今为止正确的位数
    for i = 1,#SolutionList do
        table.insert(variables,{ config_id=71000000+i,name = "solution_state_"..i, value = 0, no_refresh = true})
        table.insert(variables,{ config_id=72000000+i,name = "solution_progress_"..i, value = 0, no_refresh = true})
    end
end

------------------------------------------------------------------


function action_group_load(context,evt)
    LF_Reset_Play_State(context)
    return 0
end

function action_gadget_create(context,evt)

    if LF_Is_In_Table(context,Gates,evt.param1) then
        local index = LF_Get_Index_In_Table(context,Gates,evt.param1)
        LF_Reset_Gate_State(context,index)
    end
    return 0
end

function action_level_tag_change(context,evt)
    if (evt.param2 == 1) then
        LF_Reset_Play_State(context)
        for i = 1,#Gates do
            LF_Reset_Gate_State(context,i)
        end
    end
    return 0
end
function action_gadget_state_change(context,evt)
    local gadget = evt.param2
    local gate_index = LF_Get_Index_In_Table(context,Gates,gadget)
    --传送门被激活，且当前没有未被领取的奖励
    if (gate_index ~= -1 and evt.param1 == 201 and not LF_Has_Unfinished_Chamber(context)) then
        local uid_list = ScriptLib.GetSceneUidList(context) 
        local ret = ScriptLib.MoveAvatarByPointArray(context, uid_list[1], defs.pointarray_route, {6}, {speed=10}, "{\"MarkType\":2,\"IgnoreCollisionWhenEnter\":true}")
        ScriptLib.PrintContextLog(context,"SealedAltar: 触发传送！ 结果为 "..ret)
        LF_Check_Solution(context,gate_index)
    end

    return 0
end

function action_variable_change(context,evt)
    if (string.sub(evt.source_name,1,15) == "solution_state_") then
        if evt.param1 == 3 then
            LF_Reset_Play_State(context)
            for i = 1,#Gates do
                LF_Reset_Gate_State(context,i)
            end
        end
    end

    return 0
end

--延时处理门从101转回201的状态
function action_time_axis_pass(context,evt)

    if (evt.source_name == "gate_wait_change_to_active") then
        LF_Reset_Play_State(context)
        for i = 1,#Gates do
            LF_Reset_Gate_State(context,i)
        end
    end
    return 0
end

------------------------------------------------------------------
------------------------玩法相关方法---------------------------

--重置玩法状态。solution进度重置
function LF_Reset_Play_State(context)
    ScriptLib.PrintContextLog(context,"SealedAltar: 正在重置玩法进度状态")
    for i = 1, #SolutionList do
        ScriptLib.SetGroupVariableValue(context,"solution_progress_"..i,0)
    end
end

--将特定门的状态重置，根据当前是否存在未领取的奖励，设置门的状态
--如果有未领取奖励，将门设置到0或201（根据这个门是否在未领取奖励的解法中），并给门上锁
--如果没有未领取奖励，则将门设置到0，并给门去锁
function LF_Reset_Gate_State(context,gate_index)
    ScriptLib.PrintContextLog(context,"SealedAltar: 正在重置各个门的状态")
    if (LF_Has_Unfinished_Chamber(context)) then
        ScriptLib.PrintContextLog(context,"SealedAltar: 存在未领取的玩法，将门设置到锁定状态")
        LF_Set_Gate_Lock(context,gate_index,1)
        local unfinished_chamber = LF_Get_Unfinished_Chamber(context)
        local unfinished_solution = SolutionList[unfinished_chamber]
        ScriptLib.PrintContextLog(context,"SealedAltar: 未领取的玩法id为"..unfinished_chamber)
        --如果有未领取的chamber，将该解法对应的门转到201，提示玩家该门已经处于锁定的激活状态
        if (LF_Is_In_Table(context,unfinished_solution,gate_index)) then 
            ScriptLib.PrintContextLog(context,"SealedAltar: 将门"..gate_index.."转到状态201")
            ScriptLib.SetGroupGadgetStateByConfigId(context,0,Gates[gate_index],201)
        end
    else
        ScriptLib.PrintContextLog(context,"SealedAltar: 不存在未领取的玩法，所有门和变量重置")
        LF_Set_Gate_Lock(context,gate_index,0)
        ScriptLib.SetGroupGadgetStateByConfigId(context,0,Gates[gate_index],0)
    end
end

--输入当前触发的门index，检查是否完成某个玩法
function LF_Check_Solution(context, current_index)
    
    ScriptLib.PrintContextLog(context,"SealedAltar: -------------------------------------------")
    ScriptLib.PrintContextLog(context,"SealedAltar: 当前触碰的门为 "..current_index)
    ScriptLib.PrintContextLog(context,"SealedAltar: 正在检查当前解法是否匹配")
    local has_correct = false
    for i = 1, #SolutionList do
        local target_solution = SolutionList[i]
        local solution_progress = ScriptLib.GetGroupVariableValue(context,"solution_progress_"..i)
        local solution_state = ScriptLib.GetGroupVariableValue(context,"solution_state_"..i)
        ScriptLib.PrintContextLog(context,"SealedAltar: 目标解法"..i.." 进度为： "..solution_progress)
        --玩法开启，且进度不为-1（即不是已经失败的解法）
        if (solution_state == 1 and solution_progress ~= -1) then
            local target_index = target_solution[solution_progress+1]
            --当前位数匹配
            if (target_index == current_index) then
                --解法与当前答案匹配，进度前进，并记录进度
                solution_progress = solution_progress+1
                ScriptLib.SetGroupVariableValue(context,"solution_progress_"..i,solution_progress)
                ScriptLib.PrintContextLog(context,"SealedAltar: 目标解法当前位数匹配")
                --说明有匹配的，解答继续
                has_correct = true
                --如果已经匹配到了当前玩法的最终位，说明匹配成功
                if (solution_progress>=#target_solution) then
                    ScriptLib.SetGroupVariableValue(context,"solution_state_"..i,2)
                    ScriptLib.PrintContextLog(context,"SealedAltar: 解法"..i.."匹配成功！！")
                    for i = 1,#target_solution do
                        local gate = Gates[target_solution[i]]
                        ScriptLib.SetGroupGadgetStateByConfigId(context,0,gate,101)
                    end
                    --延时重置整个玩法
                    ScriptLib.InitTimeAxis(context, "gate_wait_change_to_active", {5}, false)
                    --按照优先短匹配的原则，提前返回
                    return 
                end
            else
                ScriptLib.SetGroupVariableValue(context,"solution_progress_"..i,-1)
            end

        end
    end
    --当前已经没有匹配的解法了，玩法重置
    if (not has_correct) then
        ScriptLib.PrintContextLog(context,"SealedAltar: 当前解法全部匹配失败！！")
        LF_Reset_Play_State(context)
        for i = 1,#Gates do
            LF_Reset_Gate_State(context,i)
        end
    end
    ScriptLib.PrintContextLog(context,"SealedAltar: -------------------------------------------")
end

--对index的门上锁，上锁了以后，进入门不再触发状态变化（gadget层）
--lock_state = 1：上锁； lock_state = 0：开锁
function LF_Set_Gate_Lock(context,gate_index,lock_state)
    ScriptLib.PrintContextLog(context,"SealedAltar: 将门"..gate_index.."设置为"..lock_state.."状态")
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, Gates[gate_index], "SGV_Lock" ,lock_state)
end

--检查是否有solution_state处于状态2（即玩法解开，但奖励未领取）
function LF_Has_Unfinished_Chamber(context)
    for i = 1, #SolutionList do
        local solution_state = ScriptLib.GetGroupVariableValue(context,"solution_state_"..i)
        if (solution_state == 2) then
            return true
        end
    end
    return false
end

--返回Solution_state处于状态2的解法id。如果没有返回-1
function LF_Get_Unfinished_Chamber(context)
    for i = 1, #SolutionList do
        local solution_state = ScriptLib.GetGroupVariableValue(context,"solution_state_"..i)
        if (solution_state == 2) then
            return i
        end
    end
    return -1
end

------------------------------------------------------------------
--------------------工具方法--------------------------------------


--打印table的方法，用于debug
function LF_Print_Table(context,table_name,table)

    ScriptLib.PrintContextLog(context,"WallMaze: ------------------------------")
    ScriptLib.PrintContextLog(context,"WallMaze: 输出表 "..table_name.." 的元素 ")
    for i = 1,#table do
        ScriptLib.PrintContextLog(context,"WallMaze: "..table_name.."["..i.."] = "..table[i])
    end
    ScriptLib.PrintContextLog(context,"WallMaze: ------------------------------")
end

--判断元素是否属于表
function LF_Is_In_Table(context,t,key)
    for i = 1,#t do
        if (t[i] == key) then
            return true
        end
    end
    return false
end

--获取元素在表中的index
function LF_Get_Index_In_Table(context,t,key)
    for i = 1,#t do
        if (t[i] == key) then
            return i
        end
    end
    return -1
end

--从表中start位置开始截取子表（包含start）
function LF_Get_Table_Tail(context,t,start)

    local tail = {}
    for i = start,#t do
        table.insert(tail,t[i])
    end
    return tail

end




------------------------------------------------------------------
Initialize()