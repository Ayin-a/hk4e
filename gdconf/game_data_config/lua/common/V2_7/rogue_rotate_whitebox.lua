--[[======================================
||	filename:       rogue_rotate_whitebox
||	owner:          juntao.chen
||	description:    旋转地城白盒用re(和谐)quire
||	LogName:        rogue_rotate_whitebox
||	Protection:     [Protection]
=======================================]]

--[[
该re‘quire只用来接收variable"Turn"=1、2、3、4消息，并修改core_config_id的state、通知city旋转
旋转完毕后，会发出variable"Turn"=0的消息

【物件旋转&状态记录实现方式】
prefab：
由三层节点组成，分别为1号轴、2号轴、3号轴。1号轴只会转动rotation.x、2号轴只会转动rotation.y、三号轴只会转动rotaion.z
这些轴的相对位置并不是固定的，高层级会影响低层级。所以要用tempvalue来记录轴在哪
SceneObj_Level_Common_Property_Prop_C2_RotateCore_01
    >Anchor_X
        >Anchor_Y
            >Anchor_Z
                >Cube
JSON层：
物件的state由一个三位数组成,数字从左到右分别代表三层节点的rotaion。
每个数字只能是0、1、2、3，分别代表rotation=0、90、180、270。
以上对应关系配置在JSON中的"turnStateMap"中。
lua层：
有三个tempvalue，Axis_1~3，分别代表1~3号轴在哪个面。
tempvalue值枚举：
    1   北
    2   顶
    3   西
    -1  南
    -2  底
    -3  东 
当玩家尝试使房间向[东、南、西、北]滚动时，调用不同的LF_Turn
]]

local rogue_rotate_whitebox = {
    core_config_id = {4009,4012},

    Other_Axis_List={    --该列表用于查询沿某面旋转时，转动的另外四个面分别是什么
        {2,3,-2,-3,},    --正向转动1面(北面)时，周边四个面顺序
        {3,1,-3,-1,},    --正向转动2面(顶面)时，周边四个面顺序
        {1,2,-1,-2,},    --正向转动3面(西面)时，周边四个面顺序
    },
}
local temp_Variables_Turn = {
	{  config_id=50000001,name = "Turn", value = 0, no_refresh = false },
	{  config_id=50000002,name = "Clear", value = 0, no_refresh = false },
	{  config_id=50000003,name = "Current_Room", value = 0, no_refresh = false },
}

local temp_Tirgger_Turn = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Turn", condition = "", action = "action_EVENT_VARIABLE_CHANGE_Turn",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Clear", condition = "", action = "action_EVENT_VARIABLE_CHANGE_Clear",trigger_count = 0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_Debug",trigger_count = 0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_Turn",trigger_count = 0},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "TurnEnd", condition = "", action = "action_EVENT_TIME_AXIS_PASS_TurnEnd",trigger_count = 0},
}
--清除localgadget
function action_EVENT_VARIABLE_CHANGE_Clear(context,evt)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox action_EVENT_VARIABLE_CHANGE_Clear:".."func")
    local _uid = ScriptLib.GetSceneUidList(context)[1]
    ScriptLib.SetTeamEntityGlobalFloatValue(context,{_uid}, "GV_Clear_Gadget", 1)
    return 0
end
function LF_Clear(context)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Clear:".."func")
    local _uid = ScriptLib.GetSceneUidList(context)[1]
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {_uid}, "GV_Clear_Gadget", 1)
    return 0
end
function action_EVENT_VARIABLE_CHANGE_Debug(context,evt)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox 变量变化|"..evt.source_name..":" .. evt.param2 .." > " .. evt.param1)
    return 0
end
function action_EVENT_GROUP_LOAD_Turn(context,evt)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox action_EVENT_GROUP_LOAD:".."func")
    --各轴物件的三个轴的默认位置。
    for i = 1 , #rogue_rotate_whitebox.core_config_id do
        ScriptLib.SetGroupTempValue(context,"Axis_"..i.."_1",1,{})
        ScriptLib.SetGroupTempValue(context,"Axis_"..i.."_2",2,{})
        ScriptLib.SetGroupTempValue(context,"Axis_"..i.."_3",3,{})
        ScriptLib.SetGroupTempValue(context,"SGV_Turn_".. i,0,{})
    end
    --当前房间是
    ScriptLib.SetGroupVariableValue(context,"Current_Room",-2)
    --四周房间是
    ScriptLib.SetGroupTempValue(context,"Room_W",3,{})
    ScriptLib.SetGroupTempValue(context,"Room_N",1,{})
    return 0
end
function action_EVENT_VARIABLE_CHANGE_Turn(context,evt)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox action_EVENT_VARIABLE_CHANGE:".."evt.source_name="..evt.source_name .. ", evt.param1 = ".. evt.param1)
    if evt.source_name == "Turn" then --玩家尝试向某方向滚动轴物件。由group逻辑修改。（LD发起）
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, rogue_rotate_whitebox.core_config_id[1], "SGV_Avatar_Transfer", evt.param1)
        if evt.param1 == 1 then --东
            LF_Turn(context, 1, -1,1)
        elseif evt.param1 == 2 then --南
            LF_Turn(context, 3, 1,1)
        elseif evt.param1 == 3 then --西
            LF_Turn(context, 1, 1,1)
        elseif evt.param1 == 4 then --北
            LF_Turn(context, 3, -1,1)
        end
    end
    return 0
end
--[[执行旋转（参数含义：
    Axis:绕着哪个面转动，详见上文关键字[tempvalue值枚举]
    direction:1为顺时针，-1为逆时针(其实就是使rotaion+90还是-90)
    core_id:转哪个物件
    
    比如尝试向东滚动，即绕着北面逆时针转动，调用方式:LF_Turn(context, 1, -1)
]]
function LF_Turn(context, Axis, direction,core_id)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."Axis="..Axis..", direction"..direction..", core_id"..core_id)
    --物件当前state：
    local _cur_state = ScriptLib.GetGroupTempValue(context,"SGV_Turn_"..core_id,{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_cur_state=".._cur_state)
    --查找123号轴哪个在这个面上（或反面，所以判断绝对值）：
    local _axis = 0
    local _axis_value = 0
    for i = 3 , 1 , -1 do 
        --此处为3、2、1的查找优先级，13号轴都能转的情况下，优先转3号轴。
        --因为：13轴在同一面的时候，转3轴可能导致Y轴走到上面，导致南北向无轴可用。由于prefab的层级关系，3号轴转动不影响12号轴，优先转3
        local __v = ScriptLib.GetGroupTempValue(context,"Axis_"..core_id.."_" ..i,{})
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."Axis_"..core_id.."_" ..i..".".."__v="..__v)
        if Axis == math.abs(__v) then 
            _axis = i           --确定转动该轴
            _axis_value = __v   --该轴所在面
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_axis=".._axis)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_axis_value=".._axis_value)
    local _axis_value_abs = math.abs(_axis_value)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_axis_value_abs=".._axis_value_abs)
    --转动方向（需要获取一遍轴的正负值，因为轴有可能在反面，此时转动方向就取反）
    local _dir = direction * _axis_value / _axis_value_abs
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_dir=".._dir)
    --state原值补零(强行3位数,用于后续拼接)
    local _str = string.format("%03d",_cur_state)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_str=".._str)
    --截取目标位（代表要被修改rotation的轴）
    local _num = string.sub(_str,_axis,_axis)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_num=".._num)
    --转换,算出新数字（根据转动方向要么+1要么-1,0123循环）
    _num = LF_Find_Next_Value_In_List(context,{"0","1","2","3"},_num,_dir)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_num=".._num)
    --替换旧数字
    local _result = ""
    for i = 1 ,3 do
        if _axis == i then
            _result = _result .. _num--如果是目标位，拼接上新数字
        else
            _result = _result .. string.sub(_str,i,i)--如果不是目标位，拼接原有数字
        end
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."coreid="..core_id.." | ".."_result=".._result)
    end
    --ScriptLib.SetGadgetStateByConfigId(context,rogue_rotate_whitebox.core_config_id,tonumber(_result))
    --判断其他轴是否要随着这次转动而变化。
    LF_Change_The_Other_Axis(context,_axis,_axis_value,direction,core_id)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."ChangeToTargetLevelTag param="..core_id .. "00" .. _result)
    ScriptLib.ChangeToTargetLevelTag(context, tonumber(core_id .. "00" .. _result))
    if core_id == 1 then 
        --转动外层
        local _other_core_dir = direction * -1
        LF_Turn(context, Axis, _other_core_dir,2)
        --拉镜头
        local _uid = ScriptLib.GetSceneUidList(context)[1]
        ScriptLib.SetTeamEntityGlobalFloatValue(context, {_uid}, "GV_Camera_Distance", 1)
        --切leveltag
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Turn:".."切leveltag ".."_result=".._result)
        --计算下一个房间
        LF_Get_Next_Room(context,Axis,direction)
    end
    --切state
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, rogue_rotate_whitebox.core_config_id[core_id], "SGV_Turn", tonumber(_result))
    ScriptLib.SetGroupTempValue(context,"SGV_Turn_".. core_id,tonumber(_result),{})
    --保底计时器
	ScriptLib.InitTimeAxis(context, "TurnEnd", {7}, false)
    return 0
end

--计算出下一个房间是啥
function LF_Get_Next_Room(context,Axis,direction)
    --只要知道共点的三个面是什么房间，就能确定六面，所以要存取当前房间、北边房间、西边房间
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Get_Next_Room:".."func")
    local _cur = ScriptLib.GetGroupVariableValue(context,"Current_Room")
    local _w = ScriptLib.GetGroupTempValue(context,"Room_W",{})
    local _n = ScriptLib.GetGroupTempValue(context,"Room_N",{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Get_Next_Room:".."_cur=".._cur .."|_w=".._w.."|_n=".._n)
    if Axis == 1 then 
        --N不动，W和cur根据direction动
        _result = LF_Find_Next_Value_In_List(context,rogue_rotate_whitebox.Other_Axis_List[math.abs(_n)],_cur,direction*math.abs(_n)/_n*(-1))
        ScriptLib.SetGroupTempValue(context,"nextroom", _result,{})
        if direction == 1 then 
        ScriptLib.SetGroupTempValue(context,"Room_W", _cur * (-1) ,{})
        else
            ScriptLib.SetGroupTempValue(context,"Room_W", _cur,{})
        end
    elseif Axis == 3 then 
        --W不动，N和cur根据direction动
        _result = LF_Find_Next_Value_In_List(context,rogue_rotate_whitebox.Other_Axis_List[math.abs(_w)],_cur,direction*math.abs(_w)/_w*-1)
        ScriptLib.SetGroupTempValue(context,"nextroom", _result,{})
        if direction == 1 then 
            ScriptLib.SetGroupTempValue(context,"Room_N", _cur ,{})
        else
            ScriptLib.SetGroupTempValue(context,"Room_N", _cur * (-1) ,{})
        end
    end
    return 0
end
--高层级的轴会影响低层级的轴：转1号轴影响23，转2号轴影响3，转3号轴会直接走到return
function LF_Change_The_Other_Axis(context,Rotated_Axis,Rotated_Axis_Value,direction,core_id)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:".."Rotated_Axis="..Rotated_Axis..", Rotated_Axis_Value="..Rotated_Axis_Value..", coreid="..core_id)
    for i = Rotated_Axis + 1,3 do
        --遍历低层级的轴
        local list = rogue_rotate_whitebox.Other_Axis_List[math.abs(Rotated_Axis_Value)]
        local _other_axis_value = ScriptLib.GetGroupTempValue(context,"Axis_"..core_id.."_" ..i,{})
        local _next_value = LF_Find_Next_Value_In_List(context,list,_other_axis_value,direction)
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:settemp - ".."Axis_"..core_id.."_" ..i.."=".._next_value)
        if _next_value ~= nil then
            --nil的情况，代表3号轴不在1号轴的周边四面，此时3号轴也不会变化。正常不会出现nil，因为13轴共线的时候优先转3
            ScriptLib.SetGroupTempValue(context,"Axis_"..core_id.."_" .. i, _next_value , {}) 
        else
            ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:[Warning]_next_value=nil!!!")
        end
    end
    --log
    local _v1 = ScriptLib.GetGroupTempValue(context,"Axis_"..core_id.."_1",{})
    local _v2 = ScriptLib.GetGroupTempValue(context,"Axis_"..core_id.."_2",{})
    local _v3 = ScriptLib.GetGroupTempValue(context,"Axis_"..core_id.."_3",{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:result core_id="..core_id.."|v1=".._v1.."|v2=".._v2.."|v3=".._v3)
--[[     local _axis_value = ScriptLib.GetGroupTempValue(context,Rotated_Axis,{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:".."_axis_value=".._axis_value)
    local _other_axis_value = ScriptLib.GetGroupTempValue(context,_other_axis,{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_The_Other_Axis:".."_other_axis_value=".._other_axis_value)
    --按照x、y、z的顺序，沿前面轴旋转时会影响后面，但后面轴不影响前面。
    if math.abs(_axis_value) > math.abs(_other_axis_value) then
        function LF_Change_Axis(context,Rotated_Axis,_other_axis,direction)
    end ]]
    return 0
end
--[[ --根据Rotated_Axis_Value、direction，修改Other_Axis的轴
function LF_Change_Axis(context,Rotated_Axis_Value,Other_Axis,direction)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_Axis:Rotated_Axis_Value="..Rotated_Axis_Value..", Other_Axis="..Other_Axis..", direction"..direction)
    --查[Other_Axis_List]得出新轴
    local _Other_Axis_Old_Value = ScriptLib.GetGroupTempValue(context,Other_Axis,{})
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_Axis:_Other_Axis_Old_Value=".._Other_Axis_Old_Value)
    local _TargetList =rogue_rotate_whitebox.Other_Axis_List[math.abs(Rotated_Axis_Value)]
    local _TargetAxis_New_Value
    for i = 1 , #_TargetList do
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_Axis:_TargetList[i]=".._TargetList[i])
        if _TargetList[i] == _Other_Axis_Old_Value then
            _TargetAxis_New_Value = LF_Find_Next_Value_In_List(context,_TargetList,i,direction)
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Change_Axis:_TargetAxis_New_Value=".._TargetAxis_New_Value)
    --赋值
    ScriptLib.SetGroupTempValue(context,Other_Axis,_TargetAxis_New_Value,{})
end ]]

--沿着list找上一个或下一个(首尾循环)
function LF_Find_Next_Value_In_List(context,list,v,direction)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox LF_Find_Next_Value_In_List:"..", v="..v..", direction"..direction)
    local origin_key = 0
    for i = 1 ,#list do
        if list[i] == v then
            origin_key = i
            break
        end
    end
    if origin_key == 0 then 
        return nil
    else
        if origin_key + direction == 0 then
            target_key = #list
        elseif origin_key + direction == #list +1 then
            target_key = 1
        else
            target_key = origin_key + direction
        end
        return list[target_key]
    end
end
function SLC_StageReady_Quest(context)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox SLC_StageReady_Quest:")
    ScriptLib.AssignPlayerShowTemplateReminder(context,177,{param_uid_vec={},param_vec={},uid_vec={context.uid}})
    return 0
end
function SLC_Reset_SGV(context)
    if ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id}) ~= rogue_rotate_whitebox.core_config_id[1] then return 0 end
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox SLC_Reset_SGV:")
    --查找当前玩家站的面是哪个，传值给"Current_Room",
--[[
    1   北
    2   顶
    3   西
    -1  南
    -2  底
    -3  东  
]]
    local _cur_bottom_room = ScriptLib.GetGroupTempValue(context,"nextroom",{})
	ScriptLib.SetGroupVariableValue(context, "Current_Room", _cur_bottom_room)
	ScriptLib.SetGroupVariableValue(context, "Turn", 0)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, rogue_rotate_whitebox.core_config_id[1], "SGV_Avatar_Transfer", 0)
    return 0
end
function action_EVENT_TIME_AXIS_PASS_TurnEnd(context,evt)
    ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox action_EVENT_TIME_AXIS_PASS_TurnEnd:")
    if ScriptLib.GetGroupVariableValue(context,"Turn") ~=0 then 
        ScriptLib.PrintContextLog(context,"## rogue_rotate_whitebox action_EVENT_TIME_AXIS_PASS_TurnEnd: 触发保底 Turn变量在7秒后还未归0!!!请检查SLC是否调用成功")

        local _cur_bottom_room = ScriptLib.GetGroupTempValue(context,"nextroom",{})
        ScriptLib.SetGroupVariableValue(context, "Current_Room", _cur_bottom_room)
        ScriptLib.SetGroupVariableValue(context, "Turn", 0)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, rogue_rotate_whitebox.core_config_id[1], "SGV_Avatar_Transfer", 0)

    end
    return 0
end
--[[
--游戏总时间到，执行：
function action_EVENT_TIME_AXIS_PASS_game(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_game:".."func")
    LF_Stage_End(context,3)
    return 0
end
]]

--初始化
function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger_Turn) do
        v.name = "temp_Tirgger_Turn_"..k
        v.config_id = 40000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables_Turn) do
		table.insert(variables,v)
	end
	return 0
end
Initialize()