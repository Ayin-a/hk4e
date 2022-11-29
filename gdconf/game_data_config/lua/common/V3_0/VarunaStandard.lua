--[[======================================
||  filename:   VarunaStandard
||  owner:      shuyi.chang
||  description:    回流之柱被控制组
||  LogName:    ## [VarunaStandard]
||  Protection: 
=======================================]]

--[[
local defs = 
{
    -- 钓鱼点
    fishingPoint = {
        bottom = suite_id01,
        top = suite_id02,
    },

    -- 升降水面，应该只有一项
	rootWaterTable = 
	{
        [188001] = 330300001,
	},
}
--]]

local extraTriggers = 
{
	{ config_id = 50000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
	{ config_id = 50000002, name = "PLATFORM_ARRIVAL", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_EVENT_PLATFORM_ARRIVAL", trigger_count = 0 },
}

local extraVariables = 
{

}

local rootGadgetId = 70290436
local bubbleGadgetId = 70290437
local waterGadgetId = 70310225
local fishingGadgetId = 70950099

local bubbles = {}
local roots = {}
local waterConfigId = 0
local fishPoints = {}

local fishGroupId = 133303151
--================================================================
-- Local Functions
--================================================================
function LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

    -- insert triggers
    for i = 1, #extraTriggers do
        table.insert(triggers, extraTriggers[i])
    end

    -- add triggers to suite
    for i = 1, #extraTriggers do
        if extraTriggers[i].name == "GROUP_LOAD"  then
            -- 每个suite都放group load
            for j = 1, #suites do
                table.insert(suites[j].triggers,extraTriggers[i].name)
            end
        else
            -- 另外的只放到初始suite 1中
            table.insert(suites[1].triggers,extraTriggers[i].name)
        end
    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    for k, v in pairs(gadgets) do
        -- find all roots
        if v.gadget_id == rootGadgetId then
            table.insert(roots, v.config_id)
        end

        -- find all bubbles
        if v.gadget_id == bubbleGadgetId then
            table.insert(bubbles, v.config_id)
        end

        -- find all waters(should only have one)
        if v.gadget_id == waterGadgetId then
            waterConfigId = v.config_id
        end

        -- find all fishing point(should only have two)
        if v.gadget_id == fishingGadgetId then
            table.insert(fishPoints, v.config_id)
        end
        
    end
end

function LF_SetGadgetState(context, configId, gadgetState)
	-- ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_SetSpoutGadgetState is called")

	ScriptLib.SetGadgetStateByConfigId(context, configId, gadgetState)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] gadget = "..configId..", state is set to "..gadgetState)

end


function LF_SetRootAndBubbleState(context, prev_context, weatherState)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_SetRootAndBubbleState is called")

    LF_SetRootAndBubbleState_Local(context, weatherState)
    return 0
end

function LF_CreateFishingPoint(context, weatherState)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_CreateFishingPoint is called")

    -- 0雨天用低处的，1晴天用高处的
    local suite = 0

    if weatherState == 0 then
        -- 雨天，创建低的
        suite = defs.fishingPoint.bottom
    elseif weatherState == 1 then
        -- 晴天，创建高的
        suite = defs.fishingPoint.top
    end

    if suite ~= 0 then
        -- ScriptLib.CreateGadget(context, { config_id = pointId })
        ScriptLib.AddExtraGroupSuite(context, fishGroupId, suite)
        ScriptLib.PrintContextLog(context, "## [VarunaStandard] create fish point "..suite)
    end

end

function LF_CreateFishingPoint_FromOther(context, prev_context, weatherState)
    LF_CreateFishingPoint(context, weatherState)
    return 0
end

function LF_DelFishingPoint(context, weatherState)
    ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_DelFishingPoint is called")

    local suite = 0

    if weatherState == 0 then
        -- 雨天，删除高的
        suite = defs.fishingPoint.top
    elseif weatherState == 1 then
        -- 晴天，删除低的
        suite = defs.fishingPoint.bottom
    end

    if suite == 0 then
        -- 组里没有钓鱼点，啥也不干
        return 0
    end

    -- 移动水面只有一个，这里就写死了，简单一点
    local exist = ScriptLib.CheckIsInGroup(context, 133303188, 188001)
    if exist == true then

        local waterStatus = ScriptLib.GetGroupVariableValueByGroup(context, "waterStatus", 133303188)
        if waterStatus == 2 then
            -- 水片已存在，且在移动中，需要把钓鱼点干掉，创建等移动平台到位通知
            ScriptLib.RemoveExtraGroupSuite(context, fishGroupId, defs.fishingPoint.top)
            ScriptLib.RemoveExtraGroupSuite(context, fishGroupId, defs.fishingPoint.bottom)
            ScriptLib.PrintContextLog(context, "## [VarunaStandard] del all fish points cuz water is moving")

        end
        -- 存在但没在移动，只干掉不需要的那个钓鱼点（这个不需要的钓鱼点其实也应该已经不在了）
        ScriptLib.RemoveExtraGroupSuite(context, fishGroupId, suite)
        ScriptLib.PrintContextLog(context, "## [VarunaStandard] del fish point "..suite)
    else 
        ScriptLib.RemoveExtraGroupSuite(context, fishGroupId, defs.fishingPoint.top)
        ScriptLib.RemoveExtraGroupSuite(context, fishGroupId, defs.fishingPoint.bottom)
        ScriptLib.PrintContextLog(context, "## [VarunaStandard] del all fish points cuz water doesn't exist")
    end
end

function LF_DelFishingPoint_FromOther(context, prev_context, weatherState)
    LF_DelFishingPoint(context, weatherState)
    return 0
end

function LF_SetRootAndBubbleState_Local(context, weatherState)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_SetRootAndBubbleState_Local is called")

    -- 0雨天，1晴天
    LF_SetBubbleState(context, weatherState)

    LF_SetRootState(context, weatherState)

    LF_SetWaterState(context, weatherState)

    if #fishPoints ~= 0 then
        LF_DelFishingPoint(context, weatherState)
    end    
    return 0
end

function LF_SetBubbleState(context, weatherState)
    -- 下雨的时候有泡泡
    local gadgetState
    if weatherState == 0 then
        gadgetState = 0
    elseif weatherState == 1 then
        gadgetState = 201
    end

    for i = 1, #bubbles do
        -- 只设置非202状态的泡泡
        if 202 ~= ScriptLib.GetGadgetStateByConfigId(context, 0, bubbles[i]) then
            LF_SetGadgetState(context, bubbles[i], gadgetState)
        end
    end
end

function LF_SetRootState(context, weatherState)
    -- 下雨的时候不能和树桩交互
    local gadgetState
    if weatherState == 0 then
        gadgetState = 0
    elseif weatherState == 1 then
        gadgetState = 201
    end

    for i = 1, #roots do
        LF_SetGadgetState(context, roots[i], gadgetState)
    end
end

function LF_SetWaterState(context, weatherState)
    ScriptLib.PrintContextLog(context, "## [VarunaStandard] LF_SetWaterState is called, waterConfigId = "..waterConfigId)

    -- 下雨的时候水面下降（把水吸走了）
    local pointId
    if weatherState == 0 then
        pointId = 2
    elseif weatherState == 1 then
        pointId = 1
    end

    if waterConfigId ~= 0 then
        for k, v in pairs(defs.rootWaterTable) do
            -- 水面上升和下降
            ScriptLib.SetPlatformPointArray(context, k, v, {pointId}, { route_type = 0 })
            ScriptLib.PrintContextLog(context, "## [VarunaStandard] water "..k.." is moving, pointId = "..pointId)
    
            ScriptLib.SetGroupVariableValueByGroup(context, "waterStatus", 2, 133303188)
        end
    end
end

--================================================================
-- Triggers
--================================================================
function action_EVENT_GROUP_LOAD(context, evt)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] group is loaded")

    -- group 加载时查询当前天气
    local weather = ScriptLib.GetGroupVariableValueByGroup(context, "SGV_WeatherState", 133303126)
	LF_SetRootAndBubbleState_Local(context, weather)

    ScriptLib.PrintContextLog(context, "## [VarunaStandard] there are "..#fishPoints.." items in table fishPoints")

	return 0
end

function action_EVENT_PLATFORM_ARRIVAL(context, evt)
	ScriptLib.PrintContextLog(context, "## [VarunaStandard] platform "..evt.param1.." arrives at point id "..evt.param2..", index = "..evt.param3)

    -- 根据平台到了哪个点决定出现哪个
    -- 平台所在group和钓鱼点所在group不是同一个，平台需要通知钓鱼点group创建时机
    -- 删除听133303126的天气group var通知
    if evt.param3 == 2 then
        -- 雨天，低点，通知133303151
        ScriptLib.ExecuteGroupLua(context, 133303151, "LF_CreateFishingPoint_FromOther", {0})
        ScriptLib.SetGroupVariableValueByGroup(context, "waterStatus", 0, 133303188)

    elseif evt.param3 == 1 then
        -- 晴天，高点
        ScriptLib.ExecuteGroupLua(context, 133303151, "LF_CreateFishingPoint_FromOther", {1})
        ScriptLib.SetGroupVariableValueByGroup(context, "waterStatus", 1, 133303188)

    end

	return 0
end


--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)