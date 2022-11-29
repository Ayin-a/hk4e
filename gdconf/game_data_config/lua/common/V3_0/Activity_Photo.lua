--[[======================================
||	filename:       Activity_Photo
||	owner:          chao.cui
||	description:    3.0大活动-拍照
||	LogName:        TD
||	Protection:     ???
=======================================]]

-- @李鸿杰 还没布设相关GROUP

--[[
local defs =
{
    -- Group对应的groupbundle
    group_bundle_id = 0,
} 
--]]

-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_Photo] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    --{ config_id = 40000001, name = "tri_group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    --{ config_id = 40000002, name = "tri_group_will_unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD", trigger_count = 0 },

    { config_id = 40000003, name = "tri_monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
   
    --{ config_id = 40000004, name = "tri_enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
    { config_id = 40000005, name = "tri_leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },
    { config_id = 40000006, name = "force_refresh_group", event = EventType.EVENT_GRAVEN_PHOTO_REFRESH_GROUP, source = "", condition = "", action = "action_force_refresh_group", trigger_count = 0}
}

------ conditions & actions ------

-- function action_EVENT_GROUP_LOAD(context, evt)
--     return 0
-- end

-- function action_EVENT_GROUP_WILL_UNLOAD(context, evt)
-- 	return 0
-- end


function action_EVENT_ANY_MONSTER_DIE(context, evt)

    PrintLog(context, "小动物死亡/消失")

    -- @唐天鹏 小动物死亡/消失都会触发 event_any_monster_die

    if ScriptLib.GetGroupMonsterCount(context) == 0 then 
        -- @唐天鹏 新增ScriptLib：关闭当前groupbundle的mark并寻找其他的groupbundle显示mark
        ScriptLib.InvaildGravenPhotoBundleMark(context, defs.group_bundle_id)
        --if ScriptLib.IsInRegion(context, context.owner_uid, defs.play_region) then
            ScriptLib.SetGroupVariableValue(context, "Act_GI_Photo_MonsterClear", 1)
        --end
    end

	return 0
end

function condition_EVENT_LEAVE_REGION(context, evt)
    if evt.param1 == defs.play_region then
        return true
    end
    return false
end

function action_EVENT_LEAVE_REGION(context, evt)
    PrintLog(context, "离开区域")
    -- 刷新小动物
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
	return 0
end

function action_force_refresh_group(context, evt)
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
    return 0
end

--------- 关卡Functions --------
function LF_Initialize_Level()

    -- Triggers
	for _, _tri in pairs(extraTriggers) do
		table.insert(triggers, _tri)
        table.insert(suites[1].triggers, _tri.name)
	end
    table.insert(variables, {config_id = 50000001, name = "Act_GI_Photo_MonsterClear", value = 0, no_refresh = false})
    return 0
end

LF_Initialize_Level()
