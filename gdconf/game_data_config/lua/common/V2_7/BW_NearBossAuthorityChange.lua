--[[======================================
||	filename:	BW_NearBossAuthorityChange
||	owner: 		chen.chen
||	description:	用于处理联机下怪物authority的切换问题
||	LogName:	##[BW_NearBossAuthorityChange]
||	Protection:	
=======================================]]--

local extraTriggers={
 	{ name = "leave_battle_region", config_id = 8000001,event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_battle_region", trigger_count = 0, forbid_guest = false },
    { name = "enter_battle_region", config_id = 8000002,event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_battle_region", trigger_count = 0 , forbid_guest = false },
}

function LF_Initialize_Group(triggers, suites)
	local id=8100001
	for i=1,#monsters do
		if monsters[i].config_id == defs.bossConfigId then
			local configId=monsters[i].config_id
			local insertRegion={ config_id = id, shape = RegionShape.SPHERE, radius = 40, pos=monsters[i].pos, area_id = monsters[i].area_id}
			table.insert(regions,insertRegion)
			for j=1,#suites do
				for k=1,#suites[j].monsters do
					if suites[j].monsters[k]==configId then
						table.insert(suites[j].regions,id)
					end
				end
			end
			break
		end
	end
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
--初始化
end

--处理玩家出战斗圈，转移authority
function action_leave_battle_region(context, evt)
	if evt.param1 ~= 8100001 then
		return 0
	end
    --玩家出圈
    ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 玩家出战斗圈"..context.uid)
	--尝试转移config_id的authority, 当uid和config_id的authority不一致时尝试转移到region_config_id里的玩家。
    ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 尝试重新分配authority")
    if defs.bossConfigId~=nil then
		ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.bossConfigId, evt.param1)
	end
	return 0
end

--角色入圈，尝试切auth
function action_enter_battle_region(context, evt)
	if evt.param1 ~= 8100001 then
		return 0
	end
    ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 玩家进战斗圈")
    --玩家进圈时，先查询入战region范围内是否存在玩家
    --如果存在，说明该玩家不是第一个进入region的，那么圈内其他玩家中一定有authority（因为出圈会强制重新分配，入圈的时候会强制分配）
    --如果不存在，说明该玩家是第一个进入region的，将authority分配给他
    local no_avatar_in_region = true
    local uidlist = ScriptLib.GetSceneUidList(context)
    if uidlist == -1 or uidlist == nil or #uidlist == 0 then
        ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 没有取到uidlist，认为是上线触发region的情况，强制把authority刷给进圈的玩家")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.bossConfigId, context.uid)
        return 0
    end
    local region = {}
    for i = 1, #regions do
        if regions[i].config_id == 8100001 then 
            region = regions[i]
            break
        end
    end
    --如果没找到，则报错并返回
    if region.config_id==nil then
    	ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 8110001未找到")
    	return 0
    end
    for i = 1, #uidlist do
        if (LF_Avatar_is_in_region(context,uidlist[i],region) and uidlist[i] ~= context.uid) then
            no_avatar_in_region = false
            ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 圈内存在玩家："..uidlist[i].."，不分配authortiy")
            break
        end
    end
    if (no_avatar_in_region) then
        ScriptLib.PrintContextLog(context,"BW_NearBossAuthorityChange: 第一个进入region的玩家"..context.uid.."，分配authortiy")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.bossConfigId, context.uid)
    end
	return 0
end

function LF_Avatar_is_in_region(context,uid,region)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, avatar_id)
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

LF_Initialize_Group(triggers, suites)