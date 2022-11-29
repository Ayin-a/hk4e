--[[======================================
||	filename:	PhotographActivity
||	owner: 		luyao.huang
||	description:	2.6拍照活动
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
}

local Tri = {
    [1] = { name = "group_load", config_id = 40000000, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [3] = { name = "select_option", config_id = 40000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    [4] = { name = "photo_finish", config_id = 40000003, event = EventType.EVENT_PHOTO_FINISH, source = "", condition = "", action = "action_photo_finish", trigger_count = 0},
    [5] = { name = "leave_region", config_id = 40000004, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0},
    [6] = { name = "group_will_unload", config_id = 40000005, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
    [7] = { name = "gallery_stop", config_id = 40000006, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{ config_id=50000001,name = "has_succeeded", value = 0, no_refresh = true})
end

------------------------------------------------------------------

--group load后，根据当前玩法状态，恢复物件表现
function action_group_load(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_load：group加载，恢复玩法状态")
    --group load时做一次校验，如果之前成功后，group未被正确反注册，则在group_load时手动完成一次玩法
    --if (not LF_Has_Succeeded(context)) then
        LF_Init_Play(context)
    --else
    --    LF_Stop_Play(context,true)
    --end
    return 0
end

--玩家与选项交互，开启挑战
function action_select_option(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_select_option: 玩家与选项交互，开启玩法")
    LF_Start_Play(context)
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
        LF_Stop_Play(context,true)
    end
    return 0
end


--挑战失败处理
--失败情况1：玩家出圈
function  action_leave_region(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_leave_region: 玩家出圈")
    --校验当前玩法状态，只有未完成状态的group才能回滚到初始状态
    --if (evt.param1 == defs.region_id and not LF_Has_Succeeded(context) and ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
    if (evt.param1 == defs.region_id and ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_leave_region: 挑战失败，并回滚group状态")
        ScriptLib.ShowReminder(context, local_defs.region_out_reminder)
        LF_Stop_Play(context,false)
    end
    return 0
end

--失败情况2：group即将卸载
function action_group_will_unload(context,evt)
    ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_will_unload: group即将卸载")
    --校验当前玩法状态，只有未完成状态的group才能回滚到初始状态
    --if (not LF_Has_Succeeded(context) and ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
    if (ScriptLib.IsGalleryStart(context,defs.gallery_id)) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_group_will_unload: 回退至初始状态作为保护")
        LF_Stop_Play(context,false)
    end
    return 0
end

--失败情况3：灭队
function action_gallery_stop(context,evt)
    if (evt.param3 == 0) then
        ScriptLib.PrintContextLog(context,"## [PhotographActivity] action_gallery_stop: 灭队")
        LF_Stop_Play(context,false)
    end

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
    --关闭黄圈
    ScriptLib.DeactivateGroupLinkBundle(context, base_info.group_id) 
    if (is_success) then
        --关闭操作台
        --LF_Set_Worktop(context,false)
        ScriptLib.StopGallery(context,defs.gallery_id,false)
        --ScriptLib.SetGroupVariableValue(context,"has_succeeded",1)
        --ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
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

--返回当前group的玩法是否已经成功了
--如果已经成功，group load时不能再重新开启玩法
function LF_Has_Succeeded(context)
    return ScriptLib.GetGroupVariableValue(context,"has_succeeded") == 1
end

------------------------------------------------------------------
Initialize()