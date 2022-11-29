--2.4昼夜转换机关

--defs
--local Controllers = {
--    500000,
--    500001
--}


----------------------------------
--212:转到夜晚
--312:转到白天
local states = {212,312}
local options = {500,501}




local Tri = {
    [1] = { name = "select_option_control", config_id = 10000001, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option_control", trigger_count = 0},
    [2] = { name = "group_load_control", config_id = 10000002, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_control", trigger_count = 0},
    [3] = { name = "time_axis_pass", config_id = 10000003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [4] = { name = "gadget_state_change_control", config_id = 10000004, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change_control", trigger_count = 0},
   
}

function Initialize()
    for k,v in pairs(Tri) do
        table.insert(triggers, v)
    end
    for i = 1, #suites do 
        for k,v in pairs(Tri) do
	    	table.insert(suites[i].triggers, v.name)
	    end
    end
    
end

------------------------------------------------------------------
--group load后，加载操作台选项
function action_group_load_control(context,evt)

    ScriptLib.PrintContextLog(context,"EnvStateControl: Group加载，修正昼夜转换机关的option状态")
        
    local is_daynight_finish = ScriptLib.GetGroupVariableValue(context, "is_daynight_finish")
    if (is_daynight_finish == 1) then
        ScriptLib.PrintContextLog(context,"EnvStateControl: 该group处于完成状态，不再受到昼夜管理")
        return 0
    end 
    
    local current_env_state = LF_Get_Current_Day_Night(context)
    
    ScriptLib.PrintContextLog(context,"EnvStateControl: 当前昼夜状态为： "..ScriptLib.GetLevelTagNameById(context,current_env_state))

    if (ScriptLib.GetLevelTagNameById(context,current_env_state) == "2_4_Day") then
        for i = 1, #Controllers do
            LF_Set_Option(context,Controllers[i],options[1])  
        end 
    elseif (ScriptLib.GetLevelTagNameById(context,current_env_state) == "2_4_Night") then
        for i = 1, #Controllers do
            LF_Set_Option(context,Controllers[i],options[2])   
        end 
    end
    return 0
end

--当昼夜转换机关被解锁时，要挂上选项
function action_gadget_state_change_control(context,evt)
    local prestate = evt.param3
    local state = evt.param1
    local gadget = evt.param2
    local is_controller = false
    for i = 1,#Controllers do
        if (gadget == Controllers[i]) then
            is_controller = true
            break
        end
    end
    if (is_controller) then
        if (prestate == 202 and state == 302) then 
            ScriptLib.PrintContextLog(context,"EnvStateControl: 被别的昼夜转换机关切换到夜晚，需要重新设置选项")
            for i = 1, #Controllers do
                ScriptLib.DelWorktopOptionByGroupId(context,0,Controllers[i],options[1])
                LF_Set_Option(context,Controllers[i],options[2])   
            end
        end
        if (prestate == 302 and state == 202) then 
            ScriptLib.PrintContextLog(context,"EnvStateControl: 被别的昼夜转换机关切换到白天，需要重新设置选项")
            for i = 1, #Controllers do
                ScriptLib.DelWorktopOptionByGroupId(context,0,Controllers[i],options[2])
                LF_Set_Option(context,Controllers[i],options[1])   
            end
        end
        if prestate~=200 and prestate~=300 then
            ScriptLib.PrintContextLog(context,"EnvStateControl: 不是昼夜转换机关的解锁触发，直接返回")
            return 0
        end
        local is_daynight_finish = ScriptLib.GetGroupVariableValue(context, "is_daynight_finish")
        if (is_daynight_finish == 1) then
            ScriptLib.PrintContextLog(context,"EnvStateControl: 该group处于完成状态，不再受到昼夜管理")
            return 0
        end 
        ScriptLib.PrintContextLog(context,"EnvStateControl: 昼夜转换机关被解锁，上选项")
        if ((prestate == 200 or prestate == 300) and state == 202) then
            LF_Set_Option(context,gadget,options[1])
        end
        if ((prestate == 200 or prestate == 300) and state == 302) then
            LF_Set_Option(context,gadget,options[2])
        end
    end
    return 0
end




--按下昼夜切换机关时，若不在level tag转换的cd内，则：
--1、拉起cutscene
--2、拉起level tag转换延迟。延迟结束后，转换level tag
--3、拉起level tag cd，cd结束后，将选项还回去
function action_select_option_control(context,evt)

    ScriptLib.PrintContextLog(context,"EnvStateControl: 玩家按下选项，删除当前选项，并切换LevelTag")
    local is_in_cd =  ScriptLib.IsLevelTagChangeInCD(context, 1)

    if (not is_in_cd) then
         --s1329121 运营埋点，与昼夜转换机关交互
         local current_env_state = LF_Get_Current_Day_Night(context)
         local gadget_id = ScriptLib.GetGadgetIdByEntityId(context,evt.source_eid)
         ScriptLib.PrintContextLog(context,"EnvState: 运营打点：昼夜转换机关-参数：".."op_type = "..current_env_state.."config_id = "..evt.param1.."gadget_id = "..gadget_id)
    
         ScriptLib.MarkGroupLuaAction(context, "CircleConsole_1","",{["op_type"]=current_env_state,["config_id"]=evt.param1,["gadget_id"]=gadget_id})
     
        --播放昼夜切换cutscene，并启动时间轴，在短暂延迟后开始转昼夜
        if (ScriptLib.GetLevelTagNameById(context,LF_Get_Current_Day_Night(context)) == "2_4_Day") then
            ScriptLib.PrintContextLog(context,"EnvStateControl: 播放白天转夜晚cutscene")
            ScriptLib.PlayCutScene(context,500501302,0)
        else
            ScriptLib.PrintContextLog(context,"EnvStateControl: 播放夜晚转白天cutscene")
            ScriptLib.PlayCutScene(context,500501301,0)
        end
        ScriptLib.InitTimeAxis(context, "level_tag_change_delay", {1}, false)
        
        ScriptLib.InitTimeAxis(context, "level_tag_change_cd", {10}, false)
        --昼转夜
        if (evt.param2 == options[1]) then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, states[2])
            for i = 1, #Controllers do
                ScriptLib.DelWorktopOptionByGroupId(context,0,Controllers[i],options[1])
            end
        --夜转昼
        elseif (evt.param2 == options[2]) then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, evt.param1, states[1])
            for i = 1, #Controllers do
                ScriptLib.DelWorktopOptionByGroupId(context,0,Controllers[i],options[2])
            end
        end
    end
    return 0
end

--时间轴触发
--level_tag_change_delay为level tag转换的延迟触发
--level_tag_change_cd为level tag转换的cd。cd完成后才会将选项还回去
function action_time_axis_pass(context,evt)
    if (evt.source_name == "level_tag_change_delay") then
        local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
        local env_state =  3-current_env_state_id
        ScriptLib.PrintContextLog(context,"EnvStateControl: 当前的envstate为："..env_state)  
        ScriptLib.ChangeToTargetLevelTag(context,env_state)
        ScriptLib.PrintContextLog(context,"EnvStateControl: -------------------------开始昼夜转换---------------------")  
        ScriptLib.PrintContextLog(context,"EnvStateControl: 昼夜转换为 "..ScriptLib.GetLevelTagNameById(context, env_state))
    end
    
    if (evt.source_name == "level_tag_change_cd") then
        
        ScriptLib.PrintContextLog(context,"EnvStateControl: 昼夜转换完成，恢复选项")
        if (ScriptLib.GetLevelTagNameById(context,LF_Get_Current_Day_Night(context)) == "2_4_Day") then
            for i = 1, #Controllers do
                LF_Set_Option(context,Controllers[i],options[1])   
            end  
        else
            for i = 1, #Controllers do
                LF_Set_Option(context,Controllers[i],options[2])   
            end 
        end
    end
    return 0
end


-----------------------------------------------------------------
function LF_Get_Current_Day_Night(context)
    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
    return current_env_state_id
end

--输入控制台gadget、option，判断gadget是否处于可以上option的状态下
function LF_Set_Option(context,controller,option_id)
    local state = ScriptLib.GetGadgetStateByConfigId(context,0,controller)
    if (state == 202 or state == 302 or state == 212 or state == 312) then
        local ret = ScriptLib.SetWorktopOptionsByGroupId(context,0,controller,{option_id})
    end
end

------------------------------------------------------------------
Initialize()