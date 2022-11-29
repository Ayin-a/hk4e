--[[======================================
||	filename:       HM_FindTubby
||	owner:          juntao.chen
||	description:    家园group玩法--找阿圆
||	LogName:        HM_FindTubby
||	Protection:     [Protection]
=======================================]]

--[[【玩法简述】
    group由 1个操作台 & 12个阿圆(gadget) 组成
    开启操作台后，每个阶段会从所有阿圆中抽5个刷出；所有玩家开始寻找阿圆。
    每个阶段持续30秒或直到所有阿圆被找到。
    每个阶段结束后会立即开启新阶段。
    总时间（120s）结束后，强行结束阶段，清空重置group。
    所有玩家根据找到的阿圆数量计分。
    相邻两轮阿圆不会重复被选。
]]
--[[
    家园新增接口：
    计时相关
    EventType.EVENT_TIME_AXIS_PASSS
    criptLib.InitTimeAxis
    ScriptLib.EndTimeAxis
    清空物件(每阶段结束，未找到的阿圆会被清空，刷出新的一波)
    ScriptLib.KillEntityByConfigId
    创建物件(被找的阿圆不会在默认suite，会随机挑选n个创建)
    ScriptLib.CreateGadget
]]
--[[
    defs需求：
    defs.Game_Time = 120,                  --全局时长
    defs.Stage_Time = 30,                --每个阶段多久
    defs.Stage_Tubby_Count = 5,          --每个阶段要找多少个阿圆
    defs.Tubby_Count = 12,               --总共有多少个阿圆
]]

local HM_FindTubby = {
    Board_Gadget_ID = 77307018,     
    Tubby_Gadget_ID = 77307019,
    Game_Time = defs.Game_Time,                         --全局时长
    Stage_Time = defs.Stage_Time,                       --每个阶段多久
    Stage_Tubby_Count = defs.Stage_Tubby_Count,         --每个阶段要找多少个阿圆
    Tubby_Count = defs.Tubby_Count,                     --总共有多少个阿圆
    Tubby_Option_ID = 327,                              --阿圆的交互选项 geardata id
    galleryID = 20001
}

local temp_Variables = {
	{  config_id=50000001,name = "cur_tide_total_num", value = 0, no_refresh = false },
	{  config_id=50000002,name = "cur_tide_left_num", value = 0, no_refresh = false },
	{  config_id=50000003,name = "score", value = 0, no_refresh = false },
	{  config_id=50000004,name = "endgame", value = 0, no_refresh = false },
}


local temp_Tirgger = {
	{event = EventType.EVENT_SELECT_UIINTERACT, source = "", action = "action_EVENT_SELECT_UIINTERACT"},
	{event = EventType.EVENT_LEAVE_REGION, source = "", action = "action_EVENT_LEAVE_REGION",forbid_guest = false,},
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION",forbid_guest = false,},
	{event = EventType.EVENT_SELECT_OPTION, source = "", action = "action_EVENT_SELECT_OPTION",forbid_guest = false},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "stage", action = "action_EVENT_TIME_AXIS_PASS_stage"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "game", action = "action_EVENT_TIME_AXIS_PASS_game"},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", action = "action_EVENT_GROUP_WILL_UNLOAD"},
	{event = EventType.EVENT_GALLERY_START, source = "", action = "action_EVENT_GALLERY_START"},
	{event = EventType.EVENT_GALLERY_STOP, source = "", action = "action_EVENT_GALLERY_STOP"},
    --gm测试用
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action_EVENT_VARIABLE_CHANGE"},
}
--ENTER时，如果玩家还在gallery里，重新放回注册名单（用于处理重连、灭掉的情况）
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_ENTER_REGION:"..context.uid)
    if ScriptLib.IsGalleryStart(context, HM_FindTubby.galleryID) then 
        local _list = ScriptLib.GetGalleryUidList(context,HM_FindTubby.galleryID)
        for i = 1 , #_list do
            if _list[i] == context.uid then ScriptLib.SetGroupTempValue(context,"player_"..context.uid,1,{}) end
        end
    end
    return 0
end
--离场踢出注册名单
function action_EVENT_LEAVE_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_LEAVE_REGION:"..context.uid)
    ScriptLib.SetGroupTempValue(context,"player_"..context.uid,0,{})
    return 0
end
--gm测试指令
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_VARIABLE_CHANGE:".. "source_name=".. evt.source_name.."|Value="..evt.param1)
    return 0
end
--gallery开启时，玩法启动
function action_EVENT_GALLERY_START(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_GALLERY_START:".."func")
    --注册所有阿圆的config_id 顺便初始化tempvalue
    local _tubby_count = 0
    for k , v in pairs(gadgets) do
        if v.gadget_id == HM_FindTubby.Tubby_Gadget_ID then 
            _tubby_count = _tubby_count +1
            ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_UIINTERACT:注册".."Tubby_".._tubby_count..", cid="..v.config_id)
            ScriptLib.SetGroupTempValue(context,"Tubby_".._tubby_count,v.config_id,{})
            ScriptLib.SetGroupTempValue(context,"Used_".._tubby_count,0,{})
            ScriptLib.SetGroupTempValue(context,"cid_selectable_"..v.config_id,1,{})
        end
    end
    --校验阿圆数量，不对则退出报错
    if _tubby_count ~= HM_FindTubby.Tubby_Count then
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_UIINTERACT:".."[Warnning]阿圆数量不对".."_tubby_count=".._tubby_count.."HM_FindTubby.Tubby_Count"..HM_FindTubby.Tubby_Count)
        return 0
    end
    --注册参与者的uid，用于拾取校验
    local _uidlist = ScriptLib.GetSceneUidList(context)
    for i = 1 ,#_uidlist do
        ScriptLib.SetGroupTempValue(context,"player_".._uidlist[i],1,{})    
        ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore: 注册uid|".. "player_".._uidlist[i])
    end
    ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore:".. "cur_tide_total_num="..HM_FindTubby.Stage_Tubby_Count)
    ScriptLib.UpdatePlayerGalleryScore(context, HM_FindTubby.galleryID, {["cur_tide_total_num"] = HM_FindTubby.Stage_Tubby_Count})
    --开始流程
	ScriptLib.InitTimeAxis(context, "game", {HM_FindTubby.Game_Time}, false)
    LF_Stage_Start(context)
    return 0
end
--gallery被中断时的处理
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_GALLERY_STOP:".."func")
    LF_Stage_End(context,4)
    return 0
end
--unload时关gallery
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_GROUP_WILL_UNLOAD:".."func")
    
	ScriptLib.StopGalleryByReason(context, HM_FindTubby.galleryID, 2)
    return 0
end
--游戏总时间到，执行：
function action_EVENT_TIME_AXIS_PASS_game(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_game:".."func")
    LF_Stage_End(context,3)
    return 0
end
--点击计分板“开始游戏”选项，执行：
function action_EVENT_SELECT_UIINTERACT(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_UIINTERACT:lua版本[2022_3_25_205659]".."| [evt.param1]="..evt.param1.."|group_id="..base_info.group_id)
    --判断交互对象是不是计分板
--[[     if evt.param1 ~= 2 then 
        ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_UIINTERACT:".."[Warnning]交互id不对")
        return 0 
    end ]]
    --开gallery
    if ScriptLib.StartHomeGallery(context, HM_FindTubby.galleryID, context.uid) == -1 then
        ScriptLib.SendServerMessageByLuaKey(context, "HOMEOWRLD_DUPLICATE_GALLERY", {context.uid})
        return 0
    end
    --关闭计分板交互
    for k , v in pairs(gadgets) do
        if v.gadget_id == HM_FindTubby.Board_Gadget_ID then
            ScriptLib.SetGadgetStateByConfigId(context, v.config_id, 201)
            break
        end
    end
    return 0
end

--每轮开始时生成所有阿圆
function LF_Stage_Start(context)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."func")
    --先计算出要生成哪几个
    local _create_list = LF_Cal_Tubby(context,HM_FindTubby.Stage_Tubby_Count)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."#_create_list="..#_create_list)
    --create
    for i = 1 , #_create_list do
        ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."i="..i)
        local _cid = ScriptLib.GetGroupTempValue(context,"Tubby_".._create_list[i],{})
        ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."正在创建：Tubby_".._create_list[i]..", cid=".._cid)
        ScriptLib.CreateGadget(context,{config_id = _cid})
        ScriptLib.SetWorktopOptionsByGroupId(context,base_info.group_id,_cid, {HM_FindTubby.Tubby_Option_ID})
        ScriptLib.SetGroupTempValue(context,"cid_selectable_".. _cid,1,{}) --防止重复拾取标记
        ScriptLib.SetGroupTempValue(context,"Used_".._create_list[i] , 1 , {}) --用过标记
    end
    --stage计时器
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."InitTimeAxis stage|"..HM_FindTubby.Stage_Time-5 .."|"..HM_FindTubby.Stage_Time)
	ScriptLib.InitTimeAxis(context, "stage", {HM_FindTubby.Stage_Time-5,HM_FindTubby.Stage_Time}, true)
    --通知gallery这一波stage的计时
    ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore:".. "stage_time="..HM_FindTubby.Stage_Time)
    ScriptLib.UpdatePlayerGalleryScore(context, HM_FindTubby.galleryID, {["stage_time"] = HM_FindTubby.Stage_Time})
    --初始化:"已找到的阿圆"计数器
    ScriptLib.SetGroupTempValue(context,"cur_stage_Tubby_found",0,{})
    ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore:".. "cur_tide_left_num="..HM_FindTubby.Stage_Tubby_Count)
    ScriptLib.UpdatePlayerGalleryScore(context, HM_FindTubby.galleryID, {["cur_tide_left_num"] = HM_FindTubby.Stage_Tubby_Count})
    --reminder
    local _curuidlist = ScriptLib.GetSceneUidList(context)
    local _targetuidlist = {}
    for i = 1 , #_curuidlist do
        ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."player_".._curuidlist[i])
        if ScriptLib.GetGroupTempValue(context,"player_".._curuidlist[i],{}) == 1 then 
            ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."player_".._curuidlist[i].." = 1")
            table.insert(_targetuidlist,_curuidlist[i])
        end
    end
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_Start:".."#_targetuidlist="..#_targetuidlist)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, _targetuidlist, "GV_Reminder_3", 1)
    --ScriptLib.AssignPlayerShowTemplateReminder(context, 176, {param_vec={},param_uid_vec={},uid_vec=_targetuidlist})
    return 0
end

--不放回抽取n只阿圆(排除上一轮抽过的)
function LF_Cal_Tubby(context,n)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Cal_Tubby:".."func")
    --先确定哪些上一轮没用过
    local _list_temp = {}
    for i = 1 , HM_FindTubby.Tubby_Count do
        if ScriptLib.GetGroupTempValue(context,"Used_"..i , {}) ~= 1 then
            ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Cal_Tubby:".."如果上一轮没用过，加入_list_temp="..i)
            --如果上一轮没用过，加入_list_temp
            table.insert(_list_temp,i)
        else
            ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Cal_Tubby:".."如果上一轮用过，将用过标记重置="..i)
            --如果上一轮用过，将用过标记重置
            ScriptLib.SetGroupTempValue(context,"Used_"..i , 0 , {})
        end
    end
    --开抽（从_list_temp中不放回抽取n个到_list_result）
    local _list_result = {}
    math.randomseed(ScriptLib.GetServerTime(context))
    for i = 1 , n do 
        local _rand = math.random(#_list_temp)
        ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Cal_Tubby:".."踢出temp，加入result，_rand=".._rand..", _list_temp[_rand]=".._list_temp[_rand])
        --踢出temp，加入result
        table.insert(_list_result,_list_temp[_rand])
        table.remove(_list_temp,_rand)
    end
    return _list_result
end

--和阿圆交互，执行：
function action_EVENT_SELECT_OPTION(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_OPTION:")
    if ScriptLib.GetGroupTempValue(context,"player_"..context.uid,{}) ~= 1 then 
        ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.uid}, "GV_Reminder_1", 1)
        --ScriptLib.AssignPlayerShowTemplateReminder(context, 174, {param_vec={},param_uid_vec={},uid_vec={context.uid}})
        ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_OPTION:".. "该玩家无法拾取")
        return 0
    end
    if ScriptLib.GetGroupTempValue(context,"cid_selectable_".. evt.param1,{}) == 1 then 
        ScriptLib.SetGroupTempValue(context,"cid_selectable_".. evt.param1,0,{}) --防止重复拾取标记  重置
        --给玩家计分
        ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore:".. "score="..1)  
        ScriptLib.UpdatePlayerGalleryScore(context, HM_FindTubby.galleryID, {["score"] = 1})
        ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_SELECT_OPTION:".."有人捡到了阿圆,uid="..context.uid)
        ScriptLib.KillEntityByConfigId(context, {config_id=evt.param1, entity_type = EntityType.GADGET})
        --计算本波剩余数量，更新gallery显示
        ScriptLib.ChangeGroupTempValue(context,"cur_stage_Tubby_found",1,{})		
        local _found = ScriptLib.GetGroupTempValue(context,"cur_stage_Tubby_found",{})
        if HM_FindTubby.Stage_Tubby_Count - _found > 0 then
            ScriptLib.PrintContextLog(context,"## HM_FindTubby UpdatePlayerGalleryScore:".. "cur_tide_left_num="..HM_FindTubby.Stage_Tubby_Count-_found)
            ScriptLib.UpdatePlayerGalleryScore(context, HM_FindTubby.galleryID, {["cur_tide_left_num"] = HM_FindTubby.Stage_Tubby_Count-_found})
        end
        --判断本轮阿圆是不是找完
        if _found == HM_FindTubby.Stage_Tubby_Count then
            LF_Stage_End(context,1)
        end
    end
    return 0
end
--阶段倒计时结束，执行：
function action_EVENT_TIME_AXIS_PASS_stage(context,evt)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_stage:".."evt.param1 = "..evt.param1)
    if evt.param1 == 1 then 
        --reminder
        local _curuidlist = ScriptLib.GetSceneUidList(context)
        local _targetuidlist = {}
        for i = 1 , #_curuidlist do
            ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_stage:".."player_".._curuidlist[i])
            if ScriptLib.GetGroupTempValue(context,"player_".._curuidlist[i],{}) == 1 then 
                ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_stage:".."player_".._curuidlist[i].." = 1")
                table.insert(_targetuidlist,_curuidlist[i])
            end
        end
        ScriptLib.PrintContextLog(context,"## HM_FindTubby action_EVENT_TIME_AXIS_PASS_stage:".."#_targetuidlist="..#_targetuidlist)
        ScriptLib.SetTeamEntityGlobalFloatValue(context, _targetuidlist, "GV_Reminder_2", 1)
        --ScriptLib.AssignPlayerShowTemplateReminder(context, 175, {param_vec={},param_uid_vec={},uid_vec=_targetuidlist})
    end
    if evt.param1 == 2 then 
        LF_Stage_End(context,2)
    end
    return 0
end

--阶段结束，有4个原因：1找到全部阿圆；2stage结束；3game结束；4客户端UI手动中断gallery
function LF_Stage_End(context,reason)
    ScriptLib.PrintContextLog(context,"## HM_FindTubby LF_Stage_End:".."reason="..reason)
    --如果是阿圆被找完，重置时间轴
    if reason == 1 then
    end
    --如果是倒计时结束，清空剩余阿圆
    if reason == 2 then
        for i = 1 , HM_FindTubby.Tubby_Count do
            local _cid = ScriptLib.GetGroupTempValue(context,"Tubby_" .. i ,{})
            if ScriptLib.GetGroupTempValue(context,"cid_selectable_".._cid,{}) == 1 then 
                ScriptLib.KillEntityByConfigId(context, {config_id=_cid, entity_type = EntityType.GADGET})
                ScriptLib.SetGroupTempValue(context,"cid_selectable_".. _cid,0,{}) --防止重复拾取标记  重置
            end
        end
    end
    --如果是总时间完结，游戏结束，return
    if reason == 3 then
        ScriptLib.EndTimeAxis(context,"stage")
        ScriptLib.StopGallery(context, HM_FindTubby.galleryID, false)
        ScriptLib.RefreshGroup(context,{group_id = base_info.group_id,suite = 1})
        return 0
    end
    --如果是gallery中断，游戏结束，return
    if reason == 4 then
        ScriptLib.EndTimeAxis(context,"stage")
        ScriptLib.EndTimeAxis(context,"game")
        ScriptLib.RefreshGroup(context,{group_id = base_info.group_id,suite = 1})
        return 0
    end
    --如果游戏还未结束，重新刷下一轮阿圆
    LF_Stage_Start(context)
    return 0
end

--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = "temp_Trigger_"..k
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()