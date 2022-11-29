--[[======================================
||	filename:	PhotographActivity_V2
||	owner: 		zhangchi.chen luyao.huang
||	description:	3.2拍照活动
||	LogName:	PhotographActivity
||	Protection:	
=======================================]]--

------
--local defs = {
--    worktop_id = 10001,
--    gallery_id = 18001,
--    region_id = 20001,
--    client_judge_id = 1
--}

local local_defs = {
    worktop_option = 190,
    region_out_reminder = 600106,
    region_warning_reminder = 600159,
    begin_fail_reminder=600158,
}

local Tri = {
    [1] = { name = "group_load", config_id = 40000000, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [3] = { name = "select_option", config_id = 40000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [4] = { name = "photo_finish", config_id = 40000003, event = EventType.EVENT_PHOTO_FINISH, source = "", condition = "", action = "action_photo_finish", trigger_count = 0},
    [5] = { name = "leave_region", config_id = 40000004, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},
    [6] = { name = "group_will_unload", config_id = 40000005, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
    [7] = { name = "gallery_stop", config_id = 40000006, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    [8] = { name = "enter_region", config_id = 40000007, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{ config_id=50000001,name = "trigger_count", value = 0, no_refresh = true})
end

------------------------------------------------------------------

--group load后，根据当前玩法状态，恢复物件表现
function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_load：group加载，恢复玩法状态")
    LF_Init_Play(context)
    return 0
end

--玩家与选项交互，开启挑战
function action_select_option(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_select_option: 玩家与选项交互，尝试开启玩法")
    if (ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220018) == true) or (ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220020) == true) or (ScriptLib.IsWidgetEquipped(context, ScriptLib.GetSceneOwnerUid(context), 220070) == true) then
        LF_Start_Play(context)
    else
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] 未装备【留影机】")
        local uid = ScriptLib.GetSceneUidList(context)
        if uid[1]~=nil then
            ScriptLib.ShowReminderByUid(context,{uid[1]}, local_defs.begin_fail_reminder)
        end
    end

    return 0
end

--挑战成功处理
--拍照成功，以成功结束gallery，并流转group状态
function  action_photo_finish(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_photo_finish: 收到推送的拍照成功消息")
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_photo_finish: gallery id为"..evt.param1)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_photo_finish: 客户端逻辑id为"..evt.param2)
    --对客户端推送的拍照成功消息做一次校验
    if (evt.param1 == defs.gallery_id and evt.param2 == defs.client_judge_id) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_photo_finish: 拍照成功")
    end
    return 0
end


--挑战失败处理
--出警示圈和失败情况1：玩家出圈
function  action_leave_region(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_leave_region: 玩家出圈")
    if (evt.param1 == defs.warning_region_id and ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
        local uid = ScriptLib.GetGalleryUidList(context,defs.gallery_id)
        if uid[1]~=nil then
            ScriptLib.ShowReminderByUid(context,{uid[1]}, local_defs.region_warning_reminder)
        end

    elseif (evt.param1 == defs.region_id and ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_leave_region: 挑战失败，并回滚group状态")
        local uid = ScriptLib.GetGalleryUidList(context,defs.gallery_id)
        if uid[1]~=nil then 
            ScriptLib.ShowReminderByUid(context,{uid[1]}, local_defs.region_out_reminder)
        end
        LF_Stop_Play(context,false)
    end
    return 0
end

--玩家首次进圈显示教程
function  action_enter_region(context,evt)
    if ScriptLib.GetGroupVariableValue(context,"trigger_count") == 0 then 
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_enter_region: 玩家进圈")
        ScriptLib.SetGroupVariableValue(context,"trigger_count",1)
        if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,211,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
            return -1
        end
    end
    return 0
end

--失败情况2：group即将卸载
function action_group_will_unload(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_will_unload: group即将卸载")
    if (ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_will_unload: 回退至初始状态作为保护")
        LF_Stop_Play(context,false)
    end
    return 0
end

--失败情况3：灭队
function action_gallery_stop(context,evt)
    --关闭黄圈
    ScriptLib.DeactivateGroupLinkBundle(context, base_info.group_id) 
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_gallery_stop: 重新加载group")
    LF_Init_Play(context)

    return 0
end

------------------------------------------------------------------
------------------------流程相关----------------------------------
--初始化玩法
--加载操作台并上选项
function LF_Init_Play(context)
    --操作台激活
    LF_Set_Worktop(context,true)
    --卸载打点suite
    LF_Set_Photo_Point_Suite(context,false)
end

--开启玩法
function LF_Start_Play(context)
    --先尝试启动gallery，如果未成功，则直接返回
    if (ScriptLib.SetPlayerStartGallery(context, defs.gallery_id, {ScriptLib.GetSceneOwnerUid(context)}) ~= 0) then
        return
    end
    --操作台转为未激活
    LF_Set_Worktop(context,false)
    --加载打点suite
    LF_Set_Photo_Point_Suite(context,true)
    --显示黄圈
    ScriptLib.ActivateGroupLinkBundle(context, base_info.group_id)
end

function LF_Stop_Play(context, is_success)
    --卸载打点suite
    --LF_Set_Photo_Point_Suite(context,false)
    if (is_success) then
        ScriptLib.StopGallery(context,defs.gallery_id,false)
    else
        --lua里处理的都是出界StopGallery，所以Reason直接都给5
        ScriptLib.StopGalleryByReason(context,defs.gallery_id,5)
    end
    --重新做一次初始化的流程
    LF_Init_Play(context)
end

------------------------group元素操作相关----------------------------------
--设置操作台状态（包括设置gadgetState和上下选项）
function LF_Set_Worktop(context, is_active)
    if (is_active) then
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, 0)
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.worktop_option})
    else
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, 201)
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.worktop_id, local_defs.worktop_option)
    end
end

--加载/卸载打点用suite
function LF_Set_Photo_Point_Suite(context,is_active)
    if (is_active) then
        if #suites>=2 then
            --如果有配置打点用物件，将其加载出来
            ScriptLib.AddExtraGroupSuite(context,base_info.group_id,2)
        end
    else
        if #suites>=2 then
            --如果有配置打点用物件，清理加载出来的打点用物件
            ScriptLib.RemoveExtraGroupSuite(context,base_info.group_id,2)
        end
    end
end
------------------------------------------------------------------
Initialize()