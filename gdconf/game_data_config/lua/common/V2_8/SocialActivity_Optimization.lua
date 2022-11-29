--[[======================================
||	filename:	SocialActivity_Optimization
||	owner: 		luyao.huang
||	description:	2.8社交活动-用于社交玩法group的性能优化
||	LogName:	SocialActivity_Optimization
||	Protection:	
=======================================]]--


local optimize_Tri={
	{config_id = 13000001, name = "enter_region_optimization", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_optimization", forbid_guest = false,trigger_count = 0 },
	{config_id = 13000002, name = "leave_region_optimization", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_optimization", forbid_guest = false,trigger_count = 0 },
	{config_id = 13000003, name = "group_will_unload_optimization", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_optimization",trigger_count = 0 },
    {config_id = 13000004, name = "gallery_cannot_start_after_countdown_optimization", event = EventType.EVENT_GALLERY_CANNOT_START_AFTER_COUNTDOWN, source = "", condition = "", action = "action_gallery_cannot_start_after_countdown_optimization",trigger_count = 0 },
	
}


function Optimization_Initialize()
    for k,v in pairs(optimize_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --用于记录当前玩法启动是否成功
    table.insert(variables,{config_id = 30000000, name = "play_start_fails", value = 0})
end

--进入玩法region时，给对应uid玩家上visiontype
function action_enter_region_optimization(context, evt)
    if evt.param1 == defs.optimize_region then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Optimization] action_enter_region_optimization：进入优化圈，尝试开启优化")
        LF_Start_Optimization(context)
    end
	return 0
end

--离开玩法region时，给对应uid玩家下visiontype
function action_leave_region_optimization(context, evt)
    if evt.param1 == defs.optimize_region then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_Optimization] action_leave_region_optimization：离开优化圈，关闭优化")
        LF_Stop_Optimization(context)
    end
	return 0
end

--group被卸载时，保底要恢复所有玩家的visiontype
function action_group_will_unload_optimization(context, evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_Optimization] action_leave_region_optimization：group即将卸载，保底清除优化")
    LF_Stop_Optimization_All(context)
    --玩法标记为启动失败或结束
    ScriptLib.SetGroupVariableValue(context,"play_start_fails",1)
	return 0
end


function action_gallery_cannot_start_after_countdown_optimization(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_gallery_cannot_start_after_countdown_optimization：玩法启动失败，保底清除优化逻辑")
    LF_Stop_Optimization_All(context)
    --玩法标记为启动失败或结束
    ScriptLib.SetGroupVariableValue(context,"play_start_fails",1)
    return 0
end
-------------------------------------------------------------------------------

function LF_Start_Optimization(context)
    --仅当玩法处于正常状态时，才开启优化
    if ScriptLib.GetGroupVariableValue(context,"play_start_fails") ~= 1 then
	    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {30010001})
	    ScriptLib.ForbidPlayerRegionVision(context, context.uid)
    end
end

function LF_Stop_Optimization(context)
    if ScriptLib.GetGroupVariableValue(context,"play_start_fails") ~= 1 then
        ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
        ScriptLib.RevertPlayerRegionVision(context, context.uid)
    end
end

--恢复所有玩家
function LF_Stop_Optimization_All(context)
    if ScriptLib.GetGroupVariableValue(context,"play_start_fails") ~= 1 then
        local uid_list = ScriptLib.GetSceneUidList(context)
        for i = 1, #uid_list do
            ScriptLib.SetPlayerGroupVisionType(context, {uid_list[i]}, {1})
            ScriptLib.RevertPlayerRegionVision(context, uid_list[i])
        end
    end
end

Optimization_Initialize()