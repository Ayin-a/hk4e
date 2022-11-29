--[[======================================
||  filename:   TitanEnergy
||  owner:      shuyi.chang
||  description:    泰坦内舱能量玩法
||  LogName:    ## [TitanEnergy]
||  Protection: 
=======================================]]

--[[
local defs = {
    -- 【特别注意】所有流程必需的machine必须放在suite1中，在电池全亮后自动开启
    -- 【特别注意】探索性质的machine必须放在suite2中，在电池全亮后不会自动开启
    -- 【特别注意】只有suite1会在group load时加载

	maxPlayerEnergyLev = 3,

    -- 出了这个区域，整个玩法就被reset了
	titanRegion = 42017,

    -- todo: 保底判断一下各个位置的config id对应的是否是正确的gadget id
    cells = {
        -- 每一项均需严格遵循下述格式，没有line或者node则留空，不能不创建！
        -- [cell_config_id] = {cell = cell_config_id, lines = {line01_config_id, line02_config_id, ...}, nodes = {node01_config_id, ...}}
        [42002] = {cell = 42002, lines = {42003, 42004}, nodes = {42007}},
        [42006] = {cell = 42006, lines = {42005}, nodes = {42007}},
        [42018] = {cell = 42018, lines = {42003}, nodes = {}},
        [42019] = {cell = 42019, lines = {42021, 42022}, nodes = {}},
        [42020] = {cell = 42020, lines = {42021}, nodes = {}},
    },

    -- 指定初始激活的电池id，未指定则默认初始未激活
    activeCells = {42002},
}
--]]


local extraTriggers = 
{	
    { config_id = 50000001, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_ENTER_REGION", trigger_count = 0 },
	{ config_id = 50000002, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_GROUP_LOAD", trigger_count = 0 },
	{ config_id = 50000003, name = "CELL_INTERACT", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_CELL_INTERACT", trigger_count = 0 },
    { config_id = 50000004, name = "MACHINE_INTERACT", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_MACHINE_INTERACT", trigger_count = 0 },
    { config_id = 50000005, name = "ENERGY_PICKUP", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_ENERGY_PICKUP", trigger_count = 0 },
	{ config_id = 50000006, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0 },
	{ config_id = 50000007, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_LEAVE_REGION", trigger_count = 0 },
	{ config_id = 50000008, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GROUP_WILL_UNLOAD", trigger_count = 0 },
	{ config_id = 50000009, name = "TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_TIME_AXIS_PASS", trigger_count = 0 },

}

local extraVariables = 
{
    -- 记录玩家身上有几格能量
	{ config_id = 50000101, name = "playerEnergyLevel", value = 0, no_refresh = true },
    -- 已经激活几节电池
    { config_id = 50000102, name = "activeCellNum", value = 0, no_refresh = true },
    -- 已经激活几个机关，目前没什么用
    { config_id = 50000103, name = "activeMachineNum", value = 0, no_refresh = true },
    -- 0不能开始， 1可以开始但是未开始， 2已开始， 3已完成
    { config_id = 50000104, name = "groupStatus", value = 0, no_refresh = true },


    -- 【弃用】是否所有电池都已经激活
    { config_id = 50000105, name = "allFinished", value = 0, no_refresh = true },
    -- 【弃用】控制此group的玩法能否开启，0为关闭，1为开启，初始默认为0关闭
    { config_id = 50000106, name = "enabled", value = 0, no_refresh = true },
}

local machineGadgetIds = {  
    -- key表示这个机器需要几格能量才能开启
    [1] = 70350439, 
    [2] = 70350440, 
    [3] = 70350441,
}

local cellGadgetId = 70350442
local nodeGadgetId = 70350446
local stoneGadgetId = 70350449
local lineGadgetIds = {
    70350443,
    70350444,
    70350445,
}

-- 都是常量，记一下各个类别的gadget
local stones = {}
local lines = {}
local nodes = {}
local machines = {}

-- 这里的机关单指suite1中玩法必需的机关
local questMachines = {}

local cellCount

-- worktop option表中对应充能和回收的id
local worktopOpt = {
    charge = 35,
    recycle = 69,
    collect = 68,
}

local abilityGroup = "ActivityAbility_TitanEnergy"

local reminderTable = 
{
    playerFull = 60010321, -- 【玩家拥有的能量到达最大值】好了，去下一处吧！
}

-- 能量机关交互后等1s再上新选项
local optionCd = 1



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
        table.insert(suites[1].triggers,extraTriggers[i].name)
    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    LF_InitiateLuaVariables(gadgets, suites, variables)

    -- 用于玩家身上特效的ability group
    regions[defs.titanRegion].team_ability_group_list = {abilityGroup}    

end


function LF_InitiateLuaVariables(gadgets, suites, variables)

    local temp = 0
    for i, v in pairs(gadgets) do

        -- check the number of machines
        for k, j in pairs(machineGadgetIds) do

            -- is machine
            if v.gadget_id == j then
                temp = temp + 1
                -- group variable记录这个机关有几格能量
                local machineEnergyLev = { config_id = 50000006 + temp, name = tostring(i), value = 0, no_refresh = true }
                table.insert(variables, machineEnergyLev)

                -- all machines
                table.insert(machines, i)

                -- only quest machines
                -- 用所在suite判断
                for n = 1, #suites[1].gadgets do
                    if v.config_id == suites[1].gadgets[n] then
                        table.insert(questMachines, i)
                    end
                end
            end
        end

        -- check the number of stones
        if v.gadget_id == stoneGadgetId then
            -- 往table中增加一项，记录这个stone的config id
            table.insert(stones, i)
        end

        -- check the number of nodes
        if v.gadget_id == nodeGadgetId then
            -- 往gadgets的node里加一项cells
            gadgets[i]["cells"] = {}

            table.insert(nodes, i)
        end

        -- check the number of lines
        for k, j in pairs(lineGadgetIds) do
            if v.gadget_id == j then
                -- 往gadgets的line里加一项cells
                gadgets[i]["cells"] = {}

                table.insert(lines, i)
            end
        end
        
    end

    for k, v in pairs(defs.cells) do
        -- 在group的gadget list中的node和line里加一项cells, 记录关联哪些cells
        for i = 1, #defs.cells[k].nodes do
            table.insert(gadgets[defs.cells[k].nodes[i]].cells, k)
        end

        -- lines
        for i = 1, #defs.cells[k].lines do
            table.insert(gadgets[defs.cells[k].lines[i]].cells, k)
        end
    end

    -- 一共有多少个电池
    cellCount = LF_GetTableLength(defs.cells)

end


function LF_GetTableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end


function LF_UpdateStone(context, stoneId, gadgetState)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateStone is called")

    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, stoneId, gadgetState)

    if gadgetState == 0 then
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, stoneId, worktopOpt.collect)
    elseif gadgetState == 201 then
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, stoneId, {worktopOpt.collect})
    elseif gadgetState == 202 then
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, stoneId, worktopOpt.collect)
    end

    ScriptLib.PrintContextLog(context, "## [TitanEnergy] stone ".. stoneId.." is set to state ".. gadgetState)
end


function LF_UpdateWorktopOption(context)
    -- 更新cell和machine的操作台选项
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateWorktopOption is called")

    -- cell：
    for k, v in pairs(defs.cells) do

        -- 对电池来说，充能和回收不可能同时出现，所以这么写暂时是正确的
        -- 如果能同时出现，就要改成下面machines的写法了，因为worktop只能set不能add

        -- 1）可充能：玩家的能量 > 0 && cell在0
        if ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel") > 0 and
            ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, k) == 0 then
            -- 添加充能选项
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, k, {worktopOpt.charge})
            -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell ".. k.." adds option "..worktopOpt.charge)
        
        else
            -- 删除充能选项
            ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, k, worktopOpt.charge)
            -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell ".. k.." deletes option "..worktopOpt.charge)

        end

        -- 2）可回收：玩家的能量 < max && cell在201 && 并不是所有cell都被点亮
        if ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel") < defs.maxPlayerEnergyLev and
            ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, k) == 201 and
            ScriptLib.GetGroupVariableValue(context, "activeCellNum") ~= cellCount then
            
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, k, {worktopOpt.recycle})
            -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell ".. k.." adds option "..worktopOpt.recycle)

        else
            -- 删除回收选项
            ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, k, worktopOpt.recycle)
            -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell ".. k.." deletes option "..worktopOpt.recycle)
            
        end

    end

    -- machine
    for i = 1, #machines do
        
        local worktopState = {charge = false, recycle = false}

        -- 大前提条件是并不是所有电池都被点亮了
        if ScriptLib.GetGroupVariableValue(context, "activeCellNum") ~= cellCount then

            -- 1) 可充能：玩家的能量 > 0 && machine能量不到最大值
            if ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel") > 0 and
                ScriptLib.GetGroupVariableValue(context, tostring(machines[i])) < LF_GetMaxEnergyLevelByConfigId(context, machines[i])  then
                -- 添加充能选项
                worktopState.charge = true
            else
                -- 删除充能选项
                worktopState.charge = false
            end

            -- 2）可回收：玩家的能量 < max && machine拥有能量，aka machine上有能量
            if ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel") < defs.maxPlayerEnergyLev and
                ScriptLib.GetGroupVariableValue(context, tostring(machines[i])) > 0 then
                -- 添加回收选项
                worktopState.recycle = true
            else
                -- 删除回收选项
                worktopState.recycle = false            
            end

        -- 如果所有电池都被点亮了，quest machine就不能再操作了
        else
            -- 不能充能也不能回收
            worktopState.charge = false
            worktopState.recycle = false

        end

        -- 按状态重新设定操作台
        if worktopState.charge == true and worktopState.recycle == true then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, machines[i], {worktopOpt.charge, worktopOpt.recycle})
        elseif worktopState.charge == true and worktopState.recycle == false then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, machines[i], {worktopOpt.charge})
        elseif worktopState.charge == false and worktopState.recycle == true then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, machines[i], {worktopOpt.recycle})
        elseif worktopState.charge == false and worktopState.recycle == false then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, machines[i], {})
        end

        ScriptLib.PrintContextLog(context, "## [TitanEnergy] machine = "..machines[i]..", charge = "..tostring(worktopState.charge)..", recycle = "..tostring(worktopState.recycle))

    end
end


--todo: 直接从table中找value对应的key？
function LF_GetMaxEnergyLevelByConfigId(context, configId)

    -- 先判空
    if gadgets[configId] == nil then
        return 0
    end

    local max = 0
    if gadgets[configId].gadget_id == 70350439 then

        max = 1
    elseif gadgets[configId].gadget_id == 70350440 then

        max = 2
    elseif gadgets[configId].gadget_id == 70350441 then

        max = 3
    end

    ScriptLib.PrintContextLog(context, "## [TitanEnergy] current machine ".. configId..", max energyLevel = ".. max)
    return max

end


function LF_UpdateNodeStatByCell(context, isCharge, cellId)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateNodeStatByCell is called")

    -- 找到这个cell关联的所有node，是个table
    local curNodes = defs.cells[cellId].nodes

    for i = 1, #curNodes do
        
        -- 一个node的config id
        local curNode = curNodes[i]
        -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] curNode = "..curNode)

        -- 先把node设置为亮的
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curNode, 201)

        -- 找到这个node关联的所有电池
        local relatedCells = gadgets[curNode].cells
        for j = 1, #relatedCells do
            if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, relatedCells[j]) == 0 then
                -- 任何一个电池不亮，node就不能亮
                ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curNode, 0)
                ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curNode..", status = dark")

                break
            end

            -- 所有电池都是亮的，node也是亮的
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curNode..", status = light")

        end


        -- -- 更新节点计数
        -- if isCharge == true then
        --     -- 充电
        --     nodes[curNode] = nodes[curNode] + 1
        -- else
        --     -- 回收
        --     nodes[curNode] = nodes[curNode] - 1
        -- end

        -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curNode..", charge = "..tostring(isCharge)..
        --     ", energyNum = "..nodes[curNode])

        -- -- 根据节点计数，更新节点亮暗
        -- if nodes[curNode] == 2 then
        --     -- 如果一个节点的计数为2，aka周围两个电池都亮了，这个节点也亮
        --     ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curNode, 201)
        --     ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curNode..", status = light")

        -- else
        --     ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curNode, 0)
        --     ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curNode..", status = dark")

        -- end
    end
   
end


function LF_UpdateLineStatByCell(context, isCharge, cellId)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateLineStatByCell is called")

    -- 先判空
    if defs.cells[cellId] == nil then
        return
    end

    -- 此电池关联的电线组
    local curLines = defs.cells[cellId].lines

    for i = 1, #curLines do
        
        -- 当前line的config id
        local curLine = curLines[i]

        -- 电线先变暗，但只要有一个电池是亮的，电线就需要亮
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curLine, 0)
         
        -- 找到当前line关联的所有电池
        local relatedCells = gadgets[curLine].cells

        for j = 1, #relatedCells do
           
            if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, relatedCells[j]) == 201 then
                ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curLine, 201)
                ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curLine..", status = light")
                break
            end

            ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curLine..", status = dark")
        end

        -- -- 更新节点计数
        -- if isCharge == true then
        --     -- 充电
        --     lines[curLine] = lines[curLine] + 1
        -- else
        --     -- 回收
        --     lines[curLine] = lines[curLine] - 1
        -- end

        -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] line "..curLine..", charge = "..tostring(isCharge)..
        --     ", energyNum = "..lines[curLine])

        -- -- 根据节点计数，更新节点亮暗
        -- if lines[curLine] > 0 then
        --     -- 如果一个电线周围有任何一个电池是亮的，电线就亮
        --     ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curLine, 201)
        --     ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curLine..", status = light")

        -- else
        --     ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, curLine, 0)
        --     ScriptLib.PrintContextLog(context, "## [TitanEnergy] node "..curLine..", status = dark")

        -- end
    end
end


function LF_UpdateCellEnergy(context, isCharge, cellId)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateCellEnergy is called")

    local destGadgetState
    local delta

    if isCharge then
        destGadgetState = 201
        delta = 1
    else 
        destGadgetState = 0
        delta = -1
    end

    -- 更新电池gadget state
    ScriptLib.SetGadgetStateByConfigId(context, cellId, destGadgetState)

    -- 更新group变量
    ScriptLib.ChangeGroupVariableValue(context, "activeCellNum", delta)

    -- local temp = 0
    -- for k, v in pairs(defs.cells) do
    --     if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, k) == 201 then
    --         temp = temp + 1
    --     end
    -- end
    -- ScriptLib.SetGroupVariableValue(context, "activeCellNum", temp)

    ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell ".. cellId.." energy "..delta..
        ", activeCellNum = "..ScriptLib.GetGroupVariableValue(context, "activeCellNum"))
end


function LF_UpdateEnergyStatByCell(context, isCharge, cellId)
    -- 更新电池状态
    LF_UpdateCellEnergy(context, isCharge, cellId)

    -- 更新节点状态
    LF_UpdateNodeStatByCell(context, isCharge, cellId)

    -- 更新电线状态
    LF_UpdateLineStatByCell(context, isCharge, cellId)
end


function LF_UpdateMachineEnergy(context, delta, machineId)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdateMachineEnergy is called")

    -- 更新能量机关的能量和表现
    -- 给机关增加delta的能量值
    ScriptLib.ChangeGroupVariableValue(context, tostring(machineId), delta)

    local curMachineEnergyNum = ScriptLib.GetGroupVariableValue(context, tostring(machineId))
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, machineId, "SGV_MACHINE_ENERGY_LEVEL", curMachineEnergyNum)

    ScriptLib.PrintContextLog(context, "## [TitanEnergy] machine "..machineId..", energyNum = "..curMachineEnergyNum)

end


function LF_UpdatePlayerEnergyLev(context, delta)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_UpdatePlayerEnergyLev is called")

    -- 更新玩家身上能量
    ScriptLib.ChangeGroupVariableValue(context, "playerEnergyLevel", delta)
    local curPlayerEnergyLev = ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel")

    -- 同步给SGV
    ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_ENERGY_LEVEL", curPlayerEnergyLev)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] SGV_ENERGY_LEVEL = "..curPlayerEnergyLev)

end


function LF_ResetGroup(context)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_ResetGroup is called")

    local uidList = ScriptLib.GetSceneUidList(context)
    -- 取不到uid list就不要往下走了
	if #uidList == 0 then
		ScriptLib.PrintContextLog(context, "## [TitanEnergy] no player in scene when resetting group")
		return
	end

    local groupStatus = ScriptLib.GetGroupVariableValue(context, "groupStatus")
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] group status = "..groupStatus)
    
    if groupStatus == 2 then
        -- -- 进行中，表现不固定，不做特殊操作
        -- -- 玩家身上能量和group变量对齐(如果身上有能量的时候断线重连了)
        -- local playerEnergyLev = ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel")
        -- local var = ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_ENERGY_LEVEL", playerEnergyLev)
        -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] SGV_ENERGY_LEVEL is created and set to "..playerEnergyLev..", var = "..var)

        -- -- 机器能量值SGV和group var对齐
        -- for i = 1, #machines do
        --     local machineEnergy = ScriptLib.GetGroupVariableValue(context, tostring(machines[i]))
        --     ScriptLib.SetEntityServerGlobalValueByConfigId(context, machines[i], "SGV_MACHINE_ENERGY_LEVEL", machineEnergy)
        --     ScriptLib.PrintContextLog(context, "## [TitanEnergy] machine "..machines[i]..", SGV_MACHINE_ENERGY_LEVEL is set to "..machineEnergy)
        -- end

        return
    end

    -- 只要不在进行中，玩家身上无能量
    ScriptLib.SetGroupVariableValue(context, "playerEnergyLevel", 0)
    ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_ENERGY_LEVEL", 0)

    if groupStatus == 3 then
        -- 已结束，一系列保底操作
        -- cell在201
        for k, v in pairs(defs.cells) do
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, k, 201)
        end

        -- line在201
        for i = 1, #lines do
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, lines[i], 201)
        end

        -- node在201
        for i = 1, #nodes do
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, nodes[i], 201)
        end

        -- 只有任务机关在201
        for i = 1, #questMachines do
            local maxEnergy = LF_GetMaxEnergyLevelByConfigId(context, questMachines[i])
            ScriptLib.SetGroupVariableValue(context, tostring(questMachines[i]), maxEnergy)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, questMachines[i], "SGV_MACHINE_ENERGY_LEVEL", maxEnergy)
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] quest machine "..questMachines[i]..", SGV_MACHINE_ENERGY_LEVEL is set to "..maxEnergy)

            -- 以下为保底
            -- ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, questMachines[i], 201)
            -- ScriptLib.PrintContextLog(context, "## [TitanEnergy] quest machine "..questMachines[i].." is set to 201")

        end

        -- 销毁所有stone
        for i = 1, #stones do
            LF_UpdateStone(context, stones[i], 202)
        end

        ScriptLib.SetGroupVariableValue(context, "activeCellNum", cellCount)
        ScriptLib.SetGroupVariableValue(context, "activeMachineNum", #machines)

        -- 所有gadget都处于正确的结束状态，玩家身上无能量，按此状态更新操作台选项（即删除所有操作台选项）
    else
        -- 不能开始或者还没开始
        -- 每个机器注册SGV并重置到0
        for i = 1, #machines do
            ScriptLib.SetGroupVariableValue(context, tostring(machines[i]), 0)
            ScriptLib.SetEntityServerGlobalValueByConfigId(context, machines[i], "SGV_MACHINE_ENERGY_LEVEL", 0)
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, machines[i], 0)

            ScriptLib.PrintContextLog(context, "## [TitanEnergy] SGV_MACHINE_ENERGY_LEVEL on machine "..machines[i].." is created and set to 0")
        end

        -- 所有电池都在0，带动line和node都在0
        for k, v in pairs(defs.cells) do
            LF_UpdateEnergyStatByCell(context, false, k)
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell "..k.." is set to inactive")
        end

        ScriptLib.SetGroupVariableValue(context, "activeCellNum", 0)
        ScriptLib.SetGroupVariableValue(context, "activeMachineNum", 0)

        if groupStatus == 0 then
            -- 不能开始
            -- 所有能量块都在，但是不能上操作台
            for i = 1, #stones do
                LF_UpdateStone(context, stones[i], 0)
            end

        elseif groupStatus == 1 then
            -- 可以开始但是未开始
            -- 更新初始激活的电池状态
            for k, v in pairs(defs.activeCells) do
                LF_UpdateEnergyStatByCell(context, true, v)
                ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell "..v.." is set to active")
            end

            -- 所有能量块加操作台
            for i = 1, #stones do
                LF_UpdateStone(context, stones[i], 201)
            end
        end

    end

    -- 更新操作台选项
    LF_UpdateWorktopOption(context)

end

function LF_ForceLevelStop(context)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_ForceLevelStop is called")

    -- 联机专用function，没走正常逻辑，只是表面上把所有操作台选项删掉+所有物件进入未激活状态（即都暗掉了）
    -- 顺便除了groupStatus的变量也归零了，以免有什么我不知道的地方用它们做了判断
    local uidList = ScriptLib.GetSceneUidList(context)
    -- 所有玩家身上都不能有能量
	for i = 1, #uidList do
        ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_ENERGY_LEVEL", 0)

	end

    ScriptLib.SetGroupVariableValue(context, "playerEnergyLevel", 0)

    -- 每个机器注册SGV并重置到0
    for i = 1, #machines do
        ScriptLib.SetGroupVariableValue(context, tostring(machines[i]), 0)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, machines[i], "SGV_MACHINE_ENERGY_LEVEL", 0)
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, machines[i], 0)

        ScriptLib.PrintContextLog(context, "## [TitanEnergy] SGV_MACHINE_ENERGY_LEVEL on machine "..machines[i].." is created and set to 0")
    end

    -- 所有电池都在0，带动line和node都在0
    for k, v in pairs(defs.cells) do
        LF_UpdateEnergyStatByCell(context, false, k)
        ScriptLib.PrintContextLog(context, "## [TitanEnergy] cell "..k.." is set to inactive")
    end

    ScriptLib.SetGroupVariableValue(context, "activeCellNum", 0)
    ScriptLib.SetGroupVariableValue(context, "activeMachineNum", 0)


    -- 更新操作台选项
    LF_UpdateWorktopOption(context)

    -- 所有能量块都在，但是不能上操作台
    for i = 1, #stones do
        LF_UpdateStone(context, stones[i], 0)
    end

end

function LF_IsMPMode(context)
    local isMP = ScriptLib.CheckIsInMpMode(context)

    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_IsMPMode is called, isMPMode = "..tostring(isMP))

    if isMP == true then
        -- 如果在联机状态下且未完成玩法，不能进行任务，【假装】流转到未开始状态，取消所有操作台，所有物件都变成未激活，但是不能改存档的groupvar
        if ScriptLib.GetGroupVariableValue(context, "groupStatus") ~= 3 then
            LF_ForceLevelStop(context)
        else
            -- 如果已经完成了，按完成状态重置组内物件状态
            LF_ResetGroup(context)
        end
    elseif isMP == false then
        -- 要干的事情不一样
    end

    return isMP
end

function LF_RestartLevel(context)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] LF_RestartLevel is called")
    if LF_IsMPMode(context) == false then
        LF_ResetGroup(context)
        if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 2 then
            -- 如果玩家已经参与玩法，未完成的时候离开导致group卸载，那么恢复到未开始的状态
            ScriptLib.SetGroupVariableValue(context, "groupStatus", 1)
        end
    end
end


--================================================================
-- Triggers
--================================================================

function action_ENTER_REGION(context, evt)
    -- 断线重连和联机后会被触发
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] player enters region "..evt.param1)

    if evt.param1 == defs.titanRegion then
        LF_RestartLevel(context)
    end
    return 0
end

function action_LEAVE_REGION(context, evt)
    -- 断线重连和联机后会被触发
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] player leaves region "..evt.param1)

    if evt.param1 == defs.titanRegion then    
        LF_RestartLevel(context)
    end
    return 0
end

function action_GROUP_LOAD(context, evt)
    -- 断线重连后不会被触发
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] group is loaded")

    LF_RestartLevel(context)
    return 0
end

function action_GROUP_WILL_UNLOAD(context, evt)
    -- 断线重连后不会被触发
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] group will unload")

    LF_RestartLevel(context)
    return 0
end

function action_VARIABLE_CHANGE(context, evt)
    ScriptLib.PrintContextLog(context, "## [TitanEnergy] variable "..evt.source_name.." changes from "..evt.param2.." to "..evt.param1 )

    if evt.source_name == "activeCellNum" then
        -- 如果所有电池都已经完成了，电池和机关都维持201状态
        if ScriptLib.GetGroupVariableValue(context, "activeCellNum") == cellCount then
            
            -- 已经完成这组机关，会再次触发此事件，走下面else里的resetGroup
            ScriptLib.SetGroupVariableValue(context, "groupStatus", 3)

        end
    elseif evt.source_name == "groupStatus" then
        if evt.param1 ~= evt.param2 then

            if LF_IsMPMode(context) == false then
                LF_ResetGroup(context)
            end        
        end
    end 
    
    return 0
end

function action_CELL_INTERACT(context, evt)

    -- 以防万一，如果联机的时候出现了交互选项，立刻结束
    if LF_IsMPMode(context) == true then
        return 0
    end

    -- local uidList = ScriptLib.GetSceneUidList(context)

    -- 先判空
    if gadgets[evt.param1] == nil then
        return 0
    end

    if gadgets[evt.param1].gadget_id == cellGadgetId then
        ScriptLib.PrintContextLog(context, "## [TitanEnergy] player interact with cell worktop "..evt.param1..", option = "..evt.param2)

        -- 玩法进行中
        if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 1 then
            ScriptLib.SetGroupVariableValue(context, "groupStatus", 2)
        end
        
        -- 先拿到这个电池的config id
        local curCellId = evt.param1

        -- 充能
        if evt.param2 == worktopOpt.charge then
            -- 更新和电池相关的能量状态
            LF_UpdateEnergyStatByCell(context, true, curCellId)

            -- 更新玩家身上能量
            LF_UpdatePlayerEnergyLev(context, -1)

        -- 回收
        elseif evt.param2 == worktopOpt.recycle then
            -- 更新和电池相关的能量状态
            LF_UpdateEnergyStatByCell(context, false, curCellId)

            -- 更新玩家身上能量
            LF_UpdatePlayerEnergyLev(context, 1)
        end

        -- 更新操作台选项
        LF_UpdateWorktopOption(context)

    end   

	return 0
end


function action_MACHINE_INTERACT(context, evt)

    -- 以防万一，如果联机的时候出现了交互选项，立刻结束
    if LF_IsMPMode(context) == true then
        return 0
    end

    -- local uidList = ScriptLib.GetSceneUidList(context)

    if gadgets[evt.param1].gadget_id == 70350439 or
        gadgets[evt.param1].gadget_id == 70350440 or
        gadgets[evt.param1].gadget_id == 70350441 then
        
        ScriptLib.PrintContextLog(context, "## [TitanEnergy] player interact with machine worktop "..evt.param1..", option = "..evt.param2)

        -- 玩法进行中
        if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 1 then
            ScriptLib.SetGroupVariableValue(context, "groupStatus", 2)
        end

        -- 是机关, 拿到机关的config id
        local curMachineId = evt.param1

        -- 机关最大能量数
        local curMachineMaxEnergy = LF_GetMaxEnergyLevelByConfigId(context, curMachineId)
        
        -- 机关目前能量数
        local curMachineEnergy = ScriptLib.GetGroupVariableValue(context, tostring(curMachineId))

        local machineNeed = curMachineMaxEnergy - curMachineEnergy
        local playerNeed = defs.maxPlayerEnergyLev - ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel")
        local delta

        -- 充能
        if evt.param2 == worktopOpt.charge then
            -- 取玩家拥有能量，和机关缺能量，两者中的较小值，充到机关身上
            delta = math.min(machineNeed, ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel"))

            LF_UpdateMachineEnergy(context, delta, curMachineId)
            LF_UpdatePlayerEnergyLev(context, -delta)
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] charge "..delta.." energy to machine ".. curMachineId)

            -- 如果机关能量满了, update group variable
            if curMachineEnergy + delta == curMachineMaxEnergy then
                ScriptLib.ChangeGroupVariableValue(context, "activeMachineNum", 1)
            end
        -- 回收
        elseif evt.param2 == worktopOpt.recycle then
            -- 取玩家缺能量，和机关拥有的能量，两者中的较小值，回收到玩家身上
            delta = math.min(playerNeed, curMachineEnergy)

            LF_UpdateMachineEnergy(context, -delta, curMachineId)
            LF_UpdatePlayerEnergyLev(context, delta)
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] recycle "..delta.." energy from machine ".. curMachineId)

        end

        -- 更新操作台选项
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, curMachineId, {})
        ScriptLib.InitTimeAxis(context, "optionCD", {optionCd}, false)

    end

    return 0
end


function action_ENERGY_PICKUP(context, evt)
  
    -- 以防万一，如果联机的时候出现了交互选项，立刻结束
    if LF_IsMPMode(context) == true then
        return 0
    end

    -- 只通过工作台选项id，判断玩家是否在捡能量块，并且身上是不是少于三格能量
    if evt.param2 == worktopOpt.collect then
        ScriptLib.PrintContextLog(context, "## [TitanEnergy] player interact with stone worktop "..evt.param1..", option = "..evt.param2)

        -- 玩法进行中
        if ScriptLib.GetGroupVariableValue(context, "groupStatus") == 1 then
            ScriptLib.SetGroupVariableValue(context, "groupStatus", 2)
        end

        local curStoneId = evt.param1
        -- local uidList = ScriptLib.GetSceneUidList(context)

        if ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel") < defs.maxPlayerEnergyLev then

            -- 能量块和操作台选项都无了
            LF_UpdateStone(context, curStoneId, 202)
    
            -- 玩家身上energy level ++
            LF_UpdatePlayerEnergyLev(context, 1)

        else
            -- 玩家能量满了，不能拿
            ScriptLib.ShowReminder(context, reminderTable.playerFull)
            ScriptLib.PrintContextLog(context, "## [TitanEnergy] playher cannot take energy stones, current playerEnergyLevel = "
                ..ScriptLib.GetGroupVariableValue(context, "playerEnergyLevel"))

        end
    
        -- 更新操作台选项
        LF_UpdateWorktopOption(context)
    end

    return 0
end

function action_TIME_AXIS_PASS(context, evt)
    ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] Time axis "..evt.source_name..", stage "..evt.param1.." is finished")

    if evt.source_name == "optionCD" then
        LF_UpdateWorktopOption(context)
    end
   
    return 0
end

--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)