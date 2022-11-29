--[[======================================
||	filename:       Activity_WindMaze_Battle
||	owner:          juntao.chen
||	description:    风场迷宫活动关卡流程控制
||	LogName:        Activity_WindMaze_Battle
||	Protection:     [Protection]
=======================================]]

--需求misc
--[[
    local defs ={
        gallery_id = 27004,
        finish_region = 111,
    }
]]
--测试结束
local Stage_Battle = {
    Coin_Gadget_ID = 70800269,
    Revive_Point = 1148
}
local temp_Variables = {
	{  name = "coin", value = 0, no_refresh = false },
	{  name = "killed_monster", value = 0, no_refresh = false },
	{  name = "cur_stage", value = 0, no_refresh = false },
	{  name = "end", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action_EVENT_VARIABLE_CHANGE"},
	{event = EventType.EVENT_ANY_GADGET_DIE, source = "", action = "action_EVENT_ANY_GADGET_DIE"},
	{event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", action = "action_EVENT_GROUP_WILL_UNLOAD"},
	{event = EventType.EVENT_ANY_MONSTER_DIE, source = "", action = "action_EVENT_ANY_MONSTER_DIE"},
	{event = EventType.EVENT_GALLERY_STOP, source = "", action = "action_EVENT_GALLERY_STOP"},
	{event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", action = "action_EVENT_DUNGEON_ALL_AVATAR_DIE"},
	{event = EventType.EVENT_DUNGEON_SETTLE, source = "", action = "action_EVENT_DUNGEON_SETTLE"},
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION"},
    --
}
--处理玩家进场清空陈列室替换值
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_ENTER_REGION" )
    if evt.param1 == defs.ability_region then
        if level_list[base_info.group_id] ~= nil then
            return 0
        end
        ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_ENTER_REGION:清空陈列室替换值=".."Activity_WindField_"..level_list[base_info.group_id].."_Ball")
        --金币
        ScriptLib.ClearExhibitionReplaceableData(context, evt.uid, "Activity_WindField_5_Coin")
    end
	return 0
end
--处理地城关闭，如单人Esc退出
function action_EVENT_DUNGEON_SETTLE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_DUNGEON_SETTLE" )
    LF_Try_End(context,true)
    return 0 
end
--团灭检测器
function action_EVENT_DUNGEON_ALL_AVATAR_DIE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_DUNGEON_ALL_AVATAR_DIE|evt.uid="..evt.uid)
    local _uidlist = ScriptLib.GetSceneUidList(context)
    for i = 1 ,#_uidlist do 
        if ScriptLib.IsPlayerAllAvatarDie(context,_uidlist[i]) == false then --任一活着则结束
            return 0
        end
    end
    ScriptLib.SetGroupVariableValue(context,"cur_stage",0)
    return 0
end
function action_EVENT_GALLERY_STOP(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_GALLERY_STOP |is_fail = "..evt.param2.." |reason = "..evt.param3 )
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
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_ANY_MONSTER_DIE")
    --watcher累计杀怪
    local _uidlist = ScriptLib.GetSceneUidList(context)
    for i = 1 , #_uidlist do 
        ScriptLib.AddExhibitionAccumulableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_5_Monster", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
    end        
    ScriptLib.ChangeGroupVariableValue(context,"killed_monster",1)
    return 0
end
function action_EVENT_GROUP_WILL_UNLOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_GROUP_WILL_UNLOAD")
    LF_Try_End(context,true)
    return 0
end
function action_EVENT_ANY_GADGET_DIE(context,evt)--吃金币
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_ANY_GADGET_DIE: evt.param1=" .. evt.param1)
    --查询gadgetid
    local _gadgetid = 0
    for k,v in pairs(gadgets) do
        if v.config_id == evt.param1 then 
            _gadgetid = v.gadget_id
            break
        end
    end
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_ANY_GADGET_DIE:_gadgetid = ".._gadgetid)
    --金币
    if _gadgetid == Stage_Battle.Coin_Gadget_ID then
        ScriptLib.ChangeGroupVariableValue(context,"coin",1)
        ScriptLib.ChangeGroupTempValue(context,"level_5_coin_sum",1,{})
        --watcher单局吃金币
        local _uidlist = ScriptLib.GetSceneUidList(context)
        for i = 1 , #_uidlist do 
            ScriptLib.AddExhibitionReplaceableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_5_Coin", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
        end        
    end
    return 0
end 
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_VARIABLE_CHANGE:"..evt.source_name.." = "..evt.param1)
    if evt.source_name == "cur_stage" then
        local _uidlist = ScriptLib.GetSceneUidList(context)
        if evt.param1 == 1 then 
            --第一阶段先开gallery
            ScriptLib.SetPlayerStartGallery(context,defs.gallery_id,_uidlist)
            --设置复活点
            ScriptLib.SetGalleryRevivePoint(context, defs.gallery_id, base_info.group_id, Stage_Battle.Revive_Point)
        elseif evt.param1 == 6 then
            --watcher完成
            for i = 1 , #_uidlist do 
                ScriptLib.AddExhibitionReplaceableDataAfterSuccess(context, _uidlist[i], "Activity_WindField_5_LevelFinish", 1, {play_type=ExhibitionPlayType.Gallery,gallery_id=defs.gallery_id})
            end        
            --最后完成
            LF_Try_End(context,false)
        elseif evt.param1 == 0 then
            if ScriptLib.IsGalleryStart(context, defs.gallery_id) then
                ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_VARIABLE_CHANGE:StopGalleryByReason")
                ScriptLib.StopGalleryByReason(context, defs.gallery_id, 8)
            else
                ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_VARIABLE_CHANGE:CauseDungeonFail")
                 ScriptLib.CauseDungeonFail(context)
            end
            return 0
        else
            --第二到四阶段，关旧的挑战
            local _score = {
                ["is_start"] = false,
                ["is_success"] = false,
                ["challenge_time"] = 0,
                ["show_id"] = stage_challenge_id[evt.param1 - 1],
            }
            ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
        end
        if  evt.param1 ~= 6  then
            --无论什么阶段，都开新的挑战
            ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle action_EVENT_VARIABLE_CHANGE:stage_challenge_id[evt.param1]="..stage_challenge_id[evt.param1])
            local _score = {
                ["is_start"] = true,
                ["is_success"] = false,
                ["challenge_time"] = stage_challenge_time[evt.param1],
                ["show_id"] = stage_challenge_id[evt.param1],
            }
            ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,_score)
        end
        ScriptLib.SetGroupVariableValue(context,"killed_monster",0)
        ScriptLib.SetGroupVariableValue(context,"coin",0)
    elseif evt.source_name == "killed_monster" then 
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
    elseif evt.source_name == "coin" then 
        ScriptLib.UpdatePlayerGalleryScore(context,defs.gallery_id,{[evt.source_name] = evt.param1})
        --二阶段吃金币奖励buff
        if ScriptLib.GetGroupVariableValue(context,"cur_stage") == 2 and evt.param1 == defs.stage2_coin_goal then 
            local _uidlist = ScriptLib.GetSceneUidList(context)
            for i = 1 , #_uidlist do 
                --ScriptLib.AttachGalleryTeamAbilityGroup(context, {_uidlist[i]}, defs.gallery_id, 0)
                ScriptLib.SetTeamServerGlobalValue(context, _uidlist[i], "SGV_WindField_Buff_1", 1)
            end
            ScriptLib.ChangeGroupTempValue(context,"data_buff_times",1,{})
        end
        --三阶段吃金币奖励buff
        if ScriptLib.GetGroupVariableValue(context,"cur_stage") == 4 and evt.param1 == defs.stage4_coin_goal then 
            local _uidlist = ScriptLib.GetSceneUidList(context)
            for i = 1 , #_uidlist do 
                --ScriptLib.AttachGalleryTeamAbilityGroup(context, {_uidlist[i]}, defs.gallery_id, 0)
                ScriptLib.SetTeamServerGlobalValue(context, _uidlist[i], "SGV_WindField_Buff_2", 1)
            end
            ScriptLib.ChangeGroupTempValue(context,"data_buff_times",1,{})
        end
    elseif evt.source_name == "end" then
        ScriptLib.StopGallery(context, defs.gallery_id, true)
    end
    return 0
end
function LF_Try_End(context,is_fail)
    ScriptLib.PrintContextLog(context,"## Activity_WindMaze_Battle LF_Try_End:")
    ScriptLib.StopGallery(context, defs.gallery_id, is_fail)
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