--[[======================================
||	filename:	SandPipe
||	owner: 		luyao.huang
||	description:	3.3流沙管道
||	LogName:	SandPipe
||	Protection:	
=======================================]]--

------
local local_defs = {
    base_interval = 1,
    option_active = 5000,
    option_deactive = 5001,
    option_redirection = 5002,
}


local worktop_state_def = 
{
    deactive = 0,
    active = 201,
    locked = 202
}

local I_connector_state_def = 
{
    deactive = 0,
    active = 201
}

local L_connector_state_def = 
{
    deactive = 0,
    active_1 = 201,
    active_2 = 202
}

local container_state_def = 
{
    deactive = 0,
    active = 201
}

local light_state_def = 
{
    deactive = 0,
    active = 201
}


local Tri = {
    [1] = { name = "group_load", config_id = 10000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "gadget_state_change", config_id = 10000002, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0},
    [3] = { name = "select_option", config_id = 10000003, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [4] = { name = "time_axis_pass", config_id = 10000004, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end


end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandPipe] action_group_load：流沙管道group加载")
    LF_Start_Sand_Flow(context,0)
    return 0
end




function action_gadget_state_change(context,evt)

    if LF_Is_Connector(context,evt.param2) then
        ScriptLib.PrintContextLog(context,"## [SandPipe] action_gadget_state_change：连接器"..evt.param2.."状态变化")
        LF_Start_Sand_Flow(context,evt.param2)
    end

    if LF_Is_Worktop(context,evt.param2) and evt.param3 == worktop_state_def.locked and evt.param1 == worktop_state_def.deactive then
        ScriptLib.PrintContextLog(context,"## [SandPipe] action_gadget_state_change：操作台解锁")
        if not LF_Is_In_Sandflow(context) then
            --当操作台的状态从202转到0状态时，说明操作台被解锁，如果当前不在流沙状态，就上选项，否则等流沙结束统一上选项
            local worktop = evt.param2
            LF_Set_Worktop_Option_State(context,worktop,true)
        end
    end

    return 0
end

function action_select_option(context,evt)
    local worktop = evt.param1
    if evt.param2 == local_defs.option_active then
        local connector = LF_Get_Connector_By_Worktop(context,evt.param1)
        ScriptLib.SetGadgetStateByConfigId(context,connector,I_connector_state_def.active)
        ScriptLib.SetGadgetStateByConfigId(context,worktop,worktop_state_def.active)
    end
    if evt.param2 == local_defs.option_deactive then
        local connector = LF_Get_Connector_By_Worktop(context,evt.param1)
        ScriptLib.SetGadgetStateByConfigId(context,connector,I_connector_state_def.deactive)
        ScriptLib.SetGadgetStateByConfigId(context,worktop,worktop_state_def.deactive)
    end
    if evt.param2 == local_defs.option_redirection then
        local connector = LF_Get_Connector_By_Worktop(context,evt.param1)
        local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,connector)
        ScriptLib.SetGadgetStateByConfigId(context,worktop,worktop_state_def.active)
        if state == L_connector_state_def.active_1 then
            ScriptLib.SetGadgetStateByConfigId(context,connector,L_connector_state_def.active_2)
        elseif state == L_connector_state_def.active_2 then
            ScriptLib.SetGadgetStateByConfigId(context,connector,L_connector_state_def.active_1)
        end
    end
    return 0
end


function action_time_axis_pass(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandPipe] action_time_axis_pass：时间轴tick，名字为"..evt.source_name)
    if string.sub(evt.source_name,0,10) == "container_" then
        ScriptLib.PrintContextLog(context,"## [SandPipe] action_time_axis_pass：链路时间轴tick，当前为链路上第"..evt.param1.."个物件")
        local container_id = tonumber(string.sub(evt.source_name,11,-1)) 
        local between_stream = LF_Get_Stream_From_First_Inactive_Light(context,container_id)
        --时间轴tick次数，即亮到了stream上的第几个灯
        local k = evt.param1 
        if LF_Is_Light(context,between_stream[1]) then
            ScriptLib.SetGadgetStateByConfigId(context,between_stream[1],light_state_def.active)
        end
        if LF_Is_Container(context,between_stream[1]) then
            ScriptLib.PrintContextLog(context,"## [SandPipe] action_time_axis_pass：链路时间轴结束，链路上所有物件状态转换完毕")
            ScriptLib.SetGadgetStateByConfigId(context,between_stream[1],container_state_def.active)
            local axis_num = ScriptLib.GetGroupTempValue(context,"active_axis_num",{})
            axis_num = axis_num - 1
            ScriptLib.ChangeGroupTempValue(context,"active_axis_num",-1,{})
            if axis_num <= 0 then
                ScriptLib.PrintContextLog(context,"## [SandPipe] action_time_axis_pass：所有时间轴结束，本次流沙结束")
                LF_Stop_Sand_Flow(context)
            end
            
        end
    end
    return 0
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--


function LF_Start_Sand_Flow(context,connector_id)
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Start_Sand_Flow：开始本次流沙，本次流沙来源于连接器"..connector_id)
    LF_Hide_Option(context) 
    --检查所有通路，找到因这次转换连接器而发生联通变化的通路
    local flag = true
    ScriptLib.SetGroupTempValue(context,"active_axis_num",0,{})
    for k,v in pairs(streams) do
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Start_Sand_Flow：检查容器"..k.."对应的链路")
        local container_state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,k)
        local is_connected = LF_Is_Container_Connected(context,k)
        --如果这次改动连接上了容器，且容器之前状态为0
        --将改动的连接器到容器间的所有灯顺次点亮
        if is_connected and container_state == container_state_def.deactive then
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Start_Sand_Flow：容器"..k.."为空，且链路联通了")
            flag = false
            local stream = LF_Get_Stream_From_First_Inactive_Light(context,k)
            local axis = LF_Create_Stream_Axis(context,stream)
            ScriptLib.InitTimeAxis(context,"container_"..k,axis,false)
            ScriptLib.ChangeGroupTempValue(context,"active_axis_num",1,{})
        end
        --如果这次改动断开了容器，且容器之前状态为201
        --将改动的连接器到容器间的所有灯立刻熄灭
        if not is_connected and container_state == container_state_def.active then
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Start_Sand_Flow：容器"..k.."为满，且链路断开了")
            local stream = LF_Get_Stream_From_Origin(context,k) 
            for i = 1, #stream do
                --检查当前灯是否在当前任何已联通的链路中，如果是，则无事发生
                if not LF_Is_In_Connected_Stream(context,stream[i]) then
                    ScriptLib.SetGadgetStateByConfigId(context,stream[i],light_state_def.deactive)
                end
            end
        end
    end
    if flag then
        LF_Stop_Sand_Flow(context)
    end
end

function LF_Stop_Sand_Flow(context)
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Stop_Sand_Flow：结束本次流沙")
    LF_Show_Option(context)
end







function LF_Show_Option(context)
    
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Show_Option：显示选项")
    local connectors = LF_Get_All_Connectors(context)
    for k,v in pairs(connectors) do
        local worktop = connector_to_worktop[v]
        --允许有的connector没有对应的worktop，用其他方式解锁。如果没找到对应worktop就跳过去
        if worktop ~= nil then
            LF_Set_Worktop_Option_State(context,worktop,true)
        end
    end
end

function LF_Hide_Option(context)
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Hide_Option：隐藏选项")
    local connectors = LF_Get_All_Connectors(context)
    for k,v in pairs(connectors) do
        local worktop = connector_to_worktop[v]
        --允许有的connector没有对应的worktop，用其他方式解锁。如果没找到对应worktop就跳过去
        if worktop ~= nil then
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：从连接器"..v.."对应的操作台清除选项")
            LF_Set_Worktop_Option_State(context,worktop,false)
        else
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：没有找到连接器"..v.."对应的操作台，直接返回")
        end
    end
end



function LF_Set_Worktop_Option_State(context,worktop,enable)
    local connector = LF_Get_Connector_By_Worktop(context,worktop)
    --允许有的connector没有对应的worktop，用其他方式解锁。如果没找到对应worktop就跳过去
    if connector == nil then
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：没有找到操作台"..worktop.."对应的连接器，直接返回")
        return
    end
    local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,connector)
    local worktop_state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,worktop)
    if enable then
        --如果操作台状态是202，那么说明操作台未解锁，不能上选项
        if worktop_state ~= worktop_state_def.locked then
            if LF_Get_Connector_Type(context,connector) == "I" then
                if state == I_connector_state_def.deactive then
                    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：在I型连接器"..worktop.."添加激活选项")
                    ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,worktop,{local_defs.option_active})
                end
                --if state == I_connector_state_def.active then
                --    ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,worktop,{local_defs.option_deactive})
                --end
            else
                if state == L_connector_state_def.deactive then
                    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：在L型连接器"..worktop.."添加激活选项")
                    ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,worktop,{local_defs.option_active})
                end
                if state == L_connector_state_def.active_1 or state == L_connector_state_def.active_2 then
                    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：在L型连接器"..worktop.."添加转向选项")
                    ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,worktop,{local_defs.option_redirection})
                end
            end
        end
    else
        if LF_Get_Connector_Type(context,connector) == "I" then
            if state == I_connector_state_def.deactive then
                ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：从I型连接器"..worktop.."删除激活选项")
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_active)
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_deactive)
            end
            if state == I_connector_state_def.active then
                ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：从I型连接器"..worktop.."删除关闭选项")
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_active)
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_deactive)
            end
        else
            if state == L_connector_state_def.deactive then
                ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：从L型连接器"..worktop.."删除激活选项")
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_redirection)
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_active)
            end
            if state == L_connector_state_def.active_1 or state == L_connector_state_def.active_2 then
                ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Set_Worktop_Option_State：从L型连接器"..worktop.."删除转向选项")
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_redirection)
                ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id,worktop,local_defs.option_active)
            end
        end
    end
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      核心方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--从源头出发，找到指定container_id对应的链路上，第一个未激活的物件开始，向下游找到所有物件
function LF_Get_Stream_From_First_Inactive_Light(context,container_id)
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Get_Stream_From_Origin: 获取源头到容器"..container_id.."之间的第一个非激活物件开始后的所有物件")
    local whole_stream = streams[container_id]
    local stream = {}
    for i = 1, #whole_stream do
        if not LF_Is_Connector(context, whole_stream[i]) then
            local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,whole_stream[i])
            if state == light_state_def.deactive then 
                table.insert(stream,whole_stream[i])
            end
        end
    end
    table.insert(stream,container_id)
    return stream
end




--找到连接器和容器之间所有非连接器物件，包括容器本身
function LF_Get_Stream_From_Origin(context,container_id)
    
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Get_Stream_From_Origin: 获取源头和容器"..container_id.."之间的所有非连接器物件")
    local whole_stream = streams[container_id]
    local stream = {}
    for i = 1, #whole_stream do
        if not LF_Is_Connector(context, whole_stream[i]) then
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Get_Stream_Between_Connector_And_Container：物件："..whole_stream[i])
            table.insert(stream,whole_stream[i])
        end
    end
    table.insert(stream,container_id)
    return stream
end

--给定一个容器，判断容器是否与源头相连
function LF_Is_Container_Connected(context,container_id)
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：检查"..container_id.."与源头是否联通")
    local stream = streams[container_id]
    local flag = true
    for i = 1, #stream do
        local state = ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,stream[i])
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：检查"..stream[i].."的状态为"..state)
        if LF_Is_Connector(context,stream[i]) then
            local connector_type = LF_Get_Connector_Type(context,stream[i])
            ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：是connector，类型为"..connector_type)
            if connector_type == "I" then
                if state ~= I_connector_state_def.active then
                    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：I型连接器"..stream[i].."是断开的")
                    flag = false
                    return false
                end
            elseif connector_type == "L" then
                if state ~= L_connector_state_def.active_1 and state ~= L_connector_state_def.active_2 then
                    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：L型连接器"..stream[i].."是断开的")
                    flag = false
                    return false
                end
                if i < #stream then
                    if L_connections[stream[i]][state] ~= stream[i+1] then
                        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_Container_Connected：L型连接器"..stream[i].."方向不对，是断开的")
                        flag = false
                        return false
                    end
                end
            end
        end
    end
    if flag == true then
        return true
    end
end

--返回一个物件是否处于一个联通的链路中
function LF_Is_In_Connected_Stream(context,config_id)
    for k,v in pairs(streams) do
        for i = 1, #v do
            if config_id == v[i] then
                if LF_Is_Container_Connected(context,k) then
                    return true
                end
            end
        end
    end
    return false
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

--返回一个configid是否是容器
function LF_Is_Container(context,config_id)
    return LF_Is_In_Table(context,containers,config_id)
end

--返回一个configid是否是连接器
function LF_Is_Connector(context,config_id)
    return LF_Is_In_Table(context,I_connectors,config_id) or LF_Is_In_Table(context,L_connectors,config_id)
end

--返回一个configid是否是指示灯
function LF_Is_Light(context,config_id)
    return LF_Is_In_Table(context,lights,config_id)
end

--返回一个configid是否是操作台
function LF_Is_Worktop(context,config_id)
    return LF_Is_In_Table(context,worktops,config_id)
end


--是否处于流沙状态中
function LF_Is_In_Sandflow(context)	
    ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Is_In_Sandflow：当前激活的链路条数为"..ScriptLib.GetGroupTempValue(context, "active_axis_num", {base_info.group_id}))
    return ScriptLib.GetGroupTempValue(context, "active_axis_num", {base_info.group_id}) > 0
end


--获取一个连接器的类型（I或L）
function LF_Get_Connector_Type(context,config_id)
    if not LF_Is_Connector(context,config_id) then
        return nil
    end
    if LF_Is_In_Table(context,I_connectors,config_id) then
        return "I"
    end
    if LF_Is_In_Table(context,L_connectors,config_id) then
        return "L"
    end
end

--获取所有Connector的config_id表
function LF_Get_All_Connectors(context)
    local connectors = {}
    for k, v in pairs(I_connectors) do
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Get_All_Connectors：将I型连接器"..v.."加入allconnectors")
        table.insert(connectors,v)
    end
    for k, v in pairs(L_connectors) do
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Get_All_Connectors：将L型连接器"..v.."加入allconnectors")
        table.insert(connectors,v)
    end
    return connectors
end


function LF_Get_Connector_By_Worktop(context,worktop)
    for k,v in pairs(connector_to_worktop) do
        if v == worktop then
            return k
        end
    end
    return nil
end

--输入一个stream，根据这个stream生成一个逐渐启动的时间轴
function LF_Create_Stream_Axis(context,stream)
    local axis = {}
    local axis_time = 0
    for i = 1, #stream do
        local flag = false
        if special_interval ~= nil then
            for k,v in pairs(special_interval) do
                if v.upstream == stream[i] and v.downstream == stream[i+1] then
                    axis_time  = axis_time + v.interval
                    flag = true
                    break
                end
            end
        end
        if not flag then
            axis_time = axis_time + base_interval
        end
        table.insert(axis,axis_time)
    end
    return axis
end


function LF_Get_Gadget_Id_By_Config_Id(context,config_id)
    for k,v in pairs(gadgets) do
        if v.config_id == config_id then
            return v.gadget_id
        end
    end
    return nil
end

function LF_Is_In_Table(context,t,value)
    if t == nil then
        return false
    end
    for k,v in pairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

function LF_Print_Table(context,t)
    for k,v in pairs(t) do 
        ScriptLib.PrintContextLog(context,"## [SandPipe] LF_Print_Table"..k.." : "..v)
    end
end
------------------------------------------------------------------

Initialize()