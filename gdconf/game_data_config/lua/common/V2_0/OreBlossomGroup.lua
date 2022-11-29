--魔晶矿循环营地模板

local Tri1 = {
    [1] = { name = "group_load", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
}
local Tri2 = {
    [1] = { name = "group_refresh", config_id = 8000002, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
    [2] = { name = "any_gadget_die", config_id = 8000003, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 },
    [3] = { name = "blossom_progress_finish", config_id = 8000004, event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition= "", action = "action_blossom_progress_finish", trigger_count = 0 },
	
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
    
    --注入一个blossom的标志位。下次groupload时如果为1，说明
    table.insert(variables,{ config_id=50000001,name = "HasStarted", value = 0, no_refresh = true})
end

----------------------------------


--group加载时，直接把suite2的trigger刷出来
function action_group_load(context, evt)
    ScriptLib.PrintContextLog(context,"OreBG: Group has been loaded!")
    ScriptLib.SetGroupVariableValue(context,"GroupCompletion",0)

    

    --group load时判定一下这个group是否已经开启，如果已经开启则无事发生
    local has_started = ScriptLib.GetGroupVariableValue(context,"HasStarted")
    if (has_started == 1) then
        ScriptLib.PrintContextLog(context,"BG: Group has been started, refresh failed!")
        return 0
    end

	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true, is_delay_unload = true })
    
	return 0
end

--group刷新时，加载suite3的魔晶矿，并重置blossom group计数
function action_group_refresh(context, evt)
    ScriptLib.PrintContextLog(context,"OreBG: Group has been refreshed!")
    --将循环营地进度置为2（循环营地进行中）
    ScriptLib.SetBlossomScheduleStateByGroupId(context,0,2)
    --加载suite3的魔晶矿
    ScriptLib.AddExtraGroupSuite(context,0,3)
    --group重置为没有开始的状态
    ScriptLib.SetGroupVariableValue(context,"HasStarted",1)
	return 0
end

--魔晶矿被挖掉的时候，增加循环营地进度
function  action_any_gadget_die(context,evt)

    ScriptLib.PrintContextLog(context,"OreBG: Player get 1 ore!")
    ScriptLib.AddBlossomScheduleProgressByGroupId(context, 0)

    return 0
end

--循环营地打满后，刷新循环营地状态，并将GroupCompletion置为1
function action_blossom_progress_finish(context,evt)
    
    ScriptLib.PrintContextLog(context,"OreBG: This ore blossom group has been finished!")
    
    --将循环营地进度置为3（循环营地完成）
    ScriptLib.SetBlossomScheduleStateByGroupId(context,0,3)
    ScriptLib.SetGroupVariableValue(context,"GroupCompletion",1)
    
    --group重置为没有开始的状态
    ScriptLib.SetGroupVariableValue(context,"HasStarted",0)
    return 0
end

----------------------------------
Initialize()