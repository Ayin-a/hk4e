--- def参数
--- 描述长宽
--[[
local defs = {
	-- 该参数用来确认合法对子地板
	FloorGadgetID = {70310062,70310063,70310064,70310065,70310087,70310088},
	FloorNum = 8,
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

	for k, v in pairs(gadgets) do
		v.isFloor = LF_IsFloor(v.gadget_id)
	end

	local var = { config_id=50000001,name = "lastConfigID", value = 0, no_refresh = false }   --上一次踩亮的地板configID
	variables[var.name] = var
	var = { config_id=50000002,name = "totalFloorNum", value = defs.FloorNum, no_refresh = false } --地板计数器，侦测玩法结束变量
	variables[var.name] = var
	var = { config_id=50000003,name = "FloorPlayStart", value = 0, no_refresh = true } --玩法开始变量，设为1时玩法开启
	variables[var.name] = var
	var = { config_id=50000004,name = "FloorPlayEnd", value = 0, no_refresh = true } --玩法结束变量，设为1时玩法结束，需要设计师侦测
	variables[var.name] = var

	return 0
end

function LF_IsFloor(targetGadgetID)
	for i = 1,#defs.FloorGadgetID do
		if targetGadgetID == defs.FloorGadgetID[i] then
			return true
		end
	end
	return false
end

--------公用函数----------
------------Group加载时保底--------
function action_EVENT_GROUP_LOAD(context,evt)
    local floorPlayEnd = ScriptLib.GetGroupVariableValue(context, "FloorPlayEnd")
	local floorPlayStart = ScriptLib.GetGroupVariableValue(context, "FloorPlayStart")

    if 0 == floorPlayEnd and 1 == floorPlayStart then
       -- 玩法已开启未完成，请求回档,重新开启
	    NewStart(context)
    end

    if 1== floorPlayEnd then
        for k, v in pairs(gadgets) do
            local curState = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, v.config_id)
            if v.isFloor and curState ~= 202 then
                ScriptLib.SetGadgetStateByConfigId(context, v.config_id, 202)
                ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 将不为202的地板设置为202，其ConfigID为" .. v.config_id)
            end
        end
    end

    return 0
end
------------对应地板被踩时触发--------
	function action_floorStateChange(context,evt)
		local toGadgetState = evt.param1
		local configID = evt.param2
		ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 侦测到物件状态切位"..toGadgetState.."ConfigID为" .. configID)
		if 201 == toGadgetState and  gadgets[configID].isFloor then
			AnalyzeFloorBySameFloor(context,configID)
			return 0
		end
		return 0
	end
------------响应地板玩法开始--------
	function action_FloorPlayStart(context,evt)
		if 1 ~= evt.param1 then return 0 end
		NewStart(context)
		return 0
	end

	function NewStart(context)
		-- 所有地板设为0
		for k, v in pairs(gadgets) do
			if v.isFloor then
				ScriptLib.SetGadgetStateByConfigId(context, v.config_id, 0)
				ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 将对应地板设置为0，ConfigID为" .. v.config_id)
			end
		end

		ScriptLib.SetGroupVariableValue(context, "lastConfigID", 0)
		ScriptLib.SetGroupVariableValue(context, "totalFloorNum", defs.FloorNum)
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
------------踩踏木制地板判定(对对子)--------
---地板只有进入201时，才启动以下分析逻辑
	function AnalyzeFloorBySameFloor(context,currentConfigID)
		local lastConfigID = ScriptLib.GetGroupVariableValue(context, "lastConfigID")
		if lastConfigID ~= 0 then
			ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 第二次踩中地板,ConfigID为" .. lastConfigID)
			-- 这是第二次踩入的地板
			local lastGadgetID = gadgets[lastConfigID].gadget_id
			local currentGadgetID = gadgets[currentConfigID].gadget_id
			if lastGadgetID == currentGadgetID then
				-- 两个地板同时切入202
				ScriptLib.SetGadgetStateByConfigId(context, lastConfigID, 202)
				ScriptLib.SetGadgetStateByConfigId(context, currentConfigID, 202)
				-- 计数器 - 2
				ScriptLib.ChangeGroupVariableValue(context, "totalFloorNum", -2)
				ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 触发相同地板")
			else
				-- 两个地板同时切入203
				ScriptLib.SetGadgetStateByConfigId(context, lastConfigID, 203)
				ScriptLib.SetGadgetStateByConfigId(context, currentConfigID, 203)
				ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 触发不同地板")
			end
			-- 擦除第一次踩入地板记录
			ScriptLib.SetGroupVariableValue(context, "lastConfigID", 0)
			return 0
		end

		--记录第一次踩入地板
		ScriptLib.SetGroupVariableValue(context, "lastConfigID", currentConfigID)
		ScriptLib.PrintContextLog(context, "TD WoodFloorPlay : 第一次踩中地板,ConfigID为" .. currentConfigID)
		return 0
	end
--------检测函数----------
LF_Initialize_Level()

--- ServerUploadTool Save to [/root/env/data/lua/common/V2_1]  ---
