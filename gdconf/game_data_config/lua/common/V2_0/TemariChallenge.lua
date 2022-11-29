--2.0奥博伦派对玩法

--local defs = {
--	group_id = 111101122 ,
--    tamari_gadget_id = defs.temari_gadget_id,
--    host_option_id = 184,
--    guset_option_id = 185,
--    host_chest_id = 122001,
--}


local tempDefs = {
    pre_quest = 7217605,
    host_option = 2351,
    guest_option = 2350,
    find_ball_challenge_offline = 244,
    hide_ball_challenge = 236,
    find_ball_challenge = 235,
    father_hide_ball_challenge = 242,
    father_find_ball_challenge = 243,
    challenge_time = 30
}
local chests = {}
local temari_gadgets = {}
local Tri1 = {
    [1] = { name = "group_load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [2] = { name = "quest_finish", config_id = 8000002, event = EventType.EVENT_QUEST_FINISH, source = "",condition = "",action = "action_quest_finish",trigger_count= 0},
}
local Tri2 = {
    [1] = { name = "quest_start", config_id = 8000003, event = EventType.EVENT_QUEST_START, source = "",condition = "",action = "action_quest_start",trigger_count= 0},
    [2] = { name = "challenge_success", config_id = 8000004, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0},
	[3] = { name = "challenge_fail", config_id = 8000005, event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "",action = "action_challenge_fail",trigger_count= 0},
	[4] = { name = "select_option", config_id = 8000006, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0, forbid_guest = false  },
	[5] = { name = "group_refresh", config_id = 8000007, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0},
    [6] = { name = "gadget_create", config_id = 8000008, event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri1) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    for k,v in pairs(Tri2) do
		table.insert(triggers, v)
		table.insert(suites[2].triggers, v.name)
	end
    
    table.insert(chests,defs.chest_1)
    table.insert(chests,defs.chest_2)
    table.insert(chests,defs.chest_3)
    --table.insert(chests,defs.chest_online)
    table.insert(temari_gadgets,defs.temari_1)
    table.insert(temari_gadgets,defs.temari_2) 
    table.insert(temari_gadgets,defs.temari_3)
    table.insert(temari_gadgets,defs.temari_online)

	table.insert(variables,{ config_id=50000001,name = "has_hidden", value = 0,no_refresh = true})
    --记录uid的低四位
    table.insert(variables,{ config_id=50000002,name = "challenger_uid1", value = 0})
    --记录uid的高位，challenger_uid2*10000+challenger_uid就是最后正确的uid
    table.insert(variables,{ config_id=50000003,name = "challenger_uid2", value = 0})

    --记录放球的小数位
    table.insert(variables,{ config_id=50000004,name = "pos_x1", value = 0})
    table.insert(variables,{ config_id=50000005,name = "pos_z1", value = 0})
end

--------------------------------------------------------------------

--group load时，无事发生
function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"TMR: Group Load!")
    LF_Initiate_Play(context)
    
    return 0
end


--group refresh时，重置group状态，回到第一关
function action_group_refresh(context,evt)
    ScriptLib.PrintContextLog(context,"TMR: Group Refresh!")
    LF_Reset_Group(context)
    return 0
end

--任务开始时，加载下一关（单机挑战）
function action_quest_start(context,evt)
    ScriptLib.PrintContextLog(context,"TMR: Player has triggered some quest!!")
    --校验一下任务id，确保是奥博伦任务触发的任务开始
    if string.sub(evt.param1,1,5) == tostring(defs.FatherQuest) then
        ScriptLib.PrintContextLog(context,"TMR: Triggered quest is :"..evt.param1)
        LF_Set_Challenge_State(context,1)
        LF_Load_Next_Level(context)
        LF_Start_Challenge(context,0)
    end
    return 0
end

--操作台创建时，直接挂选项
function action_gadget_create(context,evt)
    if (evt.param1 == defs.temari_gadget_id) then
        LF_Set_Gadget_Option(context)
    end
    return 0 
end

function action_quest_finish(context,evt)
    ScriptLib.PrintContextLog(context,"TMR: pre quest has been finished, load the second suite!!")
    if (evt.param1 == tempDefs.pre_quest) then
        LF_Initiate_Play(context)
    end
    return 0
end

--选择了选项，根据当前主客机，触发不同的挑战（联机挑战）
function action_select_option(context,evt)
    --试图开启主机藏球挑战
    if evt.param2 == tempDefs.host_option then 
        --藏球挑战
        if LF_Is_Host(context) then
            if LF_Get_Challenge_State(context) == 10 or LF_Get_Challenge_State(context) == 12 then 
                --仅在联机玩法初始化以及主机已完成藏球的情况下，可以开启藏球挑战
                ScriptLib.PrintContextLog(context,"TMR: !!!!!!!!!!!!Hide ball challenge starts!!!!!!!")
                LF_Load_Online_Level(context,1)
                LF_Set_Challenge_State(context,11)
                LF_Start_Challenge(context,1)
                ScriptLib.DelWorktopOptionByGroupId(context,defs.group_id,defs.temari_gadget_id,tempDefs.host_option)
            elseif LF_Get_Challenge_State(context) == 11 then
                --主机在藏球挑战中再次交互，试图开启藏球挑战（理论上不存在这种情况）
                ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!! Cannot start duplicated challenges!!!")
            elseif LF_Get_Challenge_State(context) == 13 then
                --客机正在找球，不允许主机开启藏球挑战
                ScriptLib.SendServerMessageByLuaKey(context, "GUEST_CHALLENGING", {context.uid})
                ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!! Guest is challenging!!!")
            end
        else
            --客机不能开启主机的藏球挑战
            ScriptLib.SendServerMessageByLuaKey(context, "HOST_ONLY_CHALLENGE", {context.uid})
            ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!!! Guest cannot hide ball!")
        end
    end
    if evt.param2 == tempDefs.guest_option then
        --找球挑战（允许主机也开启挑战，因此这里不做主客机的区分）
        if LF_Get_Challenge_State(context)==12 then
            --主机已完成藏球，可以开始挑战
            ScriptLib.PrintContextLog(context,"TMR: !!!!!!!!!!!Find ball challenge starts!!!!!!!!!!!!")
            LF_Load_Online_Level(context,2)
            local ret = LF_Start_Challenge(context,2)
            if (ret == -1) then
                ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!!! Same gallery is activating!")
                LF_Online_Hide_Level(context)
                return 0
            end
            LF_Set_Challenge_State(context,13)
            ScriptLib.DelWorktopOptionByGroupId(context,defs.group_id,defs.temari_gadget_id,tempDefs.guest_option)
        elseif LF_Get_Challenge_State(context)== 10 then
            --主机没有藏球，不能挑战
            ScriptLib.SendServerMessageByLuaKey(context, "LEVEL_NOT_SETTLED", {context.uid})
            ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!!! Host hasn't hide the ball!")
        elseif LF_Get_Challenge_State(context)== 11 then
            --主机正在藏球，不能挑战
            ScriptLib.SendServerMessageByLuaKey(context, "LEVEL_SETTLING", {context.uid})
            ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!!! Host is hiding the ball!")
        elseif LF_Get_Challenge_State(context)== 13 then
            --挑战中试图再开启一个找球挑战，理论上不存在这种情况
            ScriptLib.PrintContextLog(context,"TMR: CHALLENGE FAILS!!!! Cannot start duplicated challenges!!!")
        end
    end
    
    return 0
end


--分别处理单机玩法和联机玩法挑战失败的情况
function action_challenge_fail(context,evt)

    if LF_Get_Play_Phase(context) == 1 then
        if evt.param1 == tempDefs.find_ball_challenge_offline then 
            ScriptLib.PrintContextLog(context,"TMR: Offline Challenge fails!")
            LF_Stop_Temari_Gallery(context)
            LF_Update_Quest_State(context,false)
        end
    else
        --联机挑战阶段挑战失败
        if evt.param1 == tempDefs.father_hide_ball_challenge then
            --藏球失败
            ScriptLib.PrintContextLog(context,"TMR: Host Challenge fails!")
            --创建一个藏球宝箱 5.27需求，不需要联机奖励宝箱了
            --ScriptLib.CreateGadget(context,{config_id=chests[#chests]})
            --修改挑战状态。如果玩家至少藏过一次球，则即使失败，也将状态置为12（即藏过球），否则置为10，认为没有藏球
            if (LF_Has_Hidden_Ball(context)) then
                LF_Set_Challenge_State(context,12)
            else
                LF_Set_Challenge_State(context,10)
            end
            LF_Set_Gadget_Option(context)
            --移除掉联机用的关卡布设
            LF_Online_Hide_Level(context)
            --LF_Teleport_Player(context)
        end
        if evt.param1 == tempDefs.father_find_ball_challenge then
            --客机找球挑战失败
            ScriptLib.PrintContextLog(context,"TMR: Guest Challenge fails!")
            LF_Set_Challenge_State(context,12)
            --移除掉联机用的关卡布设
            LF_Online_Hide_Level(context)
            LF_Set_Gadget_Option(context)
            LF_Stop_Temari_Gallery(context) 
        end
    end

    return 0
end


--分别处理单机玩法和联机玩法挑战成功的情况
function action_challenge_success(context,evt)
    
    ScriptLib.PrintContextLog(context,"TMR: Some challenge has been finished!!!")
    if LF_Get_Play_Phase(context) == 1 then
        if evt.param1 == tempDefs.find_ball_challenge_offline then  
            ScriptLib.PrintContextLog(context,"TMR: Offline Challenge success!")
            LF_Stop_Temari_Gallery(context)
            LF_Update_Quest_State(context,true)  
            --创建一个单机找球挑战宝箱，仅单机挑战的最后一关给一个宝箱
            if (LF_Get_OfflineChallenge_Level(context)-2 == 3) then
                ScriptLib.CreateGadget(context,{config_id=chests[LF_Get_OfflineChallenge_Level(context)-2]})
            end
        end
    else
        --联机挑战阶段挑战成功
        if evt.param1 == tempDefs.father_hide_ball_challenge then
            --藏球挑战成功
            ScriptLib.PrintContextLog(context,"TMR: Host Challenge finishes!")
            --创建一个藏球宝箱 5.27需求，不需要联机奖励宝箱了
            --ScriptLib.CreateGadget(context,{config_id=chests[#chests]})
            --修改挑战状态
            LF_Set_Challenge_State(context,12)
            LF_Set_Gadget_Option(context)
            LF_Teleport_Player(context)
        end
        if evt.param1 == tempDefs.father_find_ball_challenge then
            --找球挑战成功，挑战状态回到12
            ScriptLib.PrintContextLog(context,"TMR: Guest Challenge success!")
            LF_Set_Challenge_State(context,12)
            --移除掉联机用的关卡布设
            LF_Online_Hide_Level(context)
            LF_Set_Gadget_Option(context)
            LF_Stop_Temari_Gallery(context) 
        end
    end
    
    return 0
end

--------------------------------------------------------------------
--辅助方法-----------------------------------------------------------
--------------------------------------------------------------------


--关卡相关方法---------------------------------------------------

--初始化整个玩法的方法，仅当groupload时调用
function LF_Initiate_Play(context)
    local uidList = ScriptLib.GetSceneUidList(context)
    --上线的时候如果同时group load，可能找不到uidlist，做一个保护
    if (uidList == nil or #uidList == 0) then
        return 0
    end
    local avatar_entity = ScriptLib.GetAvatarEntityIdByUid(context, uidList[1])
    local quest_state = ScriptLib.GetQuestState(context, avatar_entity, tempDefs.pre_quest)
    ScriptLib.PrintContextLog(context,"TMR: Prequest state is: "..quest_state)

    if  ScriptLib.GetQuestState(context, avatar_entity, tempDefs.pre_quest) == QuestState.FINISHED then
        ScriptLib.PrintContextLog(context,"TMR: pre quest has been finished, group load!!")
        local ret = ScriptLib.GoToGroupSuite(context,defs.group_id,2)
        --将当前suite切换到2，确保下一次从suite3开始加载
        LF_Set_OfflineChallenge_Level(context,2)
        ScriptLib.PrintContextLog(context,"TMR: The result of loading suite 2 : "..ret)
    end
end

--加载单机挑战的下一个关卡
function LF_Load_Next_Level(context)
    local curLevel = LF_Get_OfflineChallenge_Level(context)
    curLevel = curLevel + 1
    ScriptLib.PrintContextLog(context,"TMR: Ready to load SUITE: "..curLevel)
    LF_Set_OfflineChallenge_Level(context,curLevel)
    ScriptLib.AddExtraGroupSuite(context,defs.group_id,curLevel)
end

--初始化联机玩法
function LF_Initiate_Online_Challenge(context)  
    --把交互用的奥博伦球创建出来
    ScriptLib.CreateGadget(context,{config_id = defs.temari_gadget_id})
    --给奥博伦交互球设置选项
    LF_Set_Gadget_Option(context)
end

--加载联机挑战的关卡
--phase = 1：主机藏球挑战；phase = 2：客机找球挑战
function LF_Load_Online_Level(context,phase)
    if ( phase == 1 ) then
        --加载最后一组suite（和LD约定最后一组suite为联机关卡）
        ScriptLib.AddExtraGroupSuite(context,0,#suites)
        --去掉场景内现在藏着的球
        ScriptLib.KillEntityByConfigId(context,{config_id = defs.temari_online})
    else
        --加载最后一组suite（和LD约定最后一组suite为联机关卡）
        ScriptLib.AddExtraGroupSuite(context,0,#suites)
        --把存储的球的位置加载出来
        local pos = LF_Load_Online_Temari_Pos(context)
	    ScriptLib.CreateGadgetByConfigIdByPos(context, defs.temari_online, {x=pos.x,y=pos.y,z=pos.z}, {x=0,y=0,z=0})
    end
end


--重置整个group的方法，将group还原至最初的状态
function LF_Reset_Group(context)
    if LF_Get_Play_Phase(context) == 1 then 
        LF_Set_OfflineChallenge_Level(context,2)
        LF_Set_Challenge_State(context,0)
    else
        --移除掉联机用的关卡布设
        ScriptLib.RemoveExtraGroupSuite(context,0,#suites)
        ScriptLib.KillEntityByConfigId(context,{config_id = defs.temari_online})
        LF_Set_Challenge_State(context,10)
        LF_Set_Gadget_Option(context)
    end
end


--gallery/challenge/quest相关方法--------------------------------------------------

--启动挑战的方法，对于联机挑战，需要把启动的子挑战挂在父挑战上一起启动。
--target:0：单机找球；1：联机藏球；2：联机找球
function LF_Start_Challenge(context,target)
    if LF_Get_Play_Phase(context) == 1 then
        --要求开启挑战，因为是单机的，直接开就可以了   
        ScriptLib.ActiveChallenge(context,tempDefs.find_ball_challenge_offline,tempDefs.find_ball_challenge_offline,tempDefs.challenge_time, 0, tempDefs.find_ball_challenge_offline, 1)
        LF_Start_Temari_Gallery(context)
        
    else
        if (target == 2) then
            local ret = LF_Start_Temari_Gallery(context)
            --如果gallery没有开出来，说明同scene下已经有一个同名gallery了，整个玩法都不允许开启
            if (ret == -1) then
                return -1
            end
            --开启挑战的时候，存一下开启挑战者的uid
            LF_Save_Challenger(context)
        end
        --联机状态下，要把子挑战挂给父挑战后再开启
        local challenge = 0
        local father_challenge = 0
        if (target == 1) then
            challenge = tempDefs.hide_ball_challenge
            father_challenge = tempDefs.father_hide_ball_challenge
        elseif target == 2 then
            challenge = tempDefs.find_ball_challenge_offline
            father_challenge = tempDefs.father_find_ball_challenge
        end
        local child_challenge_param_table = {tempDefs.challenge_time,0,challenge,1}
        ScriptLib.CreateFatherChallenge(context, father_challenge, father_challenge, tempDefs.challenge_time, {success=2, fail=1})
        ScriptLib.AttachChildChallenge(context, father_challenge, challenge, challenge, child_challenge_param_table, {context.uid},{success=1, fail=1})
        ScriptLib.StartFatherChallenge(context,father_challenge)
        
    end
    return 0
end

--终止挑战的方法，challenge：目标的挑战ID；
--target: 0:单机挑战；1：联机藏球；2：联机找球
--result：true=1，false=0
function LF_Stop_Challenge(context,target,result)

    if LF_Get_Play_Phase(context) == 1 then
        --单机的直接关掉即可
        
        ScriptLib.PrintContextLog(context,"TMR: Stop offline challenge here!!!")
        ScriptLib.StopChallenge(context,tempDefs.find_ball_challenge_offline,result)
    else
        if (target == 1) then 
            --结束联机藏球挑战
            ScriptLib.PrintContextLog(context,"TMR: Stop hide ball challenge with result: "..result)
            ScriptLib.StopChallenge(context,tempDefs.father_hide_ball_challenge,result)
        elseif (target == 2) then 
            --结束联机找球挑战
            ScriptLib.PrintContextLog(context,"TMR: Stop find ball challenge with result: "..result)
            ScriptLib.StopChallenge(context,tempDefs.father_find_ball_challenge,result)
        end
    end
end


--启动藏球的方向指示gallery
function LF_Start_Temari_Gallery(context)
    local ret = ScriptLib.SetPlayerStartGallery(context, 9001, {context.uid})
    --如果gallery没有开出来，说明同scene下已经有一个同名gallery了，整个玩法都不允许开启
    if (ret == -1) then
        return -1
    end
	local temari_pos = LF_Get_Temari_Pos(context)
    ScriptLib.SetHandballGalleryBallPosAndRot(context, 9001, {x=temari_pos.x,y=temari_pos.y,z=temari_pos.z}, {x=0,y=0,z=0})
end

--关闭藏球的方向指示gallery
function LF_Stop_Temari_Gallery(context)
    ScriptLib.StopGallery(context, 9001, true)
end


--根据参数更新单机挑战的任务状态，传入true为成功、false为失败
function LF_Update_Quest_State(context, questState)
    local curLevel = LF_Get_OfflineChallenge_Level(context)
    local quest_level = curLevel-2
    local quest_suffix = "01"
    if (questState) then
        quest_suffix = "01"
    else 
        quest_suffix = "02"
    end
    local quest_param = defs.group_id.."0"..quest_level..quest_suffix
    local ret = ScriptLib.AddQuestProgress(context,quest_param)

    ScriptLib.PrintContextLog(context,"TMR: quest param is "..quest_param)
    
    ScriptLib.PrintContextLog(context,"TMR: The result of Adding quest progress is "..ret)

    --不论挑战是否胜利，都要移除掉当前加载的关卡
    ScriptLib.PrintContextLog(context,"TMR: The removed suite is "..curLevel)
    ScriptLib.RemoveExtraGroupSuite(context,defs.group_id,curLevel)

    --如果胜利，且是单机挑战的最后一个suite，胜利后直接进入联机玩法状态
    if (questState) then
        if (curLevel+1>=#suites) then
            ScriptLib.PrintContextLog(context,"TMR:!!!!!!!!!!!!!!!!!Offline challenge has finished!!!!!!!!!!!!!!!!")
            LF_Set_Challenge_State(context,10)
            LF_Initiate_Online_Challenge(context)
        end
    end

    --如果挑战失败，要将当前的关卡向前回滚一关，这样下次开启任务才能再次开启当前关卡
    if (not questState) then
        LF_Set_OfflineChallenge_Level(context,curLevel-1)
    end
end

--通用类方法-----------------------------------------------------------

--将玩家传送回奥博伦球控制台附近
function LF_Teleport_Player(context)
    local temari_worktop_id = ScriptLib.GetEntityIdByConfigId(context,defs.temari_gadget_id)
	local temari_pos = ScriptLib.GetPosByEntityId(context, temari_worktop_id)

    local uidlist = ScriptLib.GetSceneUidList(context)
    ScriptLib.PrintContextLog(context,"TMR: Current host player is :"..uidlist[1])
    ScriptLib.PrintContextLog(context,"TMR: The context uid is: "..context.uid)
    if (LF_Is_Host(context)) then
         ScriptLib.TransPlayerToPos(context, {uid_list = {uidlist[1]}, pos = {x=temari_pos.x,y=temari_pos.y,z=temari_pos.z}, radius = 1, rot = {x=0, y=0, z=1},is_skip_ui=false} )    
    else
        ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=temari_pos.x,y=temari_pos.y,z=temari_pos.z}, radius = 1, rot = {x=0, y=0, z=1},is_skip_ui=false} )    
    end
end


--给奥博伦球gadget设置选项
function LF_Set_Gadget_Option(context)
    ScriptLib.SetWorktopOptionsByGroupId(context,defs.group_id,defs.temari_gadget_id,{tempDefs.guest_option,tempDefs.host_option})
end


--联机玩法中，隐藏关卡配置的方法，调用后隐藏掉当前的关卡配置以及放着的球
function LF_Online_Hide_Level(context)
    --干掉藏起来的球
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.temari_online)
    --干掉放置用关卡
    ScriptLib.RemoveExtraGroupSuite(context,0,#suites)
end

--通用的放球方法，把球放下来并记录其位置
function LF_Hide_Ball(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, uid_list[1])
	local pos = ScriptLib.GetPosByEntityId(context, avatar_id)
	ScriptLib.CreateGadgetByConfigIdByPos(context, defs.temari_online, {x=pos.x+1,y=pos.y+1.5,z=pos.z}, {x=0,y=0,z=0})
    --存一下球的位置，马上要销毁掉
    LF_Save_Online_Temari_Pos(context)
    LF_Online_Hide_Level(context)
end

--挑战开启时，将挑战者记录下来
function LF_Save_Challenger(context)
    ScriptLib.PrintContextLog(context,"TMR: Save challenger uid: "..context.uid)
    --拆一下uid存下来，防止位数超了
    local uid1 = context.uid % 10000    --低位
    local uid2 = math.floor(context.uid / 10000)    --高位

    ScriptLib.SetGroupVariableValue(context,"challenger_uid1",uid1)
    ScriptLib.SetGroupVariableValue(context,"challenger_uid2",uid2)

    ScriptLib.PrintContextLog(context,"TMR: Saving uid2"..uid2)
    ScriptLib.PrintContextLog(context,"TMR: Saving uid1"..uid1)
end

function LF_Is_Same_Challenger(context)
    local uid1 = ScriptLib.GetGroupVariableValue(context,"challenger_uid1")
    local uid2 = ScriptLib.GetGroupVariableValue(context,"challenger_uid2")

    local uid = uid2 * 10000 + uid1

    ScriptLib.PrintContextLog(context,"TMR: Player touching ball is: "..context.uid.." and the player set ball is "..uid)
    return context.uid == uid
end


-----CRUD类方法-----------------------------------------------------------

--改变当前玩法状态
--0：group初始化状态，完全没有开始
--1：单机挑战进行中（用level参数确定当前正在进行的单机关卡数）
--10：已完成单机挑战，联机挑战未开启
--11：主机进行藏球挑战
--12：主机已完成藏球
--13：客机进行找球挑战
function LF_Set_Challenge_State(context,target_state)
    ScriptLib.PrintContextLog(context,"TMR: Changing play state to: "..target_state)
    ScriptLib.SetGroupVariableValue(context,"ChallengeState",target_state)
end

--获取当前玩法状态
--0：group初始化状态，完全没有开始
--1：单机挑战进行中（用level参数确定当前正在进行的单机关卡数）
--10：已完成单机挑战，联机挑战未开启
--11：主机进行藏球挑战
--12：主机已完成藏球
--13：客机进行找球挑战
function LF_Get_Challenge_State(context)
    return ScriptLib.GetGroupVariableValue(context,"ChallengeState")
end

--设置单机挑战的当前关卡
function LF_Set_OfflineChallenge_Level(context,targetLevel)
    ScriptLib.SetGroupVariableValue(context,"ChallengeLevel",targetLevel)
end

--读取单机挑战的当前关卡
function LF_Get_OfflineChallenge_Level(context)
    return ScriptLib.GetGroupVariableValue(context,"ChallengeLevel")
end


--返回当前关卡的手鞠球位置
function LF_Get_Temari_Pos(context)
    if (LF_Get_Play_Phase(context) == 1) then 
        --一阶段获取手鞠球的位置
        local curLevel = LF_Get_OfflineChallenge_Level(context)
        local temari_entity_id = ScriptLib.GetEntityIdByConfigId(context,temari_gadgets[curLevel-2])
	    local temari_pos = ScriptLib.GetPosByEntityId(context, temari_entity_id)
        ScriptLib.PrintContextLog(context,"TMR: Temari pos: "..temari_pos.x..","..temari_pos.y..","..temari_pos.z)
        return temari_pos
    else
        --二阶段获取手鞠球的位置
        local temari_entity_id = ScriptLib.GetEntityIdByConfigId(context,defs.temari_online)
	    local temari_pos = ScriptLib.GetPosByEntityId(context, temari_entity_id)
        ScriptLib.PrintContextLog(context,"TMR: Temari pos: "..temari_pos.x..","..temari_pos.y..","..temari_pos.z)
        return temari_pos
    end
end

--存储联机玩法中当前球的位置
function LF_Save_Online_Temari_Pos(context)
    local pos = LF_Get_Temari_Pos(context)
    
    ScriptLib.PrintContextLog(context,"TMR: Save Temari pos: "..pos.x..","..pos.y..","..pos.z)
    local ret = ScriptLib.SetGroupVariableValue(context,"pos_x",math.floor(pos.x))
    ScriptLib.SetGroupVariableValue(context,"pos_y",math.ceil(pos.y))
    ScriptLib.SetGroupVariableValue(context,"pos_z",math.floor(pos.z))

    ScriptLib.SetGroupVariableValue(context,"pos_x1",math.floor((pos.x-math.floor(pos.x))*10))
    ScriptLib.SetGroupVariableValue(context,"pos_z1",math.floor((pos.z-math.floor(pos.z))*10))

    ScriptLib.PrintContextLog(context,"TMR: set pos ret = "..ret)
end

--读取联机玩法中当前球的位置
function LF_Load_Online_Temari_Pos(context)
    local pos_x =  ScriptLib.GetGroupVariableValue(context,"pos_x")
    local pos_y =  ScriptLib.GetGroupVariableValue(context,"pos_y")
    local pos_z =  ScriptLib.GetGroupVariableValue(context,"pos_z")

    local pos_x1 = ScriptLib.GetGroupVariableValue(context,"pos_x1")/10
    local pos_z1 = ScriptLib.GetGroupVariableValue(context,"pos_z1")/10
    ScriptLib.PrintContextLog(context,"TMR: Load Temari pos: "..pos_x+pos_x1..","..pos_y..","..pos_z+pos_z1)
    local pos = {x=pos_x+pos_x1,y=pos_y,z=pos_z+pos_z1}
    return pos
end


--返回玩家是否至少藏了一次球
function LF_Has_Hidden_Ball(context)
    if ScriptLib.GetGroupVariableValue(context,"has_hidden")==1 then
        return true
    else
        return false
    end
end


--返回当前整体玩法进度
--phase1：单机挑战阶段
--phase2：联机挑战阶段（phase 2下刷新group不会再回到phase 1）
function LF_Get_Play_Phase(context)
    if (LF_Get_Challenge_State(context)<10) then
        return 1
    else
        return 2
    end
end

--返回当前（触发事件）的玩家是否是主机
function LF_Is_Host(context)
    local uid_List = ScriptLib.GetSceneUidList(context)
    local host_id = uid_List[1]
    ScriptLib.PrintContextLog(context,"TMR: Current user id is "..context.uid)
    ScriptLib.PrintContextLog(context,"TMR: Host user id is "..host_id)
    return (host_id==context.uid) or (context.uid == 0)
end
--------------------------------------------------------------------

--server lua call---------------------------------------------------

--找球胜利，通过球自身的ability调用（调用时需要判定当前玩家主客机，如果是主机则无事发生）
function SLC_Find_Ball(context)
    if LF_Get_Play_Phase(context) == 1 then
        ScriptLib.PrintContextLog(context,"TMR: Player has found the ball!")
        local curLevel = LF_Get_OfflineChallenge_Level(context)
        ScriptLib.KillEntityByConfigId(context,{config_id = temari_gadgets[curLevel-2]})
        LF_Stop_Challenge(context,0,1)
    else
        --联机情况下，判断挑战开启者和碰到球的是否是一个人，如果不是则无事发生
        if (LF_Is_Same_Challenger(context)) then
            ScriptLib.PrintContextLog(context,"TMR: Guest has found the ball!")
            ScriptLib.KillEntityByConfigId(context,{config_id = defs.temari_online})
            --成就相关，如果当前完成的玩家并不是主机，则发送一次成就完成的消息
            if (not LF_Is_Host(context)) then
                ScriptLib.MarkPlayerAction(context, 6018 , 3 , 1)
            end
            LF_Stop_Challenge(context,2,1)
        end
    end
    return 0
end


--放球的server lua call，被主机的E技能键调用
function SLC_Hide_Ball(context)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
	local pos = ScriptLib.GetPosByEntityId(context, avatar_id)
	ScriptLib.CreateGadgetByConfigIdByPos(context, defs.temari_online, {x=pos.x,y=pos.y+1,z=pos.z}, {x=0,y=0,z=0})
    ----存一下球的位置，马上要销毁掉
    LF_Save_Online_Temari_Pos(context)
    LF_Stop_Challenge(context,1,1)
    LF_Online_Hide_Level(context)
    --藏球后，将藏球的标志置为1（说明玩家至少藏了一次球）
    ScriptLib.SetGroupVariableValue(context,"has_hidden",1)
    return 0
end

--------------------------------------------------------------------
Initialize()