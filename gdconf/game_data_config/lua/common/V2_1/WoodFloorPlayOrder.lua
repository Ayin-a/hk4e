--- def参数
--- 描述长宽
--[[
local defs = {
	-- 该参数 填入ConfigID 用来确认临接关系
	InitFloorArrays = {
		{6001,6004,6007,6010},
		{6002,6006,6009,6012},
		{6003,6005,6008,6011},
	},
	-- 该参数用来确认合法序列 (日月星)
	FloorGadgetID = {70310059,70310060,70310061}, --lastFloorIndex
	FloorNum = 12,
}
--]]
---------------------
local tempTrigger = {
	{ config_id = 2330001, name = "floorStateChange", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "",
	  condition = "", action = "action_floorStateChange", trigger_count = 0},
	{ config_id = 2330002, name = "EVENT_FloorPlayStart", event = EventType.EVENT_VARIABLE_CHANGE, source = "FloorPlayStart",
	  condition = "", action = "action_FloorPlayStart", trigger_count = 0},
	{ config_id = 2330003, name = "EVENT_NoticeFloorPlayEnd", event = EventType.EVENT_VARIABLE_CHANGE, source = "totalFloorNum",
	  condition = "", action = "action_NoticeFloorPlayEnd", trigger_count = 0},
    { config_id = 2330004, name = "EVENT_GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "",
      condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0},
}

--------初始化----------
function LF_Initialize_Level()
	for k,v in pairs(tempTrigger) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

	LF_InitCheckFloorStyle()

	local var = { config_id=50000001,name = "lastFloorIndex", value = 0, no_refresh = false } --上一次踩亮的地板顺位Index ，每次开始游戏重置
	variables[var.name] = var
	var = { config_id=50000002,name = "lastConfigID", value = 0, no_refresh = false } --上一次踩亮的地板configID ，每次开始游戏重置
	variables[var.name] = var
	var = { config_id=50000003,name = "totalFloorNum", value = defs.FloorNum, no_refresh = false } --地板计数器，侦测玩法结束变量
	variables[var.name] = var
	var = { config_id=50000004,name = "FloorPlayStart", value = 0, no_refresh = false } --玩法开始变量，设为1时玩法开启 ， 玩法失败时会置为0
	variables[var.name] = var
	var = { config_id=50000005,name = "FloorPlayEnd", value = 0, no_refresh = true } --玩法结束变量，设为1时玩法结束，需要设计师侦测
	variables[var.name] = var

	return 0
end

function LF_InitCheckFloorStyle()
	-- 处理地板边界 xNotEnd为False是下边界，yNotEnd为False是右边界。
	for i=1,#defs.InitFloorArrays do
		local tempXNotEnd = i ~= #defs.InitFloorArrays
		for j=1,#defs.InitFloorArrays[i] do
			local tempYNotEnd = j ~= #defs.InitFloorArrays[i]
			local tempConfigId = defs.InitFloorArrays[i][j]
			if tempConfigId > 0 then
				gadgets[tempConfigId].FloorParam = {x=i,y=j,xNotEnd=tempXNotEnd,yNotEnd=tempYNotEnd}
				gadgets[tempConfigId].isFloor = true
			end
		end
	end
	return 0
end

--------公用函数----------
------------Group加载时保底--------
function action_EVENT_GROUP_LOAD(context,evt)
    local floorPlayEnd = ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd")

    if 0 == floorPlayEnd then
        -- Group强制刷新
        local groupID = ScriptLib.GetContextGroupId(context)
        ScriptLib.RefreshGroup(context, { group_id = groupID, suite = 1 })
    end
    return 0
end
------------响应地板玩法开始--------
	function action_FloorPlayStart(context,evt)
		if 1 ~= evt.param1 then return 0 end

		-- 所有地板设为0
		for i=1,#defs.InitFloorArrays do
			for j=1,#defs.InitFloorArrays[i] do
				local tempConfigId = defs.InitFloorArrays[i][j]
				if tempConfigId > 0 then
					ScriptLib.SetGadgetStateByConfigId(context, tempConfigId, 0)
					ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 将对应地板设置为0，ConfigID为" .. tempConfigId)
				end
			end
		end

		ScriptLib.SetGroupVariableValue(context, "FloorPlayEnd", 0)
		ScriptLib.SetGroupVariableValue(context, "lastConfigID", 0)
		ScriptLib.SetGroupVariableValue(context, "lastFloorIndex", 0)
		ScriptLib.SetGroupVariableValue(context, "totalFloorNum", defs.FloorNum)
		return 0
	end
---------------对应地板被踩时触发--------
	function action_floorStateChange(context,evt)
		local toGadgetState = evt.param1
		local configID = evt.param2
		ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 侦测到物件状态切入"..toGadgetState.."ConfigID为" .. configID)
		if 201 == toGadgetState and  gadgets[configID].isFloor then
			AnalyzeFloorByFixedOrder(context,configID)
			return 0
		end
		return 0
	end
------------通知地板玩法结束--------
function action_NoticeFloorPlayEnd(context,evt)
	if 0 == evt.param1 then
		-- 将地板玩法结束参数设为1
		ScriptLib.SetGroupVariableValue(context, "FloorPlayEnd", 1)
		ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 地板玩法结束")
	end
	return 0
end
------------踩踏木制地板判定(日月星)--------
---地板只有进入201时，才启动以下分析逻辑
	function AnalyzeFloorByFixedOrder(context,currentConfigID)
		local lastIndex = ScriptLib.GetGroupVariableValue(context, "lastFloorIndex")  --上一个踩中地板的顺位
		local lastConfigID = ScriptLib.GetGroupVariableValue(context, "lastConfigID") --上一个踩中地板的ConfigID
		local currentIndex = 0
		if lastConfigID == 0 then
			--获取其在日月星中的顺位
			currentIndex = GetFirstDataInArray(gadgets[currentConfigID].gadget_id)
			ScriptLib.ChangeGroupVariableValue(context, "totalFloorNum", -1)
		else
			--获取其在日月星中的下一个顺位
			currentIndex = lastIndex + 1
			if currentIndex == #defs.FloorGadgetID+1 then currentIndex = 1 end

			-- 附近地板且顺位正确
			if IsNearbyFloor(lastConfigID,currentConfigID) and IsRightFloor(currentIndex,currentConfigID) then
				--成功,可能需要处理特效
				ScriptLib.ChangeGroupVariableValue(context, "totalFloorNum", -1)
				ScriptLib.PrintContextLog(context, "## TD_Log:WoodFloorPlay : 踩入的地板顺序正确")

			else
				--失败,重置所有地板
				ScriptLib.PrintContextLog(context, "## TD_Log:WoodFloorPlay : 踩入的地板顺序错误")

				-- 所有地板设为0
				for i=1,#defs.InitFloorArrays do
					for j=1,#defs.InitFloorArrays[i] do
						local tempConfigId = defs.InitFloorArrays[i][j]
						if tempConfigId > 0 then
							ScriptLib.SetGadgetStateByConfigId(context, tempConfigId, 202)
							ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 将对应地板设置为202，ConfigID为" .. tempConfigId)
						end
					end
				end

				-- 地板玩法重启
				ScriptLib.SetGroupVariableValue(context, "FloorPlayStart", 0)
				ScriptLib.SetGroupVariableValue(context, "lastConfigID", 0)

				return 0
			end
		end
		--存档
		ScriptLib.SetGroupVariableValue(context, "lastFloorIndex", currentIndex)
		ScriptLib.SetGroupVariableValue(context, "lastConfigID", currentConfigID)
		return 0
	end

------------是否为附近地板---------
	function IsNearbyFloor(lastConfigID,currentConfigID)
		local currentFloorConfigList = GetNearbyFloorConfigList(lastConfigID)
		for i = 1,#currentFloorConfigList do
			if currentConfigID == currentFloorConfigList[i] then
				return true
			end
		end
		return false
	end

------------是否为正确顺序地板---------
	function IsRightFloor(currentIndex,currentConfigID)
		local targetGadgetID = defs.FloorGadgetID[currentIndex]
		local currentGadgetID = gadgets[currentConfigID].gadget_id
		return currentGadgetID == targetGadgetID
	end

------------Private：获取附近地板ConfigList---------
	function GetNearbyFloorConfigList(configID)
		local currentFloorConfigList = {}
		local tempPos = gadgets[configID].FloorParam
		if tempPos ~= nil then
			local tempX = tempPos.x
			local tempY = tempPos.y
			if(tempX > 1)  then table.insert(currentFloorConfigList,defs.InitFloorArrays[tempX-1][tempY]) end
			if(tempY > 1)  then table.insert(currentFloorConfigList,defs.InitFloorArrays[tempX][tempY-1]) end
			if(tempPos.xNotEnd)  then table.insert(currentFloorConfigList,defs.InitFloorArrays[tempX+1][tempY]) end
			if(tempPos.yNotEnd)  then table.insert(currentFloorConfigList,defs.InitFloorArrays[tempX][tempY+1]) end
		end
		return currentFloorConfigList
	end
------------Private：根据gadgetID返回其在FloorGadgetID序列中的Index---------
	function GetFirstDataInArray(gadgetID)
		for i = 1,#defs.FloorGadgetID do
			if gadgetID == defs.FloorGadgetID[i] then
				return i
			end
		end
		return 0
	end

LF_Initialize_Level()

--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
