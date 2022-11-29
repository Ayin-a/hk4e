--[[======================================
||	filename:	SocialActivity_Common
||	owner: 		luyao.huang
||	description:	2.8社交活动-通用流程框架
||	LogName:	SocialActivity_Common
||	Protection:	
=======================================]]--

------
local local_defs = {
    --刷出下一波怪时的提示reminder
    monster_chain_reminder = 400158,
    day_weather = 9019
}

local common_Tri = {
    [1] = { name = "group_load_common", config_id = 10000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_common", trigger_count = 0},
    [2] = { name = "gallery_start_common", config_id = 10000002, event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_gallery_start", trigger_count = 0},
    [3] = { name = "variable_change_common", config_id = 10000003, event = EventType.EVENT_VARIABLE_CHANGE, source = "current_stage", condition = "", action = "action_variable_change_common", trigger_count = 0}, 
    [4] = { name = "gallery_stop_common", config_id = 10000004, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    [5] = { name = "variable_change_GM", config_id = 10000100, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change_GM", trigger_count = 0}, 
    [6] = { name = "group_will_unload_common", config_id = 1000005, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_common", trigger_count = 0}, 
}

function Common_Initialize()
    for k,v in pairs(common_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --记录阶段数
    table.insert(variables,{config_id = 10000000,  name = "current_stage", value = 0})



    --GM用variable，用于直接开启玩法，不用匹配
    table.insert(variables,{config_id = 10000001, name = "GM_Start_Play", value = 0})
    --GM用variable，用于直接关闭玩法
    table.insert(variables,{config_id = 10000002, name = "GM_Stop_Play", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法加载初始化
function action_group_load_common(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] group_load_common： group加载，玩法初始化")
    LF_Init_Play(context)
    return 0
end

--玩法启动
function action_gallery_start(context,evt)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] action_gallery_start: gallery启动，启动玩法")
    LF_Start_Play(context)

    return 0
end

--进入下一个阶段
function action_variable_change_common(context,evt)

    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] variable_change_common： 进入阶段"..LF_Get_Current_Stage(context))
    if (evt.param1 > 0) then
        if (LF_Get_Current_Stage(context) > defs.final_stage) then
            --如果当前阶段已经到了最终阶段，则进行玩法结算
            ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] variable_change_common： 已进入最终阶段，开始结算")
            LF_Finish_Play(context,true)
        else
            --否则加载下一阶段布设
            ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] variable_change_common： 加载下一阶段布设")
            LF_Build_Next_Stage(context)
        end
    end

    return 0
end

--gallery结束，不论是什么原因结束的，都需要清理当前关卡
function action_gallery_stop(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] action_gallery_stop: gallery结束，结果为"..1-evt.param2)
    LF_Clear_Stage(context)
    --gallery拿到的成功失败是反过来的，要拿1减一下
    LF_Special_Play_Finish(context,1-evt.param2)
    return 0
end



--调试用GM
function action_variable_change_GM(context,evt)
    if evt.source_name == "GM_Start_Play" then
        ScriptLib.StartGallery(context,defs.gallery_id)
    end
    if evt.source_name == "GM_Stop_Play" and evt.param1 == 1 then
        LF_Finish_Play(context,true)
    end
    if evt.source_name == "GM_Stop_Play" and evt.param1 == -1 then
        LF_Finish_Play(context,false)
    end
    return 0
end

--保底恢复大世界天气
function action_group_will_unload_common(context,evt)
    
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] action_group_will_unload_common：group保底卸载，恢复天气")
    --设置全局白天天气
    LF_Set_Weather(context,local_defs.day_weather,false)
    return 0
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法初始化
function LF_Init_Play(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Init_Play：初始化玩法")
    ScriptLib.SetGroupVariableValue(context,"current_stage",0)
    LF_Set_Weather(context,local_defs.day_weather,true)
    --各个玩法特殊的初始化逻辑
    LF_Special_Play_Init(context)
end

--玩法启动
function LF_Start_Play(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Start_Play：玩法启动")
    ScriptLib.SetGroupVariableValueByGroup(context, "prepare_state", 0, defs.prepare_group_id)
    LF_Goto_Next_Stage(context)
    --各个玩法特殊的玩法启动逻辑
    LF_Special_Play_Start(context)
end

--玩法结算
--主要是关掉gallery，玩法清理部分通过回调处理
function LF_Finish_Play(context,is_success)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Finish_Play：挑战结算")
    LF_Clear_Stage(context)
    if is_success then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Finish_Play：挑战成功")
        
        LF_Special_Play_Finish(context,true)
        ScriptLib.StopGallery(context,defs.gallery_id,false)
    else
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Finish_Play：挑战失败")
   
        LF_Special_Play_Finish(context,false)
        ScriptLib.StopGallery(context,defs.gallery_id,true)
    end
end


--进入下一阶段
function LF_Goto_Next_Stage(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Goto_Next_Stage：进入下一阶段")
    local current_stage = LF_Get_Current_Stage(context)
    LF_Set_Current_Stage(context,current_stage+1)
    --设置阶段复活点
    local revive_point = LF_Get_Stage_Revive_Point(LF_Get_Current_Stage(context))
    LF_Set_Revive_Point(context,revive_point)

    if (LF_Get_Current_Stage(context) <= defs.final_stage) then
        LF_Special_State_Change(context)

    end
end

--加载下一阶段布设
function LF_Build_Next_Stage(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Build_Next_Stage：加载下一阶段布设")
    local current_stage = LF_Get_Current_Stage(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Build_Next_Stage：目标加载的阶段为"..current_stage)
    --加载下一阶段的布设
    for k,v in pairs(LF_Get_Stage_Start_Suites(context,current_stage)) do
        ScriptLib.AddExtraGroupSuite(context,0,v)
    end
end

--尝试加载链上的下一组怪物（适用于多波刷怪的逻辑）
function LF_Try_Create_Next_Chain_Suite(context, monster_suite_id)
    if monster_suite_chain ~= nil then
        --如果死亡的怪物是它所在suite的最后一只，尝试通过chain加载下一组suite
        if (LF_Is_Monster_In_List_All_Killed(context,suites[monster_suite_id].monsters)) then
            if (monster_suite_chain[monster_suite_id]~=nil) then
                ScriptLib.ShowReminder(context,local_defs.monster_chain_reminder)
                for i = 1, #monster_suite_chain[monster_suite_id] do
                    ScriptLib.AddExtraGroupSuite(context,0,monster_suite_chain[monster_suite_id][i])
                end
                return true
            end
        end
    end
    return false
end

--清理当前关卡所有内容
function LF_Clear_Stage(context)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Clear_Stage: 清理玩法布设")
    
    --强行刷新到suite 1，清除所有布设
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
    LF_Init_Play(context)
    LF_Set_Weather(context,local_defs.day_weather,false)
end

--移除一个stage下所有suite(注意这里只清monster_suite，如果LD有一些suite不放monster这种操作还得额外处理一下)
function LF_Clear_Specific_Stage(context,stage_index)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Clear_Specific_Stage: 清理stage "..stage_index.."的内容")
    local monster_suites = LF_Get_Stage_Monster_Suites(context,stage_index) 
    for i = 1, #monster_suites do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, monster_suites[i])
    end
end


--移除一个stage下所有怪物(注意这里只清monster_suite，如果LD有一些suite不放monster这种操作还得额外处理一下)
function LF_Clear_Specific_Stage_Monsters(context,stage_index)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Clear_Specific_Stage_Monsters: 清理stage "..stage_index.."的所有怪物")
    local monster_list  =  LF_Get_Stage_Monsters(context,stage_index)
    for i = 1, #monster_list do
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.MONSTER, monster_list[i])
    end
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--


-------------------------阶段相关查询------------------------------

--获取当前阶段数
function LF_Get_Current_Stage(context)
    return ScriptLib.GetGroupVariableValue(context, "current_stage")
end

--设置当前阶段数
function LF_Set_Current_Stage(context,stage)
    ScriptLib.SetGroupVariableValue(context,"current_stage",stage)
end

--根据输入的阶段数，找到阶段对应的所有suite
function LF_Get_Stage_All_Suites(context,index)
    if stage[index].all_suites == nil then 
        return {}
    end
    return stage[index].all_suites
end

--根据输入的阶段数，找到所有包含了当前阶段怪物的suite
function LF_Get_Stage_Monster_Suites(context,index)
    if stage[index].monster_suites == nil then 
        return {}
    end
    return stage[index].monster_suites
end

--根据输入的阶段数，找到所有启动suite（切换到该stage时加载的suite）
function LF_Get_Stage_Start_Suites(context,index)
    if stage[index].start_suites == nil then 
        return {}
    end
    
    return stage[index].start_suites
end

--根据输入的阶段数，获取该阶段的怪物列表
function LF_Get_Stage_Monsters(context,stage)
    local _stage_suites = LF_Get_Stage_Monster_Suites(context,stage)
    local stage_monsters = {}
    for i = 1, #_stage_suites do
        for j = 1,#suites[_stage_suites[i]].monsters do
            table.insert(stage_monsters,(suites[_stage_suites[i]].monsters)[j])
        end
    end
    return stage_monsters
end


--检查一个stage是否有特定标签
function LF_Stage_Has_Tag(context,id,tag)
    if stage[id] == nil then
        return false
    end
    local stage_tag = stage[id].tag
    if stage_tag == nil or stage_tag ~= tag then
        return false
    else
        return true
    end
end

--检查一个stage是否是leagal的，以Stage_Suites为准
function LF_Is_Legal_Stage(id)
    return stage[id] ~= nil
end

--查询当前阶段对应的复活点id
function LF_Get_Stage_Revive_Point(id)
    if LF_Is_Legal_Stage(id) then
        if stage[id].revive_point ~= nil then
            return stage[id].revive_point
        else
            return 0
        end
    end
    return 0
end
-------------------------关卡配置查询------------------------------

function LF_Get_Point_Config(context,point_id)
    for i = 1, #points do
        if (points[i].config_id == point_id) then
            return points[i]
        end
    end
    return nil
end

--输入一个config_id，返回其是第几个suite的物件/怪物
function LF_Get_Suite_By_Config_Id(config_id, is_gadget)
    for i = 1, #suites do
        if is_gadget then
            for j = 1, #suites[i].gadgets do
                if suites[i].gadgets[j] == config_id then
                    return i
                end
            end
        else
            for j = 1, #suites[i].monsters do
                if suites[i].monsters[j] == config_id then
                    return i
                end
            end
        end
    end
end

--输入一个config_id，返回其是第几个stage的物件/怪物
function LF_Get_Stage_By_Config_Id(config_id, is_gadget)
    for i = 1, #suites do
        if is_gadget then
            for j = 1, #suites[i].gadgets do
                if suites[i].gadgets[j] == config_id then
                    return LF_Get_Suite_Stage(i)
                end
            end
        else
            for j = 1, #suites[i].monsters do
                if suites[i].monsters[j] == config_id then
                    return LF_Get_Suite_Stage(i)
                end
            end
        end
    end
end

--根据suiteid反查所属的stage
function LF_Get_Suite_Stage(suite_id) 
    for i = 1, #stage do
        if (stage[i].all_suites~=nil) then
            for j = 1, #stage[i].all_suites do
                if stage[i].all_suites[j] == suite_id then
                    return i
                end
            end
        end
        if (stage[i].monster_suites~=nil) then
            for j = 1, #stage[i].monster_suites do
                if stage[i].monster_suites[j] == suite_id then
                    return i
                end
            end
        end
        if (stage[i].start_suites~=nil) then
            for j = 1, #stage[i].start_suites do
                if stage[i].start_suites[j] == suite_id then
                    return i
                end
            end
        end
    end
    return 0
end


--检查表内的怪物是否已经都死了
function LF_Is_Monster_In_List_All_Killed(context,check_monster_list)
    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1, #alive_monster_list do
        for j = 1,#check_monster_list do
            if (alive_monster_list[i] == check_monster_list[j]) then
                return false
            end
        end
    end
    return true
end

function LF_Get_Gadget_Id_By_Config_Id(config_id)

    for k,v in pairs(gadgets) do
        if config_id == v.config_id then
            return v.gadget_id
        end  
    end
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--



--通用打印表的方法
function LF_Print_Table(context,print_table)
    for k,v in pairs(print_table) do
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] "..k.." : "..v)
    end
end

--设置复活点
function LF_Set_Revive_Point(context,point_id)
    if point_id == 0 or point_id == nil then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Set_Revive_Point: 复活点为空，返回")
        return
    end
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Set_Revive_Point: 设置复活点"..point_id)
    ScriptLib.SetGalleryRevivePoint(context, defs.gallery_id, base_info.group_id, point_id)
end


--设置天气
function LF_Set_Weather(context,weather_id,is_on)
    if is_on then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Set_Weather: 开启天气")
	    ScriptLib.SetWeatherAreaState(context, weather_id, 1)
        ScriptLib.EnterWeatherArea(context, weather_id)
    else
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] LF_Set_Weather: 关闭天气")
        ScriptLib.SetWeatherAreaState(context, weather_id, 0)
    end
end


--运营打点功能
function LF_Mark_Lua_Action(context,param_table)
    for k,v in pairs(param_table) do
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common]LF_Mark_Lua_Action: 运营打点：key = "..k..", value = "..v)
    end
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Common]LF_Mark_Lua_Action: 运营打点：----------------------------")

    ScriptLib.MarkGroupLuaAction(context, "IslandParty_1","",param_table)
end



function LF_Is_In_Range(value, bound_1, bound_2)

    if bound_1 > bound_2 then
        local t = bound_1
        bound_1 = bound_2
        bound_2 = t
    end

    if bound_1 <= value and value < bound_2 then
        return true
    end
    return false
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                     陈列室同步                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

--写陈列室
--如果输入uid = -2（避开0和-1），则为全部玩家都写
function LF_Update_Exhibition(context,uid,trigger_name,value)

    if uid == -2 then
        local uidlist = ScriptLib.GetGalleryUidList(context,defs.gallery_id)
        for i = 1, #uidlist do
            ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] 向陈列室同步：uid："..uidlist[i]..", trigger名："..trigger_name..", 增量："..value)
	        ScriptLib.AddExhibitionReplaceableData(context, uidlist[i], trigger_name, value)
        end
    else
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Common] 向陈列室同步：uid："..uid..", trigger名："..trigger_name..", 增量："..value)
	    ScriptLib.AddExhibitionReplaceableData(context, uid, trigger_name, value)
    end
end
------------------------------------------------------------------
Common_Initialize()