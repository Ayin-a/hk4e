--[[======================================
||	filename:	Boss_Raijin
||	owner: 		zijun.ma
||	description:	雷音权现Boss战专用
||	LogName:	##[TD_Raijin]
||	Protection:
=======================================]]--
-- Trigger变量
--[[
local defs = {
    BossConfigID = 181001,
    regionID = 181005,
}
--]]

--------Boss女士-------------
local tempTrigger = {
    { config_id = 2330001, name = "EVENT_ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "",
      condition = "", action = "action_BattleStart", trigger_count = 0,forbid_guest = false },
    { config_id = 2330002, name = "EVENT_LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "",
      condition = "", action = "action_LeaveRegion", trigger_count = 0,forbid_guest = false},
}

--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        table.insert(suites[1].triggers, v.name)
    end

end
--------公用函数----------
-- 入圈时ForceRefreshAuthorityByConfigId
-- 离圈时TryReallocateEntityAuthority

-- 入战时强制将Authority刷新到主机
function action_BattleStart(context,evt)
    if evt.param1 ~= defs.regionID then
        return 0
    end

    ScriptLib.PrintContextLog(context,"##TD_Raijin: 玩家"..context.uid.. "进战斗圈")
    -- 入战时，尽可能分配Host（host在圈里分给host、host不在分给任意圈内玩家)

    local no_avatar_in_region = true
    local uidlist = ScriptLib.GetSceneUidList(context)

    if uidlist == -1 or uidlist == nil or #uidlist == 0 then
        ScriptLib.PrintContextLog(context,"##TD_Raijin: 没有取到uidlist，上限触发region，强制锁Auth为入圈者")
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.BossConfigID, context.uid)
        return 0
    end

    for i = 1, #uidlist do
        if (LF_Avatar_is_in_region(context,uidlist[i],defs.regionID) and uidlist[i] ~= context.uid) then
            no_avatar_in_region = false
            ScriptLib.PrintContextLog(context,"##TD_Raijin: 圈内存在玩家："..uidlist[i].."，不分配authortiy")
            break
        end
    end

    if (no_avatar_in_region) then
        ScriptLib.PrintContextLog(context,"##TD_Raijin: 第一个进入region的玩家"..context.uid.."，分配authortiy")
        --将Authority强行设置为进圈的玩家
        ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.BossConfigID, context.uid)
    end



    return 0
end

-- 切阶段二环境
function action_LeaveRegion(context,evt)
    if evt.param1 ~= defs.regionID then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_Raijin : 离开的玩家uid = "..context.uid)
    local ret = ScriptLib.TryReallocateEntityAuthority(context, context.uid, defs.BossConfigID, evt.param1)
    ScriptLib.PrintContextLog(context, "## TD_Raijin : 返回值为 "..ret)

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
        ScriptLib.PrintContextLog(context, "## TD_Raijin : LF_Avatar_is_in_region 距离为 = "..math.sqrt(X*X+Y*Y+Z*Z))
        ScriptLib.PrintContextLog(context, "## TD_Raijin : LF_Avatar_is_in_region Radius为 = "..region.radius)
        if math.sqrt(X*X+Y*Y+Z*Z) <= region.radius then
            return true
        else
            return false
        end
    elseif region.shape == RegionShape.CUBIC then
        ScriptLib.PrintContextLog(context, "## TD_Raijin : LF_Avatar_is_in_region 距离为 = "..math.sqrt(X*X+Y*Y+Z*Z))
        ScriptLib.PrintContextLog(context, "## TD_Raijin : LF_Avatar_is_in_region size为 = "..region.size.z/2)
        if math.abs(X) > region.size.x/2 or math.abs(Y) > region.size.y/2 or math.abs(Z) > region.size.z/2 then
            return false
        else
            return true
        end
    end
end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---

