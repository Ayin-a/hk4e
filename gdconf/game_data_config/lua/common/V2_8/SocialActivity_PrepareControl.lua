--[[======================================
||	filename:	SocialActivity_PrepareControl
||	owner: 		luyao.huang
||	description:	2.8社交活动-用于处理开场空气墙等开场的逻辑
||	LogName:	SocialActivity_PrepareControl
||	Protection:	
=======================================]]--


local prepare_Tri={
	{config_id = 14000001, name = "group_load_prepare", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_prepare",trigger_count = 1 },
	--{config_id = 14000002, name = "leave_region_prepare", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_prepare", forbid_guest = false,trigger_count = 0 },
	{config_id = 14000003, name = "variable_change_prepare", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change_prepare",trigger_count = 0 },
	{config_id = 14000004, name = "gallery_cannot_start_after_countdown_prepare", event = EventType.EVENT_GALLERY_CANNOT_START_AFTER_COUNTDOWN, source = "", condition = "", action = "action_gallery_cannot_start_after_countdown_prepare",trigger_count = 0 },
	{config_id = 14000005, name = "group_will_unload_prepare", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_prepare",trigger_count = 0 },
}


local_defs = 
{
    prepare_airwall = 70380323,
    day_weather = 9019
}



function Prepare_Initialize()
    for k,v in pairs(prepare_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    --是否在准备阶段。group load时为1，玩法开启后变为0
    table.insert(variables,{config_id = 40000000, name = "prepare_state", value = -1})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--


function action_group_load_prepare(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_group_load_prepare：group加载，设置为等待状态")
    ScriptLib.SetGroupVariableValue(context,"prepare_state",1)
    LF_Set_Weather(context,local_defs.day_weather,true)
    return 0
end


function action_variable_change_prepare(context,evt)  
    if evt.source_name == "prepare_state" and evt.param1 == 1 then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_variable_change_prepare：进入等待状态，开启空气墙")
        LF_Create_Prepare_Airwall(context)
        
        --设置全局白天天气
        --LF_Set_Weather(context,local_defs.day_weather,true)
    end
    if evt.source_name == "prepare_state" and evt.param1 == 0 then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_variable_change_prepare：离开等待状态，关闭空气墙")
        LF_Destroy_Prepare_Airwall(context)
    end
    return 0
end


function action_gallery_cannot_start_after_countdown_prepare(context,evt)
    ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_gallery_cannot_start_after_countdown_prepare：gallery启动失败，离开等待状态")
    --玩法开启失败的情况下，要保底卸载掉天气
    LF_Set_Weather(context,local_defs.day_weather,false)
    ScriptLib.SetGroupVariableValue(context,"prepare_state",0)
    return 0
end


--离开准备区域region时，拉回准备点
--function action_leave_region_prepare(context, evt)
--    if evt.param1 == defs.prepare_region then
--        if LF_Is_In_Prepare_Stage(context) then
--            ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_enter_region_prepare：处于等待阶段，并离开圈子")
--            local prepare_point = LF_Get_Point_Config(context,defs.prepare_point)
--            local ret = ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = prepare_point.pos, radius = 0, rot = prepare_point.rot})
--            ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]action_enter_region_prepare：传送的结果为"..ret)
--        end
--    end
--	return 0
--end


--保底恢复大世界天气
function action_group_will_unload_prepare(context,evt)
    
    if LF_Is_In_Prepare_Stage(context) then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl] action_group_will_unload_prepare：group保底卸载，恢复天气")
        --group卸载时，如果玩法未开启，保底恢复天气
        LF_Set_Weather(context,local_defs.day_weather,false)
    end
    return 0
end

-------------------------------------------------------------------------------


function LF_Create_Prepare_Airwall(context)
    local ret = ScriptLib.CreateGadget(context, {config_id = defs.prepare_airwall})
    ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl]LF_Create_Prepare_Airwall：创建空气墙的结果为"..ret)
end


function LF_Destroy_Prepare_Airwall(context)
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.prepare_airwall)
end



function LF_Is_In_Prepare_Stage(context)
    return ScriptLib.GetGroupVariableValue(context,"prepare_state") == 1 
end

function LF_Get_Point_Config(context,point_id)
    for i = 1, #points do
        if (points[i].config_id == point_id) then
            return points[i]
        end
    end
    return nil
end



--设置天气
function LF_Set_Weather(context,weather_id,is_on)
    if is_on then
        ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl] LF_Set_Weather: 开启天气")
	    ScriptLib.SetWeatherAreaState(context, weather_id, 1)
        ScriptLib.EnterWeatherArea(context, weather_id)
    else
        ScriptLib.PrintContextLog(context,"## [SocialActivity_PrepareControl] LF_Set_Weather: 关闭天气")
        ScriptLib.SetWeatherAreaState(context, weather_id, 0)
    end
end

Prepare_Initialize()