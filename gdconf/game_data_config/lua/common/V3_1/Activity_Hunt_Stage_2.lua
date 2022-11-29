--[[======================================
||	filename:       Activity_Hunt_Stage_2
||	owner:          juntao.chen
||	description:    营地挑战玩法(布设group)
||	LogName:        Activity_Hunt_Stage_2
||	Protection:     [Protection]
=======================================]]

--需求defs
--[[
    local defs = {
        target_group = 111
    }
]]
--[[ 一阶段：
胆小型野猪：add_timid_cnt
野蛮型野猪：add_brutal_cnt
精英野猪：add_elite_cnt

二阶段：
monster_id
left_num
total_num ]]
local stage_1_group_id = 133002075
local stage_2_group_id = {133002081,133002082,133002099}
local stage_3_group_id = 133002068
local monster_list = {
    [28020310] = "add_timid_cnt",
    [28020311] = "add_brutal_cnt",
    [28020312] = "add_elite_cnt",
}
local score_list = {
    [28020310] = 10,
    [28020311] = 50,
    [28020312] = 100,
}
local temp_Variables = {
	{  config_id=50000009,name = "create_random_shield_orb", value = 0, no_refresh = false },
	{  config_id=50000001,name = "create_monster_1", value = 0, no_refresh = false },
	{  config_id=50000002,name = "create_monster_2", value = 0, no_refresh = false },
	{  config_id=50000003,name = "create_monster_3", value = 0, no_refresh = false },
}
local temp_Tirgger = {
	{event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", action = "action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE"},
	{event = EventType.EVENT_ENTER_REGION, source = "", action = "action_EVENT_ENTER_REGION"},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "", action = "action2_EVENT_VARIABLE_CHANGE"},
	{event = EventType.EVENT_GROUP_LOAD, source = "", action = "action_EVENT_GROUP_LOAD"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "Active_Trap", action = "action_EVENT_TIME_AXIS_PASS_Active_Trap"},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "create_random_shield_orb", action = "action_EVENT_TIME_AXIS_PASS_create_random_shield_orb"},
	{event = EventType.EVENT_ANY_MONSTER_DIE, source = "", action = "action_EVENT_ANY_MONSTER_DIE"},
}
function action_EVENT_TIME_AXIS_PASS_create_random_shield_orb(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_TIME_AXIS_PASS_create_random_shield_orb:")
    local _cfgid = ScriptLib.GetGroupTempValue(context,"last_cfgid",{})
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_TIME_AXIS_PASS_create_random_shield_orb:_cfgid=".._cfgid)
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 20000002)
    ScriptLib.CreateGadget(context, { config_id = _cfgid })
    return 0
end
--剩余怪物数量检测：用于二阶段线性解锁黄圈
function action_EVENT_ANY_MONSTER_DIE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ANY_MONSTER_DIE:")
    --非二阶段不跑该function
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ANY_MONSTER_DIE:base_info.group_id="..base_info.group_id)
    if stage_2_group_id == nil then
        return 0
    end
    if #stage_2_group_id ~= 3 then
        return 0
    end
    if base_info.group_id ~=stage_2_group_id[1] and base_info.group_id ~=stage_2_group_id[2] and base_info.group_id ~=stage_2_group_id[3] then
        return 0
    end
    local _count = ScriptLib.GetGroupMonsterCount(context)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ANY_MONSTER_DIE:_count=".._count)
    --1解锁2，2解锁3
    if _count == 2 and base_info.group_id == stage_2_group_id[1] then 
        ScriptLib.ActivateGroupLinkBundle(context, stage_2_group_id[2])
        ScriptLib.AddExtraGroupSuite(context, stage_2_group_id[2], 2)
    elseif _count == 2 and base_info.group_id == stage_2_group_id[2] then 
        ScriptLib.ActivateGroupLinkBundle(context, stage_2_group_id[3])
        ScriptLib.AddExtraGroupSuite(context, stage_2_group_id[3], 2)
    end
    --如果最近踩过的黄圈是本group的圈，则更新左侧剩余数量
	local _circle = ScriptLib.GetGroupTempValue(context, "Cur_Circle",{ group_id = defs.target_group})
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ANY_MONSTER_DIE:_circle=".._circle)
    if _circle == defs.circle_region then
        --更新左侧面板
        ScriptLib.SetGroupVariableValueByGroup(context, "left_num", _count, defs.target_group)
    end
    --如果数量为0，关闭黄圈
    if _count == 0 then 
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ENTER_REGION:DeactivateGroupLinkBundle")
        ScriptLib.DeactivateGroupLinkBundle(context,base_info.group_id)
    end
    return 0
end
--三阶段用 定时激活捕网机关 
function action_EVENT_TIME_AXIS_PASS_Active_Trap(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_TIME_AXIS_PASS_Active_Trap:")
    if evt.param1 == 1 then 
        ScriptLib.ShowReminder(context, 400174)
        --随机挑选一个未激活的trap，记录config_id，生成倒三角箭头
        local _list = {}
        for k,v in pairs(gadgets) do
            if v.gadget_id == 70800230 and ScriptLib.GetGadgetStateByConfigId(context,base_info.group_id,v.config_id) ~= 201 then
                table.insert(_list,v.config_id)
            end
        end
        if #_list > 0 then
            local _t = math.random(#_list)
            ScriptLib.SetGroupTempValue(context,"random_cfgid",_list[_t],{})
            --找到待激活的机关，在他头顶创建一个倒三角
            for k,v in pairs(gadgets) do
                if v.config_id == _list[_t] then
                    ScriptLib.CreateGadgetByConfigIdByPos(context, 20000001,{x=v.pos.x, y=v.pos.y+2, z=v.pos.z}, v.rot)
                end
            end
        end
    elseif evt.param1 == 2 then
        --根据_t生成gadget，移除倒三角
        local _cfgid = ScriptLib.GetGroupTempValue(context,"random_cfgid",{})
        ScriptLib.SetGadgetStateByConfigId(context,_cfgid,201)
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, 20000001)
    end
    return 0
end
--二阶段逻辑：更新当前区域剩余怪物显示
function action_EVENT_ENTER_REGION(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ENTER_REGION:evt.param1="..evt.param1)
    --是否二阶段
    if base_info.group_id ~= stage_2_group_id[1] and base_info.group_id ~= stage_2_group_id[2] and base_info.group_id ~= stage_2_group_id[3] then
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ENTER_REGION:是否二阶段")
        return 0
    end
    --是否走进黄圈
    if evt.param1 ~= defs.circle_region then 
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_ENTER_REGION:是否走进黄圈")
        return 0
    end
    --记录最新踩到的黄圈
    ScriptLib.SetGroupTempValue(context,"Cur_Circle",evt.param1,{ group_id = defs.target_group})
    --更新当前区域剩余怪物显示
    local _count = ScriptLib.GetGroupMonsterCount(context)
    ScriptLib.SetGroupVariableValueByGroup(context, "left_num", _count, defs.target_group)

    return 0
end
function action_EVENT_GROUP_LOAD(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_GROUP_LOAD33:")
    local _uid = ScriptLib.GetSceneOwnerUid(context)
    --三个阶段分别弹图文教程
    if base_info.group_id == stage_1_group_id then
		ScriptLib.AssignPlayerShowTemplateReminder(context,194,{param_uid_vec={},param_vec={},uid_vec={_uid}})
    end
    if base_info.group_id == stage_2_group_id[1] then
		ScriptLib.AssignPlayerShowTemplateReminder(context,195,{param_uid_vec={},param_vec={},uid_vec={_uid}})
        --二阶段额外初始化下变量
        ScriptLib.SetGroupTempValue(context,"catched",0,{})
    end
    
    if base_info.group_id == stage_3_group_id then
        --三阶段帮忙激活下八方网
		ScriptLib.AssignPlayerShowTemplateReminder(context,196,{param_uid_vec={},param_vec={},uid_vec={_uid}})
        local _time = 20
        if defs.Active_Trap_Time ~= nil then _time = defs.Active_Trap_Time end
        ScriptLib.InitTimeAxis(context,"Active_Trap",{_time-5,_time},true)
    end


    return 0
end
function action2_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action2_EVENT_VARIABLE_CHANGE:"..evt.source_name.."="..evt.param1)
    if evt.source_name == "create_random_shield_orb" then
        local _last_cfgid = ScriptLib.GetGroupTempValue(context,"last_cfgid",{})
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action2_EVENT_VARIABLE_CHANGE:_last_cfgid=" .. _last_cfgid)
        local _list = {}
        for k,v in pairs(gadgets) do
            if v.gadget_id == 70800232 and v.config_id ~= _last_cfgid then
                table.insert(_list,v.config_id)
                ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action2_EVENT_VARIABLE_CHANGE:v.config_id=" .. v.config_id)
            end
        end
        local _t = math.random(#_list)
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action2_EVENT_VARIABLE_CHANGE:_t=" .. _t .. "| _list[_t] =" .. _list[_t] )
        ScriptLib.SetGroupTempValue(context,"last_cfgid",_list[_t] , {})
        ScriptLib.InitTimeAxis(context,"create_random_shield_orb",{5},false)
        --找到待创建的护盾球，在他头顶创建一个倒三角
        for k,v in pairs(gadgets) do
            if v.config_id == _list[_t] then
                ScriptLib.CreateGadgetByConfigIdByPos(context, 20000002,{x=v.pos.x, y=v.pos.y+1, z=v.pos.z}, v.rot)
            end
        end
    end
    if evt.source_name == "create_monster_1" then 
        LF_Create_Monster_By_Random_Point(context,28020310,evt.param1)
    end
    if evt.source_name == "create_monster_2" then 
        LF_Create_Monster_By_Random_Point(context,28020311,evt.param1)
    end
    if evt.source_name == "create_monster_3" then 
        LF_Create_Monster_By_Random_Point(context,28020312,evt.param1)
    end
    return 0
end
--只有一阶段才会走这个方式创建怪物
function LF_Create_Monster_By_Random_Point(context,m_id,num)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 LF_Create_Monster_By_Random_Point:")
    local _alivelist = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    local _count = 0
    local _list = {}
    for k,v in pairs(monsters) do
        if v.monster_id == m_id then 
            local _isalive = false
            for i = 1 , #_alivelist do 
                if _alivelist[i] == v.config_id then 
                    _isalive = true
                    break
                end
            end
            if _isalive == false then
                ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 LF_Create_Monster_By_Random_Point:v.config_id="..v.config_id)
                table.insert(_list,v.config_id)
            else
                _count = _count + 1
            end
        end
    end
    local _max = 0
    if m_id == 28020310 then _max = defs.monster_max_1 end
    if m_id == 28020311 then _max = defs.monster_max_2 end
    if m_id == 28020312 then _max = defs.monster_max_3 end
    --创建相应数量怪物且不超过max值
    local _create_count = 0
    if _count + num <= _max then
        _create_count = num
    else
        _create_count = _max - _count
    end
    --开始创建
    for i = 1 ,_create_count do
        if #_list ~= 0 then
            local _t = math.random(#_list)
            ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 LF_Create_Monster_By_Random_Point:_list[_t]=".._list[_t])
            --创建且给小猪、野林猪加初始sgv 设为0 （只有一阶段）其他阶段会默认1
            if m_id == 28020310 or m_id == 28020311 then 
                ScriptLib.CreateMonsterWithGlobalValue(context, _list[_t], {["SGV_STAGE"] = 0})
            else
                ScriptLib.CreateMonster(context, {config_id = _list[_t], delay_time = 0})
            end
            --创建完移出待创建list
            table.remove(_list,_t)
        end
    end
    return 0
end
function action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE(context,evt)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE:"..evt.source_eid)
    local _v = ScriptLib.GetGroupTempValue(context,"eid_"..evt.source_eid,{})
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE:_v=".._v)
    if base_info.group_id == stage_1_group_id then
        --一阶段
        local _id = ScriptLib.GetMonsterIdByEntityId(context, evt.source_eid)
        --一阶段 林野猪和雪猪，不看v直接算分(他们不会逃跑，死了肯定都是捕捉)
        if _id == 28020311 or _id == 28020312 then 
            ScriptLib.SetGroupVariableValueByGroup(context, monster_list[_id], 1, defs.target_group)
        elseif _id == 28020310 then--一阶段小猪
            if _v ~= 0 then --非0都算捕捉
                --根据一阶段怪物id发对应key
                ScriptLib.SetGroupVariableValueByGroup(context, monster_list[_id], 1, defs.target_group)
            end
        end
    elseif base_info.group_id == stage_3_group_id then
        ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE:base_info.group_id == stage_3_group_id")
        --三阶段
        ScriptLib.SetGroupVariableValueByGroup(context, "is_finish", 1, defs.target_group)
    else
        --二阶段
        if _v ~= 0 then 
            --走到这里的怪都是抓到的，发monsterid
            local _monster_id = ScriptLib.GetMonsterIdByEntityId(context, evt.source_eid)
            ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 action_EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE:_monster_id=".._monster_id)
            if _v == 1 then
                ScriptLib.SetGroupVariableValueByGroup(context, "monster_id", _monster_id, defs.target_group)
            elseif _v == 2 then
                ScriptLib.SetGroupVariableValueByGroup(context, "monster_id_sneak", _monster_id, defs.target_group)
            end
            --发数量检测变量
            ScriptLib.ChangeGroupVariableValueByGroup(context, "Stage_2_Monster_Count", 1, defs.target_group)
        end
    end
    return 0
end
function SLC_BeCaptured(context)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 SLC_BeCaptured:")
    if ScriptLib.GetGroupTempValue(context,"eid_"..context.source_entity_id,{}) == 0 then
        ScriptLib.SetGroupTempValue(context,"eid_"..context.source_entity_id,1,{})
    end
    return 0
end
function SLC_HuntAnimal_Sneak(context)
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 SLC_HuntAnimal_Sneak:")
    ScriptLib.SetGroupTempValue(context,"eid_"..context.source_entity_id,2,{})
    return 0
end
function SLC_GoWeak(context)--三阶段雪猪王眩晕计数
    ScriptLib.PrintContextLog(context,"## Activity_Hunt_Stage_2 SLC_GoWeak:")
    if base_info.group_id ~= stage_3_group_id then
        return 0
    end
    ScriptLib.SetGroupVariableValueByGroup(context, "go_weak", 1, defs.target_group)
    return 0
end
--初始化
function Initialize()
	--加触发器
    if temp_Tirgger ~= nil then 
        for k,v in pairs(temp_Tirgger) do
            v.name = v.action
            v.config_id = 40000000 + k
            v.trigger_count = 0
            v.condition = ""
            table.insert(triggers, v) 
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables ~= nil then 
        for k,v in pairs(temp_Variables) do
            table.insert(variables,v)
        end
    end

    --指示物件倒三角
    local _temp_gadget = {config_id = 20000001, gadget_id = 70710432, pos = { x = 1074.944, y = 286.500, z = -424.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
    table.insert(gadgets,_temp_gadget)
    local _temp_gadget = {config_id = 20000002, gadget_id = 70710432, pos = { x = 1074.944, y = 286.500, z = -424.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 }
    table.insert(gadgets,_temp_gadget)
	return 0
end
Initialize()