--[[======================================
||	filename:       Activity_WindMaze_Normal
||	owner:          juntao.chen
||	description:    风场迷宫活动关卡流程控制
||	LogName:        Activity_WindMaze_Normal
||	Protection:     [Protection]
=======================================]]

--需求misc
--[[
    local defs ={
        gallery_id = 27004,
        finish_region = 111,
        challenge_id = 2,
        ball_challenge_id = 1,

    }
]]
--测试结束
local Stage_Normal = {
    BigOrb_Gadget_ID = 70800281,
    SmallOrb_Gadget_ID = 70800268,
    Coin_Gadget_ID = 70800269,
    Ball_Challenge_Time = 15,
}
local level_list = {
    [247021001] = 1,
    [247022002] = 2,
    [247023001] = 3,
    [247024001] = 4,
}

local temp_Variables = {
	{  name = "gm_Try_Start", value = 0, no_refresh = false },
	{  name = "gm_Try_End", value = 0, no_refresh = false },
	{  name = "element_ball", value = 0, no_refresh = false },
	{  name = "coin", value = 0, no_refresh = false },
	{  name = "killed_monster", value = 0, no_refresh = false },
	{  name = "rotate1", value = 0, no_refresh = false },
	{  name = "rotate2", value = 0, no_refresh = false },
	{  name = "gm_Try_Start_Ball", value = 0, no_refresh = false },
	{  name = "gm_Try_Finish_Ball", value = 0, no_refresh = false },
	{  name = "Ball_Challenge_Finish", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action_EVENT_GROUP_LOAD"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action_EVENT_VARIABLE_CHANGE"},
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false },
	{event = EventType.EVENT_ANY_GADGET_DIE, source = "", action = "action_EVENT_ANY_GADGET_DIE"},
	{event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", action = "action_EVENT_GADGET_STATE_CHANGE"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "Ball_Challenge", action = "action_EVENT_TIME_AXIS_PASS_Ball_Challenge"},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", action = "action_EVENT_GROUP_WILL_UNLOAD"},
	{event = EventType.EVENT_ANY_MONSTER_DIE, source = "", action = "action_EVENT_ANY_MONSTER_DIE"},
	{event = EventType.EVENT_GALLERY_STOP, source = "", action = "action_EVENT_GALLERY_STOP"},
	{event = EventType.EVENT_GALLERY_PLAYER_LEAVE_SCENE, source = "", action = "action_EVENT_GALLERY_PLAYER_LEAVE_SCENE"},
	{event = EventType.EVENT_DUNGEON_SETTLE, source = "", action = "action_EVENT_DUNGEON_SETTLE"},
	{event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE"},
    --
}
--团灭检测器
function action_EVENT_DUNGEON_ALL_AVATAR_DIE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_DUNGEON_ALL_AVATAR_DIE" )
    local _uidlist = ScriptLib.GetSceneUidList(context)
    if _uidlist == nil then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_DUNGEON_ALL_AVATAR_DIE:_uidlist == nil")
        return 0
    end
    for i = 1 ,#_uidlist do 
        if ScriptLib.IsPlayerAllAvatarDie(context,_uidlist[i]) == false then --任一活着则结束
            return 0
        end
    end
    ScriptLib.StopGalleryByReason(context, defs.gallery_id, 8)
    return 0
end
--处理地城关闭，如单人Esc退出
function action_EVENT_DUNGEON_SETTLE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_DUNGEON_SETTLE" )
    LF_Try_End(context,true)
    return 0
end
--处理联机时其中一人离开的情况
function action_EVENT_GALLERY_PLAYER_LEAVE_SCENE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GALLERY_PLAYER_LEAVE_SCENE" )
    local _region_eid = ScriptLib.GetGroupTempValue(context,"region_eid",{})
    LF_Check_Finish(context,false)
    return 0
end
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GALLERY_STOP |is_fail = "..evt.param2.." |reason = "..evt.param3 )
--[[     enum GalleryStopReason
    {
        GALLERY_STOP_NONE = 0;
        GALLERY_STOP_TIMEUP = 1;
        GALLERY_STOP_CLIENT_INTERRUPT = 2;
        GALLERY_STOP_LUA_INTERRUPT_SUCCESS = 3;
        GALLERY_STOP_LUA_INTERRUPT_FAIL = 4;
        GALLERY_STOP_OWNER_LEAVE_SCENE = 5;
        GALLERY_STOP_PLAY_INIT_FAILED = 6;  // 玩法启动失败
        GALLERY_STOP_OTHER_PLAYER_ENTER = 7;// 其他玩家进来
        GALLERY_STOP_AVATAR_DIE = 8;        // AVATAR阵亡
        GALLERY_STOP_FINISHED = 9;          // 完成gallery
        GALLERY_STOP_FUNGUS_ALL_DIE = 10;   // 3.2新增蕈兽团灭发起gallery stop
    } ]]
    if evt.param3 == 3 or evt.param3 == 9 then 
        ScriptLib.CauseDungeonSuccess(context)
    else
        ScriptLib.CauseDungeonFail(context)
    end
    return 0
end
function action_EVENT_ANY_MONSTER_DIE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ANY_MONSTER_DIE")
    ScriptLib.ChangeGroupVariableValue(context,"killed_monster",1)
    return 0
end
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GROUP_WILL_UNLOAD")
    LF_Try_End(context,true)
    return 0
end
function action_EVENT_TIME_AXIS_PASS_Ball_Challenge(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_TIME_AXIS_PASS_Ball_Challenge: evt.param1=" .. evt.param1)
    --重置各组吃球
    LF_Try_FailBall(context)
    --重置标记
    ScriptLib.SetGroupTempValue(context,"Ball_Cfgid",0,{})
    return 0
end
function action_EVENT_GADGET_STATE_CHANGE(context,evt)--吃大球
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GADGET_STATE_CHANGE: evt.param1=" .. evt.param1)
    --查询gadget_id
    local _gadgetid = 0
    for k,v in pairs(gadgets) do
        if v.config_id == evt.param2 then 
            _gadgetid = v.gadget_id
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GADGET_STATE_CHANGE: _gadgetid=" .. _gadgetid)
    if _gadgetid == Stage_Normal.BigOrb_Gadget_ID and evt.param1 == 201 then 
        --如果大球切了
        if ScriptLib.GetGroupTempValue(context,"Ball_Cfgid",{}) ==0 then
            --且没有正在进行的吃球挑战
            LF_Try_StartBall(context,evt.param2)
        end
    end
    return 0
end
function action_EVENT_ANY_GADGET_DIE(context,evt)--吃金币、吃小球
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ANY_GADGET_DIE: evt.param1=" .. evt.param1)
    --查询gadgetid
    local _gadgetid = 0
    for k,v in pairs(gadgets) do
        if v.config_id == evt.param1 then 
            _gadgetid = v.gadget_id
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ANY_GADGET_DIE:_gadgetid = ".._gadgetid)
    --金币
    if _gadgetid == Stage_Normal.Coin_Gadget_ID then
        ScriptLib.ChangeGroupVariableValue(context,"coin",1)
        --watcher单局收集金币数量
        local _uidlist = ScriptLib.GetSceneUidList(context)
        if _uidlist == nil then
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ANY_GADGET_DIE:_uidlist == nil")
            return 0
        end
        if level_list == nil then 
            return 0
        end
        if level_list[base_info.group_id] == nil then 
            return 0
        end
        for i = 1 , #_uidlist do 
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ANY_GADGET_DIE:level_list[base_info.group_id] = "..level_list[base_info.group_id])
            ScriptLib.AddExhibitionReplaceableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_"..level_list[base_info.group_id].."_Coin", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
        end
    end
    --小球
    if _gadgetid == Stage_Normal.SmallOrb_Gadget_ID then
        ScriptLib.ChangeGroupTempValue(context,"ball_count",-1,{})
        ScriptLib.ChangeGroupTempValue(context,"temp_ball_current_count",1,{})
        --update到服务器
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{["ball_current_count"] = ScriptLib.GetGroupTempValue(context,"temp_ball_current_count",{})})
    end
    return 0
end 
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ENTER_REGION:p1="..evt.param1.."|defs.finish_region="..defs.finish_region)
    if evt.param1 == defs.finish_region then
        ScriptLib.SetGroupTempValue(context,"region_eid",evt.source_eid,{})
        LF_Check_Finish(context,true)
    end
    if evt.param1 == defs.ability_region then
        if level_list == nil then
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ENTER_REGION:level_list == nil")
            return 0
        end
        if level_list[base_info.group_id] == nil then 
            return 0
        end
        if level_list[base_info.group_id] == 4 then 
            --ScriptLib.AttachGalleryTeamAbilityGroup(context, {evt.uid}, defs.gallery_id, 0)
        end
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_ENTER_REGION:清空陈列室替换值=".."Activity_WindField_"..level_list[base_info.group_id].."_Ball")
        --清空陈列室替换值
        --球 
        ScriptLib.ClearExhibitionReplaceableData(context, evt.uid, "Activity_WindField_"..level_list[base_info.group_id].."_Ball")
        --金币
        ScriptLib.ClearExhibitionReplaceableData(context, evt.uid, "Activity_WindField_"..level_list[base_info.group_id].."_Coin")
    end
    return 0
end
function LF_Check_Finish(context,is_enter_region)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:") 
--[[     --Step1 检查吃够球了没【砍了】
    local _maxcount = 0
    for k,v in pairs(gadgets) do
        if v.gadget_id == Stage_Normal.BigOrb_Gadget_ID then
            _maxcount = _maxcount + 1
        end
    end
    local _ball = ScriptLib.GetGroupVariableValue(context,"element_ball")
    if _ball < _maxcount then 
        --没吃够球，弹reminder，return
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:没吃够球，弹reminder，return") 
        ScriptLib.ShowReminder(context,470210101)
        return 0
    end ]]

    --Step2 检查都进region了没
        --2.1 取活着的玩家_alive_uidlist
    local _eid = ScriptLib.GetEntityIdByConfigId(context, defs.finish_region)
    local _count = ScriptLib.GetRegionEntityCount(context, { region_eid =_eid, entity_type = EntityType.AVATAR })
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:_count".._count) 
    local _alive_uidlist = {}
    local _uidlist = ScriptLib.GetSceneUidList(context)
    if _uidlist == nil then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:_uidlist == nil")
        return 0
    end
    for i = 1 , #_uidlist do
        if ScriptLib.IsPlayerAllAvatarDie(context, _uidlist[i]) == false then 
            table.insert(_alive_uidlist,_uidlist[i])
        end
    end
        --2.2 判断活着的玩家都到达
	if _count == 0 then 
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:终点位置没人") 
        --终点没人，return
		return 0
	end
    if _count ~= #_alive_uidlist then 
        --还有人没到达终点，return
        if is_enter_region == true then
            --如果这次检测是由enter_region引起，则提示玩家
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Check_Finish:需要全部人到达终点，弹reminder，return") 
            ScriptLib.ShowReminder(context,470210102)
        end
        return 0
    end

    --完成watcher[要先于gallerystop执行
    --watcher完成
    --local _uidlist = ScriptLib.GetSceneUidList(context)--上面有了
    if level_list == nil then 
        return 0
    end
    if level_list[base_info.group_id] == nil then 
        return 0
    end
    for i = 1 , #_uidlist do 
        ScriptLib.AddExhibitionReplaceableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_"..level_list[base_info.group_id].."_LevelFinish", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
    end

    --完成
    LF_Try_End(context,false)
    return 0
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_VARIABLE_CHANGE:"..evt.source_name.." = "..evt.param1)
    --gm
    if evt.source_name == "gm_Try_Start" and evt.param1 ~= 0 then
        LF_Try_Start(context,evt.param1)
    elseif evt.source_name == "gm_Try_End" and evt.param1 ~= 0 then
        LF_Try_End(context,true)
    elseif evt.source_name == "gm_Try_Start_Ball" then
        LF_Try_StartBall(context,ball_id)
    elseif evt.source_name == "gm_Try_Finish_Ball" then
        LF_Try_FinishBall(context)
    --gm结束
    --正式：
    elseif evt.source_name == "ball_count" then 
        if evt.param1 == 0 then 
            LF_Try_FinishBall(context)
        end
    elseif evt.source_name == "element_ball" then 
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})

    elseif evt.source_name == "killed_monster" then 
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})

    elseif evt.source_name == "coin" then 
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    end
    return 0
end
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal action_EVENT_GROUP_LOAD:")
    ScriptLib.SetGroupVariableValue(context,"element_ball",0)
    ScriptLib.SetGroupVariableValue(context,"coin",0)
    LF_Try_Start(context,2)
    return 0
end
function LF_Try_End(context,is_fail)
    if is_fail then 
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_End:true")
    else
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_End:false")
    end
    ScriptLib.StopGallery(context, defs.gallery_id, is_fail)
    return 0
end
function LF_Try_StartBall(context,ball_id)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall")
    local _get_config_suc = false
    --对大小球suite的操作
    for k,v in pairs(windball_list) do
        if k == ball_id then --找到对应配置
            _get_config_suc = true
            if suites[v] == nil then
                ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall:suites[v] == nil")
                return 0
            end
            --创建小球们
            ScriptLib.AddExtraGroupSuite(context,base_info.group_id,v)
            --记录有多少个小球（用于本次挑战计数，吃一个-1，直到0）
            ScriptLib.SetGroupTempValue(context,"ball_count",#suites[v].gadgets,{})
            --组织数据table，update到服务器
            local _uidlist = ScriptLib.GetSceneUidList(context)
            if _uidlist == nil then
                ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall:_uidlist == nil")
                return 0
            end
            local _time = defs.ball_challenge_time
            if _time == nil then 
                _time = Stage_Normal.Ball_Challenge_Time 
                ScriptLib.PrintGroupWarning(context,"## Activity_WindMaze_Normal LF_Try_StartBall:没配吃球挑战时间，设为20秒")
            else
            end
            local _score = {
                ["is_start"] = true,
                ["is_success"] = false,
                ["challenge_time"] = _time,
                ["show_id"] = defs.ball_challenge_id,
                ["ball_max_count"] = #suites[v].gadgets,
                ["ball_current_count"] = 0,
            }
    		ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
            --temp变量归零（用来每次吃球给服务器发"ball_current_count"）
            ScriptLib.SetGroupTempValue(context,"temp_ball_current_count",0,{})
            --记录当前处于哪组捡球小挑战。（完成的时候根据这个判断完成了哪组）
            ScriptLib.SetGroupTempValue(context,"Ball_Cfgid",ball_id,{})
            --计时
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall:_time=".._time)
            ScriptLib.InitTimeAxis(context,"Ball_Challenge",{_time},false)
        else
            --其他的大球暂时隐藏
            ScriptLib.SetGadgetStateByConfigId(context,k,201)
        end
    end
    if _get_config_suc == false then ScriptLib.PrintGroupWarning(context,"## Activity_WindMaze_Normal LF_Try_StartBall:找不到吃球配置，大球configid:"..ball_id) end
    return 0
end
function LF_Try_FailBall(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_FailBall")
    --结束捡球挑战
    local _score = {
        ["is_start"] = false,
        ["is_success"] = false,
        ["challenge_time"] = 0,
        ["show_id"] = defs.ball_challenge_id,
    }
    ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
    --切回原挑战
    local _score = {
        ["is_start"] = true,
        ["is_success"] = false,
        ["challenge_time"] = 180,
        ["show_id"] = defs.challenge_id,
    }
    ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
    local _cfgid = ScriptLib.GetGroupTempValue(context,"Ball_Cfgid",{})
    for k,v in pairs(windball_list) do
        if k == _cfgid then
            ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
            ScriptLib.SetGadgetStateByConfigId(context,k,0)
        else
            --未完成的大球重新显示
            if ScriptLib.GetGroupTempValue(context,"BigOrb_Is_Fisnish_"..k,{}) ~=1 then
                ScriptLib.SetGadgetStateByConfigId(context,k,0)
            end
        end
    end
    --重置标记
    ScriptLib.SetGroupTempValue(context,"Ball_Cfgid",0,{})
    return 0
end
function LF_Try_FinishBall(context)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_FinishBall")
    --结束捡球挑战
    local _score = {
        ["is_start"] = false,
        ["is_success"] = true,
        ["challenge_time"] = 0,
        ["show_id"] = defs.ball_challenge_id,
    }
    ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
    --切回原挑战
    local _score = {
        ["is_start"] = true,
        ["is_success"] = false,
        ["challenge_time"] = 180,
        ["show_id"] = defs.challenge_id,
    }
    ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
    --给大球计数+1
    ScriptLib.ChangeGroupVariableValue(context,"element_ball",1)
    --记录该组吃球已完成
    local _cfgid = ScriptLib.GetGroupTempValue(context,"Ball_Cfgid",{})
    ScriptLib.SetGroupTempValue(context,"BigOrb_Is_Fisnish_".._cfgid,1,{})
    --重置其他大球
    for k,v in pairs(windball_list) do
        if ScriptLib.GetGroupTempValue(context,"BigOrb_Is_Fisnish_"..k,{}) ~= 1 then 
            ScriptLib.SetGadgetStateByConfigId(context,k,0)
        end
    end
    --重置标记
    ScriptLib.SetGroupTempValue(context,"Ball_Cfgid",0,{})
    --停掉计时器
    ScriptLib.EndTimeAxis(context,"Ball_Challenge")
    --通知LD完成,值为大球的id
    ScriptLib.SetGroupVariableValue(context,"Ball_Challenge_Finish",_cfgid)
    --watcher单局收集风元素球数量
    local _uidlist = ScriptLib.GetSceneUidList(context)
    if _uidlist == nil then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall:_uidlist == nil")
        return 0
    end
    if level_list == nil then 
        return 0
    end
    if level_list[base_info.group_id] == nil then 
        return 0
    end
    for i = 1 , #_uidlist do 
        ScriptLib.AddExhibitionReplaceableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_"..level_list[base_info.group_id].."_Ball", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
    end
    return 0
end
function LF_Try_Start(context,show_id)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_Start: is_start = true")
    local uidlist = ScriptLib.GetSceneUidList(context)
    if uidlist == nil then
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_StartBall:uidlist == nil")
        return 0
    end
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Normal LF_Try_Start: #uidlist = "..#uidlist)
    ScriptLib.SetPlayerStartGallery(context,defs.gallery_id,uidlist)
    local _score = {
        ["is_start"] = true,
        ["is_success"] = false,
        ["challenge_time"] = 180,
        ["show_id"] = defs.challenge_id,
    }
    ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
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
            v.config_id = 50000000 + k
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize()