--[[======================================
||	filename:       Activity_GravenCarve
||	owner:          chao.cui
||	description:    木刻插槽管理
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]


-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_GravenCarve] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    -- 自定义插槽
    { config_id = 40000003, name = "tri_slot_map_changed", event = EventType.EVENT_CUSTOM_GADGET_SLOT_MAP_CHANGED, source = "", condition = "", action = "action_EVENT_SLOT_MAP_CHANGED", trigger_count = 0 },
    { config_id = 40000004, name = "tri_enter_play_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0 },

}

------ Local Functions -----------
function LF_Initialize_Level()

    --- TRIGGER
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
        table.insert(suites[1].triggers, _trigger.name)
	end

    return 0
end

------ conditions & actions ------

-- 自定义物件插槽变化时。切换物件状态
function action_EVENT_SLOT_MAP_CHANGED(context, evt)

    -- 插槽ID
    if evt.param2 == 1001 then 
        if evt.param3 == 0 then 
            ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 0)
        else 
            ScriptLib.SetGadgetStateByConfigId(context, evt.param1, 201)
        end
    end

    return 0
end

function action_enter_region(context, evt)

    if evt.param1 == defs.guide_regionID then 
        -- TODO: 添加新的教程
        if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,193,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
            PrintLog(context, "弹教程失败")
        else
            PrintLog(context, "教程UID:"..context.uid)
        end
    end

    return 0
end


LF_Initialize_Level()
