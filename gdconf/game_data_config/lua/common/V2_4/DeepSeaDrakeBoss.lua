local Tri = {
    { name = "leave_battle_region", config_id = 8000002,event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_battle_region", trigger_count = 0, forbid_guest = false },
    { name = "enter_battle_region", config_id = 8000003,event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_battle_region", trigger_count = 0 , forbid_guest = false },
    { name = "leave_optimization_region", config_id = 8000004,event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_optimization_region", trigger_count = 0, forbid_guest = false },
    { name = "enter_optimization_region", config_id = 8000005,event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_optimization_region", trigger_count = 0 , forbid_guest = false },
    { name = "monster_battle",config_id = 8000006, event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_monster_battle", trigger_count = 0 },
    { name = "group_will_unload",config_id = 8000007, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
}

function Initialize()
    for k,v in pairs(Tri) do
        table.insert(triggers, v)
    end
    for i = 1, #suites do 
        for k,v in pairs(Tri) do
	    	table.insert(suites[i].triggers, v.name)
	    end
    end
end

-----------------------------------------------------------------------------------------------

--处理玩家出战斗圈，转移authority
function action_leave_battle_region(context, evt)
	if evt.param1 ~= defs.battle_regionID then
		return 0
	end
    --玩家出圈，清除context.uid的eyePoint视野锚点区域
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家出战斗圈"..context.uid)
	--尝试转移config_id的authority, 当uid和config_id的authority不一致时尝试转移到region_config_id里的玩家。
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 尝试重新分配authority")
	local ret1 = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.monster_1, evt.param1)
	local ret2 = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.monster_2, evt.param1)
	

	return 0
end

--战斗期间入圈，让怪物强制入战
function action_enter_battle_region(context, evt)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家进战斗圈")
	if evt.param1 ~= defs.battle_regionID then
		return 0
	end

    --玩家进圈时，先查询入战region范围内是否存在玩家
    --如果存在，说明该玩家不是第一个进入region的，那么圈内其他玩家中一定有authority（因为出圈会强制重新分配，入圈的时候会强制分配）
    --如果不存在，说明该玩家是第一个进入region的，将authority分配给他
    local no_avatar_in_region = true
    local uidlist = ScriptLib.GetSceneUidList(context)
    if uidlist == -1 or uidlist == nil or #uidlist == 0 then
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 没有取到uidlist，认为是上线触发region的情况，强制把authority刷给进圈的玩家")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_1, context.uid)
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_2, context.uid)
        return 0
    end
    for i = 1, #uidlist do
        if (LF_Avatar_is_in_region(context,uidlist[i],defs.battle_regionID) and uidlist[i] ~= context.uid) then
            no_avatar_in_region = false
            ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 圈内存在玩家："..uidlist[i].."，不分配authortiy")
            break
        end
    end
    if (no_avatar_in_region) then
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 第一个进入region的玩家"..context.uid.."，分配authortiy")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_1, context.uid)
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_2, context.uid)
    end

    local ret1 = ScriptLib.SetMonsterBattleByGroup(context, defs.monster_1, 155005095)
    local ret2 = ScriptLib.SetMonsterBattleByGroup(context, defs.monster_2, 155005095)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret1)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret2)


	return 0
end


--玩家进入视野优化圈，将visiontype强制设定为50050006（boss group的visiontype）
function action_enter_optimization_region(context, evt)
	if evt.param1 ~= defs.optimize_regionID then
		return 0
	end
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家进优化圈，将视野锁在当前group上")
    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {defs.vision_type1,defs.vision_type2})
    ScriptLib.ForbidPlayerRegionVision(context, context.uid)
	return 0
end

--玩家出视野优化圈，恢复visiontype
function action_leave_optimization_region(context, evt)
	if evt.param1 ~= defs.optimize_regionID then
		return 0
	end
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 玩家离开优化圈，恢复常规visiontype逻辑")
    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
    ScriptLib.RevertPlayerRegionVision(context, context.uid)
	return 0
end

--group will unload时，保护确保visiontype恢复
function action_group_will_unload(context,evt)

    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: group即将卸载，保底恢复玩家的visiontype")
	--VisionType恢复
	local uidList = ScriptLib.GetSceneUidList(context)
	for k,v in pairs(uidList) do
		ScriptLib.SetPlayerGroupVisionType(context, {v}, {1})
		ScriptLib.RevertPlayerRegionVision(context, v)
	end

	return 0
end

--触发战斗
function action_monster_battle(context, evt)
	if evt.param1 ~= defs.monster_1 and evt.param1 ~= defs.mosnter_2 then 
		return 0
	end

    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 水龙蜥boss入战")

    --开战时，强制将墙壁刷出来一遍，防止墙跟着refreshid走，导致墙被打掉刷不出来的问题
    ScriptLib.CreateGadget(context,{config_id = defs.wall_1})
    ScriptLib.CreateGadget(context,{config_id = defs.wall_2}) 
    ScriptLib.CreateGadget(context,{config_id = defs.wall_3}) 
	return 0
end
-----------------------------------------------------------------------------------------------


function SLC_Deny_Lock_On(context,isOn)
    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 深海龙蜥循环boss：将墙壁的DenyLockOn设置为"..isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.wall_1, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.wall_2, "SGV_deny_lock_on" ,isOn)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.wall_3, "SGV_deny_lock_on" ,isOn)
    return 0
end

--龙蜥向group通知脱战，直接重置boss
function SLC_Reset_Battle(context)

    ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 深海龙蜥脱战server lua call，销毁并重新创建龙蜥")
    --移除掉两只水龙蜥
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, defs.monster_1)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, defs.monster_2)
    --再重新创建出来
	ScriptLib.CreateMonster(context, { config_id = defs.monster_1, delay_time = 0 })
	ScriptLib.CreateMonster(context, { config_id = defs.monster_2, delay_time = 0 })

    --龙蜥试图脱战重刷时，会先尝试找圈内合法的玩家作为authority。如果此时圈内没有玩家，再随缘给authority
    local uidlist = ScriptLib.GetSceneUidList(context)
    local has_avatar_in_region = false
    for i = 1, #uidlist do
        if LF_Avatar_is_in_region(context,uidlist[i],defs.battle_regionID) then
            ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 龙蜥重置，尝试将Authority设置给圈内玩家："..uidlist[i])
            --将Authority强行设置为进圈的玩家
            ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_1, uidlist[i])
            ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.monster_2, uidlist[i])
            has_avatar_in_region = true
        end
    end
    
    if (has_avatar_in_region) then
        local ret1 = ScriptLib.SetMonsterBattleByGroup(context, defs.monster_1, 155005095)
        local ret2 = ScriptLib.SetMonsterBattleByGroup(context, defs.monster_2, 155005095)
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret1)
        ScriptLib.PrintContextLog(context,"DeepseaDrakeBoss: 设置怪物入战的结果为"..ret2)
    end
    
    ScriptLib.CreateGadget(context,{config_id = defs.wall_1})
    ScriptLib.CreateGadget(context,{config_id = defs.wall_2}) 
    ScriptLib.CreateGadget(context,{config_id = defs.wall_3}) 

    --ScriptLib.SetGroupVariableValue(context, "challenge_state", 0)
    return 0
end


function LF_Avatar_is_in_region(context,uid,region_id)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, avatar_id)
    local region = {}
    for i = 1, #regions do
        if regions[i].config_id == region_id then 
            region = regions[i]
        end
    end
	local X = pos1.x - region.pos.x
	local Y = pos1.y - region.pos.y
	local Z = pos1.z - region.pos.z
    
	if region.shape == RegionShape.SPHERE then
		if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
			return true
		else 
			return false
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
			return false
		else
			return true
		end
	end
end


-----------------------------------------------------------------------------------------------

Initialize()