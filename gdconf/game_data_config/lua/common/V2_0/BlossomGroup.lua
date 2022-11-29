--地脉花循环营地模板

--local defs = {
--	group_id = xxx ,
--    monster_waves = 4,
--    chest_id = xxx,
--    operator1_id = xxx,
--    operator2_id = xxx
--}




local Tri = {
	[1] = { name = "any_monster_die", config_id = 8000001, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	[2] = { name = "blossom_progress_finish", config_id = 8000002, event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition= "", action = "action_blossom_progress_finish", trigger_count = 0 },
	[4] = { name = "group_load", config_id = 8000004, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[5] = { name = "group_refresh", config_id = 8000005, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
    --[6] = { name = "chest_die", config_id = 8000006, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0 },
    [7] = { name = "select_option", config_id = 8000007, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
    [8] = { name = "blossom_chest_die", config_id = 8000008, event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "", action = "action_blossom_chest_die", trigger_count = 0 },
    
}

function Initialize()
	for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --注入一个blossom的标志位。下次groupload时如果为1，说明玩法已经开始了，不再走一次init
    table.insert(variables,{ config_id=50000001,name = "HasStarted", value = 0, no_refresh = true})
    table.insert(variables,{ config_id=50000002,name = "wave", value = 0, no_refresh = true})


    
end

----------------------------------

function action_any_monster_die(context, evt)
    --当怪物死的时候，增加循环营地进度
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 0)
    --如果还有怪物活着，无事发生
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 0) ~= 0 then
		return -1
	end
    --当前波次怪物死光了，则加载下一波怪物
	LF_Create_Next_Monster_Wave(context)
	return 0
end

function action_group_load(context, evt)
    --group加载时，刷新循环营地
    ScriptLib.PrintContextLog(context,"BG: Group has been loaded!")
    ScriptLib.SetGroupVariableValue(context,"GroupCompletion",0)

    --group load时判定一下这个group是否已经开启，如果已经开启则无事发生
    local has_started = ScriptLib.GetGroupVariableValue(context,"HasStarted")
    if (has_started == 1) then
        ScriptLib.PrintContextLog(context,"BG: Group has been started, refresh failed!")
        return 0
    end

	ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true, is_delay_unload = true })
	LF_Init_Blossom_Group(context)
	return 0
end

function action_group_refresh(context, evt)

    ScriptLib.PrintContextLog(context,"BG: Group has been refreshed!")

    --group load时判定一下这个group是否已经开启，如果已经开启则无事发生
    local has_started = ScriptLib.GetGroupVariableValue(context,"HasStarted")
    if (has_started == 1) then
        ScriptLib.PrintContextLog(context,"BG: Group has been started, refresh failed!")
        return 0
    end

    --group刷新时，初始化整个group
	LF_Init_Blossom_Group(context)
	return 0
end


function action_blossom_chest_die(context,evt)
    --领取完奖励后，刷新循环营地
    if evt.param1 == defs.chest then
        ScriptLib.PrintContextLog(context,"BG: blossom has been opened. Refreh the next blossom group")
        --group重置为没有开始的状态
        ScriptLib.SetGroupVariableValue(context,"HasStarted",0)
        ScriptLib.SetGroupVariableValue(context,"wave",0)
        ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 1, exclude_prev = true })
        
    end
    return 0
end

function action_select_option(context,evt)
    --玩家选择选项后，隐藏地脉淤积gadget，清除gadget上的选项，激活第一波怪物
    ScriptLib.PrintContextLog(context,"BG: Option has been selected! Monster waves start!")
    ScriptLib.SetGadgetStateByConfigId(context, LF_Get_Blossom_Operator(context), 201)
    ScriptLib.DelWorktopOptionByGroupId(context,0,LF_Get_Blossom_Operator(context),187)
    
    
    --所有东西成功刷出来了，将group设置为已开始状态
    ScriptLib.SetGroupVariableValue(context,"HasStarted",1)
    LF_Start_Monster_Wave(context)
    return 0
end


function action_blossom_progress_finish(context,evt)
    --进度打满以后，创建奖励
    LF_Create_Reward(context)
    ScriptLib.SetGroupVariableValue(context,"GroupCompletion",1)
    return 0
end
----------------------------------

function LF_Create_Reward(context)
    --创建循环营地奖励方法，并将循环营地进度置到reward
    ScriptLib.PrintContextLog(context,"BG: Monster wave has ended, creating blossom group reward")
    ScriptLib.SetBlossomScheduleStateByGroupId(context,0,3)
    ScriptLib.PrintContextLog(context,"BG: Creaing blossom chest!!")
    ScriptLib.CreateBlossomChestByGroupId(context,0,defs.chest)
end




function LF_Create_Next_Monster_Wave(context)
    --更新下一波怪物潮的方法，如果已经到了最后一波，则不刷新（此时理论上来说打完应该直接触发blossom group finish）
    local wave = ScriptLib.GetGroupVariableValue(context,"wave")
	--local wave = ScriptLib.GetGroupTempValue(context, "wave", {})
    local nextWave = wave + 1
    if nextWave+1 > #suites then
        ScriptLib.PrintContextLog(context, "BG: This is final wave ")
    else
        ScriptLib.PrintContextLog(context,"BG: Creating monster wave: "..nextWave)
		ScriptLib.AddExtraGroupSuite(context, 0, nextWave+1)
        
        ScriptLib.PrintContextLog(context,"BG: We are trying to load suite : "..nextWave+1)
        ScriptLib.SetGroupVariableValue(context,"wave",nextWave)
		--ScriptLib.SetGroupTempValue(context, "wave", nextWave, {})
    end
end


function LF_Start_Monster_Wave(context)
    --启动怪物潮，进入打怪阶段
    ScriptLib.SetBlossomScheduleStateByGroupId(context, 0, 2)
    ScriptLib.SetGroupVariableValue(context,"wave",0)
	--ScriptLib.SetGroupTempValue(context, "wave", 0, {})
    --加载第一波怪物
	LF_Create_Next_Monster_Wave(context)
end



function LF_Init_Blossom_Group(context)
    --初始化循环营地方法，移除全部的怪物group，并刷新地脉淤积操作台
    ScriptLib.PrintContextLog(context,"BG: Blossom group is initiating")

    --初始化时，先移除掉所有怪物的suite
	for i = 2, #suites do
        ScriptLib.RemoveExtraGroupSuite(context,0,i)
    end
    if (LF_Get_Blossom_Operator(context) == -1) then
        return -1
    end
    
    ScriptLib.PrintContextLog(context,"BG: Current operator config id is: "..LF_Get_Blossom_Operator(context))

    --加载地脉淤积的gadget
	local ret = ScriptLib.CreateGadget(context, {config_id = LF_Get_Blossom_Operator(context)})

    ScriptLib.PrintContextLog(context,"BG: Create worktop result: "..ret)

    --给地脉淤积的gadget增加操作选项
    ScriptLib.SetWorktopOptionsByGroupId(context,0,LF_Get_Blossom_Operator(context),{187})


    return 0
end



function LF_Get_Blossom_Operator(context)
    --获取当前BlossomGroup的地脉淤积操作台的方法，根据当前的刷新类型，返回不同的操作台

    local operator = {[1]=defs.operator_1,[2]=nil,[3]=defs.operator_2}
    local refreshType = ScriptLib.GetBlossomRefreshTypeByGroupId(context, 0)
    if not (refreshType == 1 or refreshType == 3) then
        return -1
    end
    ScriptLib.PrintContextLog(context,"BG: Current blossom group refresh type: "..refreshType)

    return operator[refreshType]
end
----------------------------------
Initialize()