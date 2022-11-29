--[[======================================
||	filename:       Activity_WorldBoss
||	owner:          chao.cui
||	description:    大世界BOSS
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]

---
-- defs.small_region_id
-- defs.big_region_id

-- LD布设
-- 大小两个Region

-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_WorldBoss] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    --{ config_id = 40000001, name = "tri_monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0},
    { config_id = 40000002, name = "tri_enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION", action = "action_EVENT_ENTER_REGION", forbid_guest = false, trigger_count = 0},
    { config_id = 40000003, name = "tri_leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION", action = "action_EVENT_LEAVE_REGION", forbid_guest = false, trigger_count = 0},
}

------ conditions & actions ------
-- function condition_EVENT_ANY_MONSTER_DIE(context, evt)

--     if ScriptLib.GetGroupMonsterCountByGroupId(context, defs.group_id) ~= 0 then
-- 		return false
-- 	end
	
-- 	return true
-- end

-- function action_EVENT_ANY_MONSTER_DIE(context, evt)
-- 	if 0 ~= ScriptLib.CreateGadget(context, { config_id = defs.chest_config_id }) then
-- 	  PrintLog(context, "生成宝箱失败")
-- 	  return -1
-- 	end
-- 	return 0
-- end

function condition_EVENT_ENTER_REGION(context, evt)
	if evt.param1 ~= defs.small_region_id then return false end
	return true
end

function action_EVENT_ENTER_REGION(context, evt)
    PrintLog(context, "进入内圈")
    ScriptLib.SetPlayerEyePoint(context, defs.small_region_id, defs.big_region_id)	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION(context, evt)
	if evt.param1 ~= defs.big_region_id then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION(context, evt)
    PrintLog(context, "离开外圈")
    if context.uid ~= 0 then
        ScriptLib.ClearPlayerEyePoint(context, defs.small_region_id)
    end
	return 0
end

------ SLC ------

-- charge_type: 0-负电荷 1-正电荷
function SLC_Activity_Boss_Watcher_Charge(context, charge_type)

    PrintLog(context, "电荷类型:"..charge_type)

    local uidlist = ScriptLib.GetSceneUidList(context)
    for i = 1, #uidlist do
        -- 迁移3.3的接口,替换原计算逻辑 by siyu.li
        local r = defs.watcher_region_id or defs.big_region_id
        if ScriptLib.IsInRegion(context, uidlist[i], r) then
            if charge_type == 1 then 
                -- 正电荷
                ScriptLib.AddExhibitionAccumulableData(context, uidlist[i], "Activity_GravenBOSS_Positive_Charge", 1)
            end
            
            if charge_type == 0 then 
                -- 负电荷
                ScriptLib.AddExhibitionAccumulableData(context, uidlist[i], "Activity_GravenBOSS_Negative_Charge", 1)
            end
        end
    end
	return 0
end

------ LF -------
function LF_Avatar_Is_In_Region(context, uid, region_id)
    local avatar_id = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos1 = ScriptLib.GetPosByEntityId(context, avatar_id)

    local region
    for _, _region in pairs(regions) do
        if _region.config_id == region_id then 
            region = _region
            break
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

function LF_Initialize_Level()

	for _k, _tri in pairs(extraTriggers) do
		table.insert(triggers, _tri)
        table.insert(suites[1].triggers, _tri.name)
	end

    return 0
end

LF_Initialize_Level()
