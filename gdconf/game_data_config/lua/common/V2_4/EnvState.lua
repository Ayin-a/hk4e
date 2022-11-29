--2.4昼夜group

--miscs

----昼夜group下控制的所有昼夜gadget
--local EnvControlGadgets = 
--{
--    10001,
--    10002,
--    10003
--
--}
--
----仅在白天出现的gadget（夜晚会默认销毁）
--local DayAppearGadgets = 
--{
--    20001,
--    20002
--}
--
----仅在夜晚出现的gadget（白天会默认销毁）
--local NightAppearGadgets = 
--{
--    30001,
--    30002
--}

--local TriggerInsertWhitelist = {2,3}


----------------------------------



local Tri = {
    [1] = { name = "group_load_daynight", config_id = 8000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_daynight", trigger_count = 0},
    [2] = { name = "level_tag_change_daynight", config_id = 8000002, event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_level_tag_change_daynight", trigger_count = 0},
    
}

function Initialize()

    for k,v in pairs(Tri) do
        table.insert(triggers, v)
    end
    local hasTriggerInsertWhitelist = not (TriggerInsertWhitelist==nil or #TriggerInsertWhitelist<=0)
    if (hasTriggerInsertWhitelist) then
        --存在白名单设置，走白名单的trigger注入流程
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TriggerInsertWhitelist do 
                for k,v in pairs(Tri) do
                    if (TriggerInsertWhitelist[i]<=#suites) then
                        table.insert(suites[TriggerInsertWhitelist[i]].triggers, v.name)
                    end
                end
            end
            table.insert(variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
        else
            table.insert(variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TriggerInsertWhitelist do 
                for k,v in pairs(Tri) do
                    if (TriggerInsertWhitelist[i]<=#suite_disk) then
                        table.insert(suite_disk[TriggerInsertWhitelist[i]].triggers, v.name)
                    end
                end
                table.insert(suite_disk[TriggerInsertWhitelist[i]].variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do 
                for k,v in pairs(Tri) do
	            	table.insert(suites[i].triggers, v.name)
	            end
            end
            table.insert(variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
        else
            table.insert(variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
            for i = 1, #suite_disk do 
                for k,v in pairs(Tri) do
	            	table.insert(suite_disk[i].triggers, v.name)
	            end
                table.insert(suite_disk[i].variables,{ config_id=50000001,name = "is_daynight_finish", value = 0, no_refresh = true})
            end
        end
    end

end

------------------------------------------------------------------


--group load时，主动取一下LevelTag，将物件设置为正确的昼夜表现
function action_group_load_daynight(context,evt)
    ScriptLib.PrintContextLog(context,"EnvState: Group加载，修正物件的昼夜状态")

    local current_env_state = LF_Get_Current_Day_Night(context)
    ScriptLib.PrintContextLog(context,"EnvState: 当前昼夜状态为： "..ScriptLib.GetLevelTagNameById(context,current_env_state))
    LF_Change_Day_Night(context,current_env_state)


    return 0
end

function action_level_tag_change_daynight(context,evt)

    --改之后的昼夜状态
    local target_env_state_id = evt.param2
    local target_env_state = ScriptLib.GetLevelTagNameById(context, target_env_state_id)

    ScriptLib.PrintContextLog(context,"EnvState: 昼夜切换，开始切换昼夜物件状态到LevelTag "..target_env_state)

    LF_Change_Day_Night(context,target_env_state_id)

    return 0
end




------------------------------------------------------------------

function LF_Get_Current_Day_Night(context)
    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]

    return current_env_state_id
end



function LF_Change_Day_Night(context,target_env_state)

    --LD漏填了昼夜切换的物件列表，直接返回
    if #EnvControlGadgets <= 0 and #DayAppearGadgets <= 0 and #NightAppearGadgets<=0 then
        ScriptLib.PrintContextLog(context,"EnvState: 没有填写昼夜切换的gadget list！！")
        return 0
    end


    --处理昼夜转换型物件的昼夜状态
    for i = 1, #EnvControlGadgets do
        LF_Change_State_Day_Night(context,EnvControlGadgets[i],target_env_state)
    end


    local is_daynight_finish = ScriptLib.GetGroupVariableValue(context, "is_daynight_finish")
    if (is_daynight_finish ~= 1) then
        --当没有进入完成态时，处理昼夜出现/消失型物件的出现和消失
        if (ScriptLib.GetLevelTagNameById(context,target_env_state) == "2_4_Day") then

            if ( DayAppearGadgets ~= nil) then
                for i = 1, #DayAppearGadgets do
                    ScriptLib.PrintContextLog(context,"EnvState: 正在将DayOnly物件 "..DayAppearGadgets[i].." 加载")
                    ScriptLib.CreateGadget(context,{config_id = DayAppearGadgets[i]})
                end
            end

            if ( NightAppearGadgets ~= nil) then
                for i = 1, #NightAppearGadgets do
                    ScriptLib.PrintContextLog(context,"EnvState: 正在将NightOnly物件 "..NightAppearGadgets[i].." 移除")
                    ScriptLib.RemoveEntityByConfigId(context,0,EntityType.GADGET,NightAppearGadgets[i])
                end
            end

        elseif (ScriptLib.GetLevelTagNameById(context,target_env_state) == "2_4_Night") then

            if ( NightAppearGadgets ~= nil) then
                for i = 1, #NightAppearGadgets do
                    ScriptLib.PrintContextLog(context,"EnvState: 正在将NightOnly物件 "..NightAppearGadgets[i].." 加载")
                    ScriptLib.CreateGadget(context,{config_id = NightAppearGadgets[i]})
                end
            end

            if ( DayAppearGadgets ~= nil) then
                for i = 1, #DayAppearGadgets do
                    ScriptLib.PrintContextLog(context,"EnvState: 正在将DayOnly物件 "..DayAppearGadgets[i].." 移除")
                    ScriptLib.RemoveEntityByConfigId(context,0,EntityType.GADGET,DayAppearGadgets[i])
                end
            end
        end
    end
end



--输入一个gadget，将其转到对应的昼夜状态
function LF_Change_State_Day_Night(context, gadget, target_env_state_id)

    local target_env_state = ScriptLib.GetLevelTagNameById(context,target_env_state_id)
    ScriptLib.PrintContextLog(context,"EnvState: 正在将物件 "..gadget.." 的昼夜状态切换至 "..target_env_state)

    local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,gadget)
    local current_phase = current_state % 10
    local target_gadgetState = 0
    
    ScriptLib.PrintContextLog(context,"EnvState: 物件 "..gadget.." 的当前阶段为 "..current_phase)
    --夜转昼
    if (target_env_state == "2_4_Day") then
        target_gadgetState = 200+current_phase
    end
    --昼转夜
    if (target_env_state == "2_4_Night") then
        target_gadgetState = 300+current_phase
    end

    --如果目标状态和当前状态一致，说明没有要转的，提前返回
    --if (target_gadgetState == current_state) then
    --    return 0
    --end

    ScriptLib.SetGroupGadgetStateByConfigId(context, 0, gadget, target_gadgetState)
    ScriptLib.PrintContextLog(context,"EnvState: 物件 "..gadget.." 切换至 "..target_gadgetState.." 成功")
end



function LF_Is_Gadget_DayNight(context,gadget_id)

    for i = 1 ,#EnvControlGadgets do
        if gadget_id == EnvControlGadgets[i] then
            return true
        end
    end
    return false

end



------------------------------------------------------------------


--lua层调用，将指定gadget转到一个合适的昼夜锁状态
function DayNight_Gadget_Lock(context,gadget_id)

    ScriptLib.PrintContextLog(context,"EnvState: 将昼夜物件"..gadget_id.."锁定")
    if (not LF_Is_Gadget_DayNight(context,gadget_id)) then 
        ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
        return -1 
    end
    local current_env_state_id = LF_Get_Current_Day_Night(context)
    local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
    if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,200)
    end
    if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,300)
    end

    return 0
end

--lua层调用，将指定gadget转到一个合适的昼夜激活状态
function DayNight_Gadget_Unlock(context,gadget_id)

    ScriptLib.PrintContextLog(context,"EnvState: 将昼夜物件"..gadget_id.."解锁")
    if (not LF_Is_Gadget_DayNight(context,gadget_id)) then 
        ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
        return -1 
    end
    local current_env_state_id = LF_Get_Current_Day_Night(context)
    local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
    ScriptLib.PrintContextLog(context,"EnvState: 当前昼夜为"..current_env_state)
    if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,202)
        ScriptLib.PrintContextLog(context,"EnvState: 将物件状态设置为"..202)
    end
    if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,302)
        ScriptLib.PrintContextLog(context,"EnvState: 将物件状态设置为"..302)
    end

    return 0
end

--lua层调用，将指定gadget重置到当前的昼夜基态
function DayNight_Gadget_Reset(context,gadget_id)

    ScriptLib.PrintContextLog(context,"EnvState: 将昼夜物件"..gadget_id.."重置")
    if (not LF_Is_Gadget_DayNight(context,gadget_id)) then 
        ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
        return -1 
    end
    local current_env_state_id = LF_Get_Current_Day_Night(context)
    local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
    local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,gadget_id)
    local current_phase = current_state % 10
    if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,200+current_phase)
    end
    if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,300+current_phase)
    end

    return 0
end

--lua层调用，将指定gadget转到一个合适的昼夜关闭状态
function DayNight_Gadget_Finish(context,gadget_id)

    ScriptLib.PrintContextLog(context,"EnvState: 将昼夜物件"..gadget_id.."设置到完成")
    if (not LF_Is_Gadget_DayNight(context,gadget_id)) then 
        ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
        return -1 
    end
    local current_env_state_id = LF_Get_Current_Day_Night(context)
    local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
    if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,201)
    end
    if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,gadget_id,301)
    end

    return 0
end




------------------------------------------------------------------
--s1329127 运营埋点，与封能台座交互
function SLC_Mark_Energy_Source_Interaction(context)
    ScriptLib.PrintContextLog(context,"EnvState: source entity id为"..context.source_entity_id)
    
    local current_env_state = LF_Get_Current_Day_Night(context)
    local entity_id = context.source_entity_id
    local gadget_id = ScriptLib.GetGadgetIdByEntityId(context, entity_id)
    local configId = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
    ScriptLib.PrintContextLog(context,"EnvState: config id为"..configId)

    ScriptLib.PrintContextLog(context,"EnvState: 运营打点：封能台座-参数：".."daynight_state = "..current_env_state.."config_id = "..configId.."gadget_id = "..gadget_id)
    ScriptLib.MarkGroupLuaAction(context, "EnergySource_1","",{["daynight_state"]=current_env_state,["config_id"]=configId,["gadget_id"]=gadget_id})

    return 0
end






------------------------------------------------------------------
Initialize()