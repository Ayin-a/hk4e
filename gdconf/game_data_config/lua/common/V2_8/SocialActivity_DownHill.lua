--[[======================================
||	filename:	SocialActivity_DownHill
||	owner: 		luyao.huang
||	description:	2.8社交活动-跳楼挑战
||	LogName:	SocialActivity_DownHill
||	Protection:	
=======================================]]--

------

local local_defs = 
{
    --激流纹章
    coin_id = 70380240,
    mechanism_ball_id = 70380227,
    platform_1_id = 70380311,
    platform_2_id = 70380312,
    --间隔几个stage将之前的stage清空
    clear_stage_interval = 2,
    dive_reminder = 60010448
}

local gadget_config_id_map = {}

local Tri = {
    [1] = { name = "monster_die_before_leave_scene", config_id = 9000001, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [2] = { name = "any_gadget_die", config_id = 9000002, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    [3] = { name = "enter_region", config_id = 9000003, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    for i = 1, #gadgets do
        gadget_config_id_map[gadgets[i].config_id] = gadgets[i].gadget_id
    end

    table.insert(variables,{config_id = 20000000, name = "total_die_monster_count", value = 0})
    table.insert(variables,{config_id = 20000001, name = "coin_num", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--


--怪物死亡时。如果当前不是跳水阶段，那么直接进入下一个阶段
function action_monster_die_before_leave_scene(context,evt)


    ScriptLib.ChangeGroupVariableValue(context,"total_die_monster_count",1)
    LF_Gallery_Update(context,"MONSTER_DIE")

    --先看看chain上有没有需要加载的下一位的suite。如果有，直接加载，不考虑进入下一个stage
    local monster_suite_id = LF_Get_Suite_By_Config_Id(evt.param1,false)
    if LF_Try_Create_Next_Chain_Suite(context,monster_suite_id) then
        return 0
    end
    
    --如果chain上没有要加载的下一个suite，则看是否可以进入下一个stage
    if LF_Is_Monster_In_List_All_Killed(context,LF_Get_Stage_Monsters(context,LF_Get_Current_Stage(context))) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] action_any_monster_die: 怪物全部死完")
        if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Battle") then
            LF_Goto_Next_Stage(context)
        end
    end
    return 0
end

--机制球被吃掉时，转换关卡的某个形态。LD自己写逻辑处理
function action_any_gadget_die(context,evt)

    --吃掉机制球
    local cid = evt.param1
    local gid = gadget_config_id_map[cid]

    local level_change_variable = LF_Get_Mechanism_Ball_Level_Variable(evt.param1)
    --这里强判一下机制球的gadget id了，应该不会变动
    if gid == local_defs.mechanism_ball_id and level_change_variable ~= nil then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] action_any_gadget_die: 死的是机制球")
        
        LF_Change_Level_By_Mechanism_Ball(context,level_change_variable)
    end
    --吃掉金币
    if gid == local_defs.coin_id then
        ScriptLib.ChangeGroupVariableValue(context,"coin_num",1)
        LF_Gallery_Update(context,"COIN")
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Downhill_TeamCoin",1)
    end

    return 0
end

--进入落水区域。如果是最终阶段则玩法结束，否则传送到起点
function action_enter_region(context,evt)

    if (evt.param1 == defs.dive_region) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] action_enter_region: 玩家进入跳水区域")
        if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Dive") then
            --最后一阶段时，进入region结束玩法
            LF_Update_Exhibition(context,evt.uid,"Activity_IslandParty_Downhill_ArriveFirst",1)
            LF_Finish_Play(context,1)
        else
            if LF_Get_Current_Stage(context) ~= 0 then
                --其他阶段时，进入region直接传回当前存档点
                local start_point = LF_Get_Point_Config(context,LF_Get_Stage_Revive_Point(LF_Get_Current_Stage(context)))
                if start_point ~= nil then
                    ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = start_point.pos, radius = 0, rot = start_point.rot})
                end
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




function LF_Special_Play_Init(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] LF_Special_Play_Init: 特殊玩法初始化逻辑")
end


--特殊玩法启动逻辑
function LF_Special_Play_Start(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] LF_Special_Play_Start: 特殊玩法启动逻辑")
    ScriptLib.SetGroupVariableValue(context,"total_die_monster_count",0)
    ScriptLib.SetGroupVariableValue(context,"coin_num",0)
    LF_Gallery_Update(context,"START_PLAY")
end



--特殊阶段转换事件
function LF_Special_State_Change(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] LF_Special_State_Change: 特殊阶段转换逻辑")
    
    --根据LD的需求，隔X个stage，清理前面所有stage的内容
    for i = 1, LF_Get_Current_Stage(context)-local_defs.clear_stage_interval do
        LF_Clear_Specific_Stage(context,i)
    end

    if LF_Stage_Has_Tag(context,LF_Get_Current_Stage(context),"Dive") then
        ScriptLib.ShowReminder(context,local_defs.dive_reminder)
    end

end



--特殊玩法结算逻辑
function LF_Special_Play_Finish(context,is_success)
    if is_success then
        LF_Update_Exhibition(context,-2,"Activity_IslandParty_Downhill_Success",1)
    end
    
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


--找到特定机制球对应的关卡variable名
function LF_Get_Mechanism_Ball_Level_Variable(ball_id)
    return mechanism_ball_level_variable[ball_id]

end



--吃到机制球时，修改一个关卡变量。LD监听这个变量的变化做不同的关卡逻辑表现
function LF_Change_Level_By_Mechanism_Ball(context,level_change_variable)
    ScriptLib.SetGroupVariableValue(context,level_change_variable,1)
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                     gallery同步                                 ||
||                                                                 ||
-----------------------------------------------------------------]]--
function LF_Gallery_Update(context,command)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] LF_Gallery_Update: 向gallery同步")

    if command == "START_PLAY" then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_DownHill] LF_Gallery_Update: "..#monsters)
        local param_table = {["total_kill_monster_count"] = 0, ["max_kill_monster_count"] = #monsters }
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "MONSTER_DIE" then
        local total_die_monster_count = ScriptLib.GetGroupVariableValue(context,"total_die_monster_count")
        local param_table = {["total_kill_monster_count"] = total_die_monster_count}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

    if command == "COIN" then
        local coin = ScriptLib.GetGroupVariableValue(context,"coin_num")
        local param_table = {["coin"] = coin}
        LF_Print_Table(context,param_table)
        ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, param_table)
    end

end


--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--

--陈列室SLC
--陈列室：速降拾取buff数
function SLC_Exhibition_Pick_Up_Ball(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Downhill_Buff",1)
    return 0
end

--陈列室：速降拾取金币数个人
function SLC_Exhibition_Pick_Up_Coin(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Downhill_PersonalCoin",1)
    return 0
end

--陈列室：速降累积降落到平台数量
function SLC_Exhibition_Land_On_Platform(context)
    LF_Update_Exhibition(context,context.uid,"Activity_IslandParty_Downhill_Platform",1)
    return 0
end
------------------------------------------------------------------
Initialize()