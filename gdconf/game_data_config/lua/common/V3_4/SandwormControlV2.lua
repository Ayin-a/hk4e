--[[======================================
||	filename:	
||	owner: 		luyao.huang
||	description:	
||	LogName:	
||	Protection:	
=======================================]]--


------
local local_defs = {
    request_list_capacity = 3,
    --占据90010000后的若干字段，不要占用这些字段的var
    array_base_offset = 90010000
}

local request_struct = 
{
    group_id = "group_id",
    priority = "priority",
}

--所有数组定义
--结构为：[数组名] = 最大容量
local arrays = 
{
    [request_struct.group_id] = {capacity = local_defs.request_list_capacity},
    [request_struct.priority] = {capacity = local_defs.request_list_capacity},
}



local Tri = {
    [1] = { name = "group_will_unload_sandworm_control_V2", config_id = 10030001, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_sandworm_control_V2", trigger_count = 0},
  
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    local current_offset = local_defs.array_base_offset
    for k,v in pairs(arrays) do
        local array_name = k
        local array_capacity = v.capacity
        for i = 1, array_capacity do
            local var_id = current_offset + i
            table.insert(variables,{ config_id = var_id,  name = array_name.."_"..tostring(i), value = -1})
        end
        current_offset = current_offset + array_capacity
    end

    table.insert(variables,{ config_id = 80010001,  name = "max_priority_request_index", value = -1})


end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_group_will_unload_sandworm_control_V2(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] Group_will_unload: group即将卸载，清空指令列表")
    for i = 1, local_defs.request_list_capacity do
        LF_Remove_Request_From_List_By_Index(context,i)
    end
    ScriptLib.SetGroupVariableValue(context,"max_priority_request_index",-1)
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

--请求新增沙虫参数
function LF_Request_Create_Sandworm_Params(context,prev_context,group_id,priority)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Request_Create_Sandworm_Timeaxis: 外部请求：请求新增沙虫参数")
    local create_request = 
    {
        group_id = group_id,
        priority = priority,
    }
    local ret = LF_Insert_Request_To_List(context,create_request)
    return ret
end

--请求清除沙虫参数
function LF_Request_Remove_Sandworm_Params(context,prev_context,destroy_request_id)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Request_Create_Sandworm_Timeaxis: 外部请求：请求清除沙虫参数")
    local index = LF_Get_Request_Index_From_List_By_Request_Id(context,destroy_request_id)
    if index == -1 then
        return -1
    end
    LF_Remove_Request_From_List_By_Index(context,index)
    return 0
end



--将一个请求置入请求列表
function LF_Insert_Request_To_List(context,request)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Insert_Request_To_List: 将请求置入请求列表")
    local i = LF_Array_Get_First_Empty_I(context,request_struct.group_id)
    if i == -1 then
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Insert_Request_To_List: 请求列表没有空位了！！")
        return -1
    end
    local group_id = request.group_id
    local priority = request.priority

    LF_Array_Set_I(context,request_struct.group_id,i,group_id)
    LF_Array_Set_I(context,request_struct.priority,i,priority)

    --如果当前请求优先级大于当前列表内的最大请求优先级，更新最大优先级
    if priority > LF_Get_Max_Priority_Request(context).priority then
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Insert_Request_To_List: 输入请求高于当前最大优先级，进行更新")
        LF_Update_Max_Priority_Index(context,i)
    end
    return 0
end


--根据index清除一个列表中的请求
function LF_Remove_Request_From_List_By_Index(context,i)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Insert_Request_To_List: 将请求从请求列表移除")

    LF_Array_Set_I(context,request_struct.group_id,i,-1)
    LF_Array_Set_I(context,request_struct.priority,i,-1)

    if i == ScriptLib.GetGroupVariableValue(context,"max_priority_request_index") then
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Remove_Request_From_List_By_Index: 更新当前最大优先级请求")
        LF_Calc_Max_Priority_Request_Index(context)
    end
    return 0
end


--更新当前最大优先级
function LF_Update_Max_Priority_Index(context,index)
    ScriptLib.SetGroupVariableValue(context,"max_priority_request_index",index)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] LF_Update_Max_Priority_Index: 更新最大优先级请求id，id为"..index)
end


--计算当前列表中最大优先级的请求的index
function LF_Calc_Max_Priority_Request_Index(context)
    local max_priority = -999
    local max_priority_index = -1
    for i = 1, arrays[request_struct.priority].capacity do
        local priority = LF_Array_Get_I(context,request_struct.priority,i)
        if priority > max_priority then
            max_priority = priority
            max_priority_index = i
        end
    end
    ScriptLib.SetGroupVariableValue(context,"max_priority_request_index",max_priority_index)
end


--从请求列表中获取一个请求的index（requestid查询，只查到第一个）
function LF_Get_Request_Index_From_List_By_Request_Id(context,request_id)
    for i = 1, arrays[request_struct.group_id].capacity do
        if LF_Array_Get_I(context,request_struct.group_id,i) == request_id then
            return i
        end
    end
    return -1
end

--从请求列表中获取一个请求（id查询）
function LF_Get_Request_From_List_By_Index(context,i)
    local ret_request = 
    {
        group_id = LF_Array_Get_I(context,request_struct.group_id,i),
        priority = LF_Array_Get_I(context,request_struct.priority,i),
        sandworm_params_config_id = LF_Array_Get_I(context,request_struct.sandworm_params_config_id,i)
    }
    return ret_request
end



--获取最大优先级的请求（也是现在沙虫使用的参数）
function LF_Get_Max_Priority_Request(context)
    local index = ScriptLib.GetGroupVariableValue(context,"max_priority_request_index")
    return LF_Get_Request_From_List_By_Index(context,index)
end


--获取请求列表当前非空元素的个数
function LF_Get_Request_List_Count(context)
    local count = 0
    for i = 1, arrays[request_struct.group_id].capacity do
        local group_id = LF_Array_Get_I(context,request_struct.group_id,i)
        if group_id > 0 then
            count = count + 1
        end
    end
    return count
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      数组方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--
function LF_Array_Get_I(context,array_name,i)
    return ScriptLib.GetGroupVariableValue(context,array_name.."_"..tostring(i))
end

function LF_Array_Set_I(context,array_name,i,v)
    ScriptLib.SetGroupVariableValue(context,array_name.."_"..tostring(i),v)
end

--返回数组中第一个非空值
function LF_Array_Get_First_Empty_I(context,array_name)
    for i = 1, arrays[array_name].capacity do
        if LF_Array_Get_I(context,array_name,i) == -1 then
            return i
        end     
    end
    return -1
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


function LF_Print_Table(context,print_table)
    for k,v in pairs(print_table) do
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] "..k.." : "..v)
    end
end

function LF_Print_Current_Request_List(context)
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] ==================")
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] 开始打印当前请求列表")
    for i = 1, local_defs.request_list_capacity do
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] group_id:              ")
        ScriptLib.PrintContextLog(context,"## [SandwormControlV2] group_id: "..i)
        for k,v in pairs(arrays) do
            local value = LF_Array_Get_I(context,k,i)
            ScriptLib.PrintContextLog(context,"## [SandwormControlV2] "..k.." : "..value)
        end  
    end
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] 打印结束")
    ScriptLib.PrintContextLog(context,"## [SandwormControlV2] ==================")
end






------------------------------------------------------------------
Initialize()