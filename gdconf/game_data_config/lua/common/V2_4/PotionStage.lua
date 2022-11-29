-- 基础框架
-- GroupLoad时触发
-- 将挂载Group以GroupRefresh的方式刷新，同时修改其等级
-- 向Team传值当前关卡的部分数据

local tempTrigger = {
    { config_id = 2330001, name = "GroupLoad", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GroupLoad", trigger_count = 0 },
}
--------初始化----------
function LF_Initialize_Level()
    for k,v in pairs(tempTrigger) do
        table.insert(triggers, v)
        for i = 1,#suites do
            table.insert(suites[i].triggers, v.name)
        end
    end

    return 0
end
--------事件函数----------
-- 装载Group时处理
function action_GroupLoad(context, evt)
    -- 从服务器获取等级
    local thisGroup = ScriptLib.GetContextGroupId(context)
    local vector = ScriptLib.GetPotionDungeonAffixParams(context)
    if vector == nil or #vector < 2 then
        ScriptLib.PrintContextLog(context, "## vector不合法，加载失败")
        return -1
    end
    local targetUpLevel = vector[2]
    local enterDungeonNum = vector[1]
    ScriptLib.PrintContextLog(context, "## 魔药学地城加载触发：当前地城数第"..enterDungeonNum.."次。地城上手等级为" ..targetUpLevel.."级")
    -- 将挂载Group以GroupRefresh的方式刷新，同时修改其等级
    -- 如果targetUpLevel = 0 要跳过
    if targetUpLevel>0 then
        ScriptLib.RefreshGroup(context, { group_id = thisGroup, suite = 1, refresh_level_revise = targetUpLevel })
        ScriptLib.PrintContextLog(context, "## 魔药学地城刷新对应Group成功")
    end
    -- 向Team传值当前关卡的部分数据
    local uidList = ScriptLib.GetSceneUidList(context)
    ScriptLib.SetTeamServerGlobalValue(context, uidList[1], "SGV_EnterDungeonNum", enterDungeonNum)
    return 0
end

LF_Initialize_Level()
--- ServerUploadTool Save to [/root/env/data/lua/common/V2_4]  ---
