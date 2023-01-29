--[[======================================
||	filename:	SandstormControl
||	owner: 		luyao.huang
||	description:	3.3沙尘爆发控制group（白盒）
||	LogName:	SandstormControl
||	Protection:	
=======================================]]--



------
local local_defs = {
    forecast_time = 10
}




local sandstorm_Tri = {
    [1] = { name = "group_load", config_id = 10000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "time_axis_pass", config_id = 10000002, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [3] = { name = "group_will_unload", config_id = 10000003, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
    [4] = { name = "enter_region", config_id = 10000004, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false},




    [101] = { name = "GM_variable_change", config_id = 11000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_GM_variable_change", trigger_count = 0},
}

function sandstorm_Initialize()
    for k,v in pairs(sandstorm_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --1为沙尘暴中，2为沙尘暴cd中
    table.insert(variables,{ config_id = 20000001,  name = "sandstorm_state", value = 2})


    --记录上次时间轴（CD或沙尘暴）开启的时间
    table.insert(variables,{ config_id = 20000011,  name = "sandstorm_last_axis_start_time", value = 0})
    --记录上次时间轴（CD或沙尘暴）持续的时间
    table.insert(variables,{ config_id = 20000012,  name = "sandstorm_last_axis_last_time", value = 0})
    --记录上次时间轴（CD或沙尘暴）剩余时间，这条仅会在group卸载时记录，并在group load时恢复
    table.insert(variables,{ config_id = 20000013,  name = "sandstorm_last_axis_remain_time", value = -1})
    --存档时间轴状态。1-之前时间轴未结束，正常恢复；2-之前时间轴已结束，下次应开启下一段时间轴
    table.insert(variables,{ config_id = 20000014,  name = "axis_saves_state", value = -1})



    --改为1后，会每3秒打印一次玩家所在region信息
    table.insert(variables,{ config_id = 30000001,  name = "GM_Show_Player_Region", value = 0})
    --按照这个倍率缩小持续时间和CD时间，方便调试
    table.insert(variables,{ config_id = 30000002,  name = "GM_Time_Scale_Down", value = 1})
    --按照这个倍率放大持续时间和CD时间，方便调试
    table.insert(variables,{ config_id = 30000003,  name = "GM_Time_Scale_Up", value = 1})
    --改为1后，立刻跳过当前的天气阶段，进入下一个天气阶段
    table.insert(variables,{ config_id = 30000004,  name = "GM_Skip_Current_Weather", value = 0})
    --改为1后，无视当前天气阶段，强制开启一次沙尘暴
    table.insert(variables,{ config_id = 30000005,  name = "GM_Force_Start_Sandstorm", value = 0})
    --改为1后，无视当前天气阶段，强制开启一次沙尘暴CD时间
    table.insert(variables,{ config_id = 30000006,  name = "GM_Force_Start_Sandstorm_CD", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--



function action_time_axis_pass(context,evt)

    if (evt.source_name == "SANDSTORM_CD_AXIS") then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：冷却时间tick，尝试开启沙尘暴")
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：圈内有玩家，开启沙尘暴")
            --开启沙尘暴
            LF_On_Sandstorm_Start(context)
            LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：时间轴结束时，圈内没有人，那么保存一次时间轴状态，等下次进入再开启")
            --如果时间轴结束时，圈内没人，那么说明所有玩家都出圈了。存档这个时间轴状态
            LF_Save_Time_Axis(context)
        end
    end
    if (evt.source_name == "SANDSTORM_TIME_AXIS") then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：沙尘暴时间轴tick，结束沙尘暴，开启冷却时间")
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：圈内有玩家，进入冷却时间阶段")
            --停止沙尘暴
            LF_On_Sandstorm_Stop(context)
            LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})

            LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：时间轴结束时，圈内没有人，那么保存一次时间轴状态，等下次进入再开启")
            --如果时间轴结束时，圈内没人，那么说明所有玩家都出圈了。存档这个时间轴状态
            LF_Save_Time_Axis(context)
        end
    end

    if (evt.source_name == "SANDSTORM_FORECAST_TIME_AXIS") then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] action_time_axis_pass：沙尘暴预告时间轴tick，向team写SGV")
        local host = ScriptLib.GetSceneOwnerUid(context)
        LF_Change_Team_SGV(context,host,"SGV_Is_Sandstorm_Coming",1)
    end

    --GM模式，每3秒打印一次自己所在圈的信息
    if (evt.source_name == "GM_SHOW_REGION_AXIS") and ScriptLib.GetGroupVariableValue(context,"GM_Show_Player_Region") == 1 then

        local legal_uid = LF_Get_Legal_Player_Uid_In_SandStorm_Region(context)
        if legal_uid ~= -1 then
            local current_region = LF_Get_Legal_Player_Region_In_SandStorm_Region(context)
            local is_in_sandworm_region = LF_Is_In_Legal_Sandworm_Region(context,legal_uid)
            ScriptLib.PrintContextLog(context,"## [GM] =========================================")
            ScriptLib.PrintContextLog(context,"## [GM] action_time_axis_pass：当前圈内第一名合法玩家为"..legal_uid)
            ScriptLib.PrintContextLog(context,"## [GM] action_time_axis_pass：所在沙尘暴圈为"..current_region)
            if is_in_sandworm_region then
                ScriptLib.PrintContextLog(context,"## [GM] action_time_axis_pass：在 沙虫区域中")
            else
                ScriptLib.PrintContextLog(context,"## [GM] action_time_axis_pass：不在 沙虫区域中")
            end
            ScriptLib.PrintContextLog(context,"## [GM] =========================================")
        else
            ScriptLib.PrintContextLog(context,"## [GM] =========================================")
            ScriptLib.PrintContextLog(context,"## [GM] action_time_axis_pass：当前圈内没有合法玩家")
            ScriptLib.PrintContextLog(context,"## [GM] =========================================")
        end
    end

    return 0
end


function action_group_load(context,evt)

    ScriptLib.PrintContextLog(context,"## [SandstormControl] action_group_load：group加载，开启时间轴")
    LF_Load_Time_Axis(context)

    ScriptLib.InitTimeAxis(context,"GM_SHOW_REGION_AXIS",{3},true)

    return 0
end

function action_group_will_unload(context,evt)

    ScriptLib.PrintContextLog(context,"## [SandstormControl] action_group_will_unload：group卸载，存档时间轴")
    LF_Save_Time_Axis(context)

    return 0
end


function action_enter_region(context,evt)

    if LF_Is_In_Table(MetaRegions["SandStorm_OuterRegion"], evt.param1 ) then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] action_enter_region：有人进入外圈，尝试恢复时间轴")
        LF_Load_Time_Axis(context)
    end
    return 0
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_On_Sandstorm_Start(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] ===========================================")
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_On_Sandstorm_Start：沙尘暴启动")
    --设置沙尘暴状态
    LF_Set_Sandstorm_State_By_Name(context,"IN_STORM")
    --开启沙尘暴天气
    LF_Set_Sandstorm_Weather(context,true)
    --启动沙虫阶段
    --LF_Start_Sandworm_Phase(context)
    
end

function LF_On_Sandstorm_Stop(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_On_Sandstorm_Stop：沙尘暴结束")
    --设置沙尘暴CD中状态
    LF_Set_Sandstorm_State_By_Name(context,"IN_CD")
    --关闭沙尘暴天气
    LF_Set_Sandstorm_Weather(context,false)
    --停止沙虫阶段
    --LF_Stop_Sandworm_Phase(context)


    ScriptLib.PrintContextLog(context,"## [SandstormControl] ===========================================")
end





--[[-----------------------------------------------------------------
||                                                                 ||
||                      读档存档                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


--记录剩余时间轴（CD或沙尘暴）的时间
function LF_Save_Time_Axis(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Save_Time_Axis：开始存储当前时间轴状态")
    local current_time = ScriptLib.GetServerTime(context)
    local last_start_time = ScriptLib.GetGroupVariableValue(context,"sandstorm_last_axis_start_time")
    local last_last_time = ScriptLib.GetGroupVariableValue(context,"sandstorm_last_axis_last_time")
    local remain_time = last_last_time - (current_time - last_start_time)

    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Save_Time_Axis：剩余时间为"..remain_time)
    if remain_time > 0.5 then
        ScriptLib.SetGroupVariableValue(context,"sandstorm_last_axis_remain_time",remain_time)
    
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Save_Time_Axis：下次应恢复时间轴")
        --记录存在时间轴存档状态为状态1（下次应恢复时间轴）
        ScriptLib.SetGroupVariableValue(context,"axis_saves_state",1)
    else
        
        ScriptLib.SetGroupVariableValue(context,"sandstorm_last_axis_remain_time",0)
    
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Save_Time_Axis：下次应开启下一段时间轴")
        --记录存在时间轴存档状态为状态2（下次进入下一段时间轴）
        ScriptLib.SetGroupVariableValue(context,"axis_saves_state",2)
    end
end

--恢复剩余时间轴（CD或沙尘暴）的时间
function LF_Load_Time_Axis(context)

    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：开始恢复当前时间轴状态")
    local axis_saves_state = ScriptLib.GetGroupVariableValue(context,"axis_saves_state")

    --保底，防止多触发产生问题，直接返回
    if axis_saves_state == 0 then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：已完成恢复 或 没有存档，无事发生")
        return
    end

    --玩家生涯首次触发，先默认开一段CD
    if axis_saves_state == -1 then
        
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：这是玩家生涯首次进入沙尘暴区域")
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：圈内有人，允许开启")

            --生涯首次触发，默认先开一段CD
            LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
            
            --开一个沙尘暴预告的时间轴
            LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")

            --重置一下记录的时间轴状态
            ScriptLib.SetGroupVariableValue(context,"axis_saves_state",0)
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：圈内没有人，无事发生，延后到有人enter region后再开启")
        end
    end


    if axis_saves_state == 1 then
        
        local remain_time = ScriptLib.GetGroupVariableValue(context,"sandstorm_last_axis_remain_time")
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：状态1：恢复之前的时间轴，剩余时间为"..remain_time)

        local time_axis_name

        if LF_Is_In_Sandstorm_State(context) then
            time_axis_name = "SANDSTORM_TIME_AXIS"
        else
            time_axis_name = "SANDSTORM_CD_AXIS"
        end
        LF_Set_Time_Axis(context,time_axis_name,{save_prefix = "sandstorm", target_time = remain_time})

        --开一个沙尘暴预告的时间轴
        LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS",{target_time = remain_time})

        --重置一下记录的时间轴状态
        ScriptLib.SetGroupVariableValue(context,"axis_saves_state",0)
        return 
    end

    if axis_saves_state == 2 then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：状态1：准备开启下一段时间轴")
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：圈内有人，允许开启")
            --如果之前是沙尘暴状态，则转到CD状态
            if LF_Is_In_Sandstorm_State(context) then
                LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
                LF_On_Sandstorm_Stop(context)
                
                --开一个沙尘暴预告的时间轴
                LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
            else
                --如果之前是CD状态，则转到沙尘暴状态
                LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
                LF_On_Sandstorm_Start(context)
            end
            
            --重置一下记录的时间轴状态
            ScriptLib.SetGroupVariableValue(context,"axis_saves_state",0)
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Load_Time_Axis：圈内没有人，无事发生，延后到有人enter region后再开启")
        end
        return
    end
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Set_Sandstorm_Weather(context,is_on)
        
    if is_on then
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Set_Sandstorm_Weather：设置沙尘暴天气为：开启")
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_InnerRegion"].weather, 1)
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_MiddleRegion"].weather, 1)
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_OuterRegion"].weather, 1)
    else
        ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Set_Sandstorm_Weather：设置沙尘暴天气为：关闭")
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_InnerRegion"].weather, 0)
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_MiddleRegion"].weather, 0)
	    ScriptLib.SetWeatherAreaState(context, weather_region_config["SandStorm_OuterRegion"].weather, 0)
    end
end

function LF_Skip_Current_Sandstorm(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：强制跳过当前的沙尘暴阶段")
    if LF_Is_In_Sandstorm_State(context) then
        --如果现在是沙尘暴阶段，则直接强制跳过
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：有玩家在沙尘暴区域，做一次强制跳过")
            ScriptLib.EndTimeAxis(context, "STORM_TIME_AXIS")
            LF_On_Sandstorm_Stop(context)
            LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
            --开一个沙尘暴预告的时间轴
            LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：没有玩家在沙尘暴区域，直接结束当前沙尘暴，并存档")
            ScriptLib.EndTimeAxis(context, "STORM_TIME_AXIS")
            LF_On_Sandstorm_Stop(context)
            
            --手动修改一次之前存的当前时间轴时间，确保下次进入区域时可以加载一个正确的时间轴
            local current_time = ScriptLib.GetServerTime(context)
            local last_start_time = ScriptLib.GetGroupVariableValue(context,"sandstorm_last_axis_start_time")
            ScriptLib.SetGroupVariableValue(context,"sandstorm_last_axis_last_time", current_time - last_start_time)

            LF_Save_Time_Axis(context)
        end
    else
        --当前就是CD阶段，无事发生
        ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：当前就是CD阶段，无事发生")
    end
    return 0
end

function LF_Start_Sanstorm(context)
    if not LF_Is_In_Sandstorm_State(context) then
        --如果现在不是沙尘暴阶段，则直接强制开启
        if LF_Is_Any_Player_In_SandStorm_Region(context) then
            ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：有玩家在沙尘暴区域，强制开启沙尘暴")
            ScriptLib.EndTimeAxis(context, "SANDSTORM_CD_AXIS")
            LF_On_Sandstorm_Start(context)
            LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
        else
            ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：没有玩家在沙尘暴区域，无视发生")
        end
    else
        --当前就是CD阶段，无事发生
        ScriptLib.PrintContextLog(context,"## [SandstormControl]LF_Skip_Current_Sandstorm：当前就是CD阶段，无事发生")
    end
    return 0
end




function LF_Change_Team_SGV(context,uid,key,delta)
    local v = ScriptLib.GetTeamServerGlobalValue(context,uid,key)
    ScriptLib.SetTeamServerGlobalValue(context,uid,key,v+delta)
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--


-----------------------------------------------------------------------
--沙尘暴状态相关

--直接设置沙尘暴状态
function LF_Set_Sandstorm_State_By_Id(context,state)
    ScriptLib.SetGroupVariableValue(context,"sandstorm_state",state)
end

--设置沙尘暴状态
function LF_Set_Sandstorm_State_By_Name(context,state_name)
    if state_name == "IN_STORM" then
        ScriptLib.SetGroupVariableValue(context,"sandstorm_state",1)
        return
    end
    if state_name == "IN_CD" then
        ScriptLib.SetGroupVariableValue(context,"sandstorm_state",2)
        return
    end
    
    ScriptLib.PrintGroupWarning(context,"## [Warning] [SandstormControl] LF_Set_Sandstorm_State_By_Id：传入非法沙尘暴状态名"..state_name)
end


--返回当前是否处于沙尘暴状态中
function LF_Is_In_Sandstorm_State(context)
    return ScriptLib.GetGroupVariableValue(context,"sandstorm_state") == 1
end



-----------------------------------------------------------------------
--时间轴相关

--根据时间轴配置，生成一个随机时间进行返回
function LF_Get_Axis_Config_By_Time_Config(context,name,type)
    local GM_time_scale_down = ScriptLib.GetGroupVariableValue(context,"GM_Time_Scale_Down")
    local GM_time_scale_up = ScriptLib.GetGroupVariableValue(context,"GM_Time_Scale_Up")

    local min = time_configs[type][name].min
    local max = time_configs[type][name].max
    local rtime = math.ceil(math.random(min,max) / GM_time_scale_down * GM_time_scale_up)
    if rtime <= 0 then
        rtime = 1
    end
    --rtime至少为1，且不能是float，否则dev服务器会直接core掉
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Get_Axis_Config_By_Time_Config：本次生成时间名为"..type.."，时间为"..rtime)
    return {rtime}
end


--根据time_config设置一个时间轴，支持多种模式
--axis_name：时间轴名，与time_config中的列名保持一致
--save_prefix：如果填了，会在开启时间轴时记录一个当前时间轴的开始时间和预计持续时间，方便存档这个时间轴
--target_time：如果填了，会根据传入的target_time来决定时间轴的长度而不是随机一个时间轴
function LF_Set_Time_Axis(context,axis_name,params)
    local axis = {}
    local target_time
    local save_prefix
    if params ~= nil then
        target_time = params.target_time
        save_prefix = params.save_prefix
    end

    if axis_name == "SANDSTORM_FORECAST_AXIS" then
        local remain_time = 0
        if target_time == nil then
            remain_time = ScriptLib.GetGroupVariableValue(context,"sandstorm_last_axis_last_time")
        else
            remain_time = target_time
        end
        if remain_time - local_defs.forecast_time > 0 then 
            --开一个沙尘暴预告的时间轴
            ScriptLib.InitTimeAxis(context,"SANDSTORM_FORECAST_TIME_AXIS",{remain_time-local_defs.forecast_time},false)
        end
        return
    end


    if target_time == nil then
        local current_region = LF_Get_Legal_Player_Region_In_SandStorm_Region(context)
        if current_region ~= "SandStorm_Outside" then
            axis = LF_Get_Axis_Config_By_Time_Config(context,current_region,axis_name)
        else
            ScriptLib.PrintGroupWarning(context,"## [Warning] [SandstormControl] LF_Set_Time_Axis：玩家不在沙尘暴区域内，无法获得合法的时间轴数据")
            return
        end
    else
        axis = {target_time}
    end
    ScriptLib.InitTimeAxis(context,axis_name,axis,false)
    if save_prefix ~= "" and save_prefix ~= nil then
        --记录一下时间轴开启的时间
        ScriptLib.SetGroupVariableValue(context,save_prefix.."_last_axis_start_time",ScriptLib.GetServerTime(context))
        --记录一下本次时间轴持续的时间
        ScriptLib.SetGroupVariableValue(context,save_prefix.."_last_axis_last_time",axis[1])
    end
    return axis[1]
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      server lua call                            ||
||                                                                 ||
-----------------------------------------------------------------]]--

function SLC_Reset_Weather_Wizard_Forecast_State(context)
    
    local host = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.SetTeamServerGlobalValue(context, host, "SGV_Is_Sandstorm_Coming", 0)
    return 0
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      GM指令功能                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_GM_variable_change(context,evt)
    --立刻跳过当前的天气阶段。简单起见，只考虑玩家在圈内的情况
    if evt.source_name == "GM_Skip_Current_Weather" and evt.param1 == 1 then
        ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-跳过当前天气阶段")
        if LF_Is_In_Sandstorm_State(context) then
            --跳过沙尘暴阶段，开启CD阶段
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "SANDSTORM_TIME_AXIS")
                LF_On_Sandstorm_Stop(context)
                LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
                --开一个沙尘暴预告的时间轴
                LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        else
            --跳过CD阶段，开启沙尘暴阶段
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "SANDSTORM_CD_AXIS")
                LF_On_Sandstorm_Start(context)
                LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        end
        ScriptLib.SetGroupVariableValue(context,"GM_Skip_Current_Weather",0)
    end

    --强制开启一个全新的沙尘暴阶段。简单起见，只考虑玩家在圈内的情况
    if evt.source_name == "GM_Force_Start_Sandstorm" and evt.param1 == 1 then
        ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-强制开启一段新的沙尘暴天气")
        if LF_Is_In_Sandstorm_State(context) then
            --如果现在是沙尘暴阶段，先强制结束一次，然后再开启一次新的沙尘暴
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "SANDSTORM_TIME_AXIS")
                LF_On_Sandstorm_Stop(context)
                LF_On_Sandstorm_Start(context)
                LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        else
            --跳过CD阶段，开启沙尘暴阶段
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "SANDSTORM_CD_AXIS")
                LF_On_Sandstorm_Start(context)
                LF_Set_Time_Axis(context,"SANDSTORM_TIME_AXIS",{save_prefix = "sandstorm"})
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        end
        ScriptLib.SetGroupVariableValue(context,"GM_Force_Start_Sandstorm",0)
    end

    --强制开启一个全新的沙尘暴CD阶段。简单起见，只考虑玩家在圈内的情况
    if evt.source_name == "GM_Force_Start_Sandstorm_CD" and evt.param1 == 1 then
        ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-强制开启一段新的沙尘暴CD时间段")
        if LF_Is_In_Sandstorm_State(context) then
            --如果现在是沙尘暴阶段，先强制结束一次，然后再开启一次新的沙尘暴
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "STORM_TIME_AXIS")
                LF_On_Sandstorm_Stop(context)
                LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
                --开一个沙尘暴预告的时间轴
                LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        else
            --跳过CD阶段，开启沙尘暴阶段
            if LF_Is_Any_Player_In_SandStorm_Region(context) then
                ScriptLib.EndTimeAxis(context, "SANDSTORM_CD_AXIS")
                LF_On_Sandstorm_Start(context)
                LF_On_Sandstorm_Stop(context)
                LF_Set_Time_Axis(context,"SANDSTORM_CD_AXIS",{save_prefix = "sandstorm"})
                --开一个沙尘暴预告的时间轴
                LF_Set_Time_Axis(context,"SANDSTORM_FORECAST_AXIS")
            else
                ScriptLib.PrintContextLog(context,"## [GM]action_GM_variable_change：GM-注意！！这个GM只适用于圈内有玩家的情况。")
            end
        end
        ScriptLib.SetGroupVariableValue(context,"GM_Force_Start_Sandstorm_CD",0)
    end

    return 0
end
------------------------------------------------------------------

sandstorm_Initialize()