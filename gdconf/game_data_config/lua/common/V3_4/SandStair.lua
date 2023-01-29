--[[======================================
||	filename:	SandStair
||	owner: 		luyao.huang
||	description:	3.3流沙阶梯玩法
||	LogName:	SandStair
||	Protection:	
=======================================]]--



------
local local_defs = {
    option_active = 5000,
    option_deactive = 5001,
}

local Tri = {
    [1] = { name = "group_load", config_id = 10000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "select_option", config_id = 10000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [3] = { name = "time_axis_pass", config_id = 10000003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [4] = { name = "gadget_state_change", config_id = 10000004, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [5] = { name = "group_will_unload", config_id = 10000005, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    for i = 1, #pools do
        table.insert(variables,{config_id = 500001000+i, name = "sand_amount_"..pools[i], value = 0, no_refresh = true})
    end
    table.insert(variables,{config_id = 500000001, name = "origin_time", value = 0, no_refresh = true})
    table.insert(variables,{config_id = 500000002, name = "is_in_axis", value = 0, no_refresh = true})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法加载初始化
function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandStair] action_group_load：group加载")
    LF_Show_Option(context)
    --断线重连或group加载时，要尝试根据存档变量恢复一次玩法状态
    LF_Set_All_SGV_To_Pools(context)
    LF_Start_Axis(context)
    return 0
end

--卸载时，要保底清除状态变量
function action_group_will_unload(context,evt)
    ScriptLib.SetGroupVariableValue(context,"is_in_axis",0)
    ScriptLib.SetGroupVariableValue(context,"origin_time",0)
    return 0
end


function action_select_option(context,evt)
    local nozzole = evt.param1
    if evt.param2 == local_defs.option_active then
        ScriptLib.SetGadgetStateByConfigId(context,nozzole,201)
        if evt.param1 == origin_defs.origin_nozzole then
            LF_Set_Nozzole_Flow(context,evt.param1)
        end
        LF_Start_Axis(context)
    end
    if evt.param2 == local_defs.option_deactive then
        ScriptLib.SetGadgetStateByConfigId(context,nozzole,0)
        if evt.param1 == origin_defs.origin_nozzole then
            LF_Set_Nozzole_Freeze(context,evt.param1)
        end
    end
    return 0
end


function action_time_axis_pass(context,evt)
    if evt.source_name == "Sand_Flow" then
        LF_Run_Sand_Flow(context)
    end
    return 0
end

function action_gadget_state_change(context,evt)
    if LF_Is_Nozzole(context,evt.param2) then
        LF_Set_Option(context,evt.param2)
    end
    return 0
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--


function LF_Start_Axis(context)
    --将任何一个开关转到打开，都可能会导致开始流沙，因此要开时间轴算一遍
    if ScriptLib.GetGroupVariableValue(context,"is_in_axis") == 0 then
        ScriptLib.InitTimeAxis(context,"Sand_Flow",{1},true)
        ScriptLib.SetGroupVariableValue(context,"is_in_axis",1)
        ScriptLib.SetGroupVariableValue(context,"origin_time",0)
    end
end

function LF_Run_Sand_Flow(context)

    local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,origin_defs.origin_nozzole)
    local flag = true
    if state == 201 then
        flag = false
        ScriptLib.ChangeGroupVariableValue(context,"origin_time",1)
        LF_Change_Sand_Amount(context,origin_defs.origin_pool,origin_defs.origin_speed)
        if ScriptLib.GetGroupVariableValue(context,"origin_time") > origin_defs.origin_time then
            ScriptLib.SetGadgetStateByConfigId(context,origin_defs.origin_nozzole,0)
            LF_Set_Nozzole_Freeze(context,origin_defs.origin_nozzole)
            ScriptLib.SetGroupVariableValue(context,"origin_time",0)
        end
    end

    for i = 1, #pools do
        ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：=================================================")
        ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：计算池子"..pools[i].."本次tick的沙量")
        local pool = pools[i]
        local flow_speed = 0
        local up_nozzole = nozzoles[pool].up_nozzole
        local down_nozzole = nozzoles[pool].down_nozzole
        local up_nozzole_pool = pool_connections[pool].up_nozzole
        local down_nozzole_pool = pool_connections[pool].down_nozzole
        --如果池子不为空，才会向下方流沙
        if not LF_Is_Pool_Empty(context,pool) then
            local flag_up = true
            local flag_down = true
            ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：池子不为空")
            --如果上喷口已激活
            if LF_Is_Nozzole_Active(context,up_nozzole) then
                ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：上喷口处于激活状态")
                --且沙量大于一定值，允许上喷口流沙
                if LF_Is_Up_Nozzole_Can_Flow(context,pool) then
                    ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：上喷口流沙")
                    flag = false
                    flag_up = false
                    flow_speed = flow_speed + defs.up_flow_speed
                    LF_Set_Nozzole_Flow(context,up_nozzole)
                    --如果上喷口下方有沙池，则修改下方沙池沙量
                    if up_nozzole_pool ~= 0 then
                        LF_Change_Sand_Amount(context,up_nozzole_pool,defs.up_flow_speed)
                    end
                end
            end
            if flag_up then
                LF_Set_Nozzole_Freeze(context,up_nozzole)
            end
            --如果下喷口已激活
            if LF_Is_Nozzole_Active(context,down_nozzole) then
                flag = false
                flag_down = false
                ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：下喷口处于激活状态")
                flow_speed = flow_speed + defs.down_flow_speed
                LF_Set_Nozzole_Flow(context,down_nozzole)
                --如果下喷口下方有沙池，则修改下方沙池沙量
                if down_nozzole_pool ~= 0 then
                    LF_Change_Sand_Amount(context,down_nozzole_pool,defs.down_flow_speed)
                end
            end
            if flag_down then
                LF_Set_Nozzole_Freeze(context,down_nozzole)
            end
            --如果池子已溢出，还要计算溢出的沙量
            if LF_Is_Pool_Full(context,pool) then
                flag = false
                ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：池子已溢出")
                flow_speed = flow_speed + defs.overflow_speed
            end
            ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：本次流沙总量为"..flow_speed)
            LF_Change_Sand_Amount(context,pool,-flow_speed)
        else
            LF_Set_Nozzole_Freeze(context,up_nozzole)
            LF_Set_Nozzole_Freeze(context,down_nozzole)
        end
        ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：=================================================")
    end

    --期间没有任何容器再有变化了，本轮沙子流动结束，关掉时间轴
    if flag then
        ScriptLib.EndTimeAxis(context, "Sand_Flow")
        ScriptLib.SetGroupVariableValue(context,"is_in_axis",0)
        ScriptLib.PrintContextLog(context,"## [SandStair] LF_Run_Sand_Flow：本轮沙子流动结束！！")
    end
end

function LF_Set_All_SGV_To_Pools(context)
    for k,v in pairs(pools) do
        LF_Set_SGV_To_Pool(context,v)
    end
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--
function LF_Get_Sand_Amount(context,pool)
    return ScriptLib.GetGroupVariableValue(context,"sand_amount_"..pool)
end

function LF_Change_Sand_Amount(context,pool,delta)
    local sand_amount = LF_Get_Sand_Amount(context,pool) 
    sand_amount = sand_amount + delta
    if sand_amount > pool_defs.overflow_max then
        sand_amount = pool_defs.overflow_max
    end
    if sand_amount < 0 then
        sand_amount = 0
    end
    ScriptLib.SetGroupVariableValue(context,"sand_amount_"..pool,sand_amount)

    LF_Set_SGV_To_Pool(context,pool)
end



function LF_Is_Pool_Empty(context,pool)
    return LF_Get_Sand_Amount(context,pool) <= 0
end

function LF_Is_Pool_Full(context,pool)
    return LF_Get_Sand_Amount(context,pool) > pool_defs.max
end

function LF_Is_Nozzole_Active(context,nozzole)
    if nozzole == -1 then
        return false
    end
    local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,nozzole)
    return state == 201
end

function LF_Set_Nozzole_Flow(context,nozzole)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, nozzole, "SGV_Is_Flow", 1)
end

function LF_Set_Nozzole_Freeze(context,nozzole)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, nozzole, "SGV_Is_Flow", 0)
end

function LF_Is_Up_Nozzole_Can_Flow(context,pool) 
    return LF_Get_Sand_Amount(context,pool) > pool_defs.up_nozzole_threshold
end

function LF_Is_Nozzole(context, config_id)
    if config_id == origin_defs.origin_nozzole then
        return true
    end
    for k,v in pairs(nozzoles) do
        if v.up_nozzole == config_id or v.down_nozzole == config_id then
            return true
        end
    end
    return false
end


--给池子上面写SGV
function LF_Set_SGV_To_Pool(context,pool)
    local sand_amount = LF_Get_Sand_Amount(context,pool) 
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, pool, "SGV_Sand_Amount", sand_amount)
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Set_Option(context,config_id)
    ScriptLib.PrintContextLog(context,"## [SandStair] LF_Set_Option：给"..config_id.."上选项")
    local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,config_id)
    if state == 0 then
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,config_id,{local_defs.option_active})
    end
    if state == 201 then
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,config_id,{local_defs.option_deactive})
    end 
end


function LF_Show_Option(context)
    
    ScriptLib.PrintContextLog(context,"## [SandStair] LF_Show_Option：显示选项")
    for k,v in pairs(nozzoles) do
        if v.up_nozzole ~= -1 and v.up_nozzole ~= 0 then
            LF_Set_Option(context,v.up_nozzole)
        end
        if v.down_nozzole ~= -1 and v.down_nozzole ~= 0 then
            LF_Set_Option(context,v.down_nozzole)
        end
    end
    LF_Set_Option(context,origin_defs.origin_nozzole)
end

------------------------------------------------------------------
Initialize()