--[[======================================
||  filename:   VarunaWaterspout
||  owner:      shuyi.chang
||  description:    回流之柱
||  LogName:    ## [VarunaWaterspout]
||  Protection: 
=======================================]]
--[[
local defs = 
{
	-- 受回流之柱控制的group id
	groupTable = 
	{

	},

	-- 回流之柱副中枢所在的group id
	deviceGroupTable = 
	{

	},

	-- 用于照相的gadget在本组中的config id
	photoTable = {configId_01, configId_02, configId_03, ...},

	-- 区域，用于断线重连时重新计算时间
	regionId = ,

	-- 回流之柱的config id
	waterSpoutId = 41001,

	-- 水柱升空的现实时间，单位为秒
	waterRise = 5,

	-- 水柱持平的现实时间，单位为秒
	waterStayup = 20,

	-- 水柱下降的现实时间，单位为秒
	waterDown = 5,
}
--]]

local extraTriggers = 
{
	{ config_id = 50000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
	{ config_id = 50000002, name = "TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0 },
	{ config_id = 50000003, name = "SET_GAME_TIME", event = EventType.EVENT_SET_GAME_TIME, source = "", condition = "", action = "action_EVENT_SET_GAME_TIME", trigger_count = 0 },
	{ config_id = 50000004, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", trigger_count = 0 },
	{ config_id = 50000005, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0 },

}

local extraVariables = 
{
	-- 0雨天，1晴天，不要在其他group里改这个变量的值！
	{ config_id = 50000101, name = "SGV_WeatherState", value = 0, no_refresh = true },
	-- 0未完成任务，自动切换；1已完成任务，玩家控制天气状态
	{ config_id = 50000102, name = "questStatus", value = 0, no_refresh = true },
	-- 【目前没用到】水柱的状态，0上升，1循环，2下降
	-- { config_id = 50000103, name = "spoutState", value = 0, no_refresh = true },
	-- 任务完成后天气状态, 0持续雨天，1持续晴天，2晴雨切换
	{ config_id = 50000104, name = "finalWeatherState", value = 2, no_refresh = true },

}

local weatherTable = 
{
	clearBefore = 4013,
	rainBefore = 4014,
	clearAfter = 4015,
	rainAfter = 4016,
}

local clearWeather = weatherTable.clearBefore
local rainWeather = weatherTable.rainBefore

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
        -- 都放到初始suite 1中
        table.insert(suites[1].triggers,extraTriggers[i].name)
    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end
end

function LF_CheckTime(context, destTime)
	-- 每次时间轴到时之后需要再检查一次时间，以防中途出现什么意外导致时间计算不对
	local temp = false

	local time = LF_GetGameTime(context)
	if #time ~= 3 then
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_Check_Weather_Status is cancelled because LF_GetGameTime failed")
		return temp
	end

	if #destTime ~= 2 then
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_Check_Weather_Status is cancelled because destTime is illegal")
		return temp
	end

	local curGameMinutePassed = time[3]
	local destTimePassed = destTime[1] * 60 + destTime[2]
	
	-- 允许前后2s内的误差
	if math.abs(curGameMinutePassed - destTimePassed) < 2 then
		temp = true
	end
	
	return temp
end

function LF_SetSpoutGadgetState(context, gadgetState)
	-- ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_SetSpoutGadgetState is called")

	ScriptLib.SetGadgetStateByConfigId(context, defs.waterSpoutId, gadgetState)

	local photoIdList = "photo gadget, "
	local photoState = 0
	-- 只要水柱不在0,照相物件就要进入可照相状态201
	if gadgetState ~= 0 then
		photoState = 201
	else
		photoState = 0
	end

	for i = 1, #defs.photoTable do
		ScriptLib.SetGadgetStateByConfigId(context, defs.photoTable[i], photoState)
		photoIdList = photoIdList..defs.photoTable[i].." state = "..photoState..","
	end
	
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] water spout gadget state is set to "..gadgetState..
		", "..photoIdList)

end


function LF_CheckSpoutStatusByTime(context, hour, minute)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_CheckSpoutStatusByMinute is called")

	if LF_CheckTime(context, {0, 0}) or LF_CheckTime(context, {12, 0}) then
		-- 有的时候时间轴会有1-2s的误差
		LF_SetSpoutGadgetState(context, 901)
		LF_WaterSpoutTimeAxis(context, false, hour, minute)
	end
	
	local temp = hour % 12
	if temp == 0 then
		-- 是起水柱的那个小时，0或12
		if minute == 0 then
			-- 暂时不走这里，走上面，允许一点误差
			
		elseif minute < defs.waterRise + defs.waterStayup then
			-- 如果还没到该下落的时间，保持循环状态(通常是调时间之后走这里，先等几秒不出特效，等镜头上移之后从物件层进201)
			LF_SetSpoutGadgetState(context, 903)
			LF_WaterSpoutTimeAxis(context, true, hour, minute)
		else
			-- 水柱要下降了，或者压根不是应该有水柱的分钟数
			LF_SetSpoutGadgetState(context, 0)
		end
	else
		-- 压根不在水柱的小时数
		LF_SetSpoutGadgetState(context, 0)
	end
end

function LF_WaterSpoutTimeAxis(context, temp, hour, minute)
	if temp then
		-- 从中间起水柱，直接出现，到该下落的时候准备下落
		ScriptLib.InitTimeAxis(context, "tempWaterSpout_"..LF_TempAxisValue(context, 2), {defs.waterRise + defs.waterStayup - minute, defs.waterRise + defs.waterStayup + defs.waterDown - minute}, false)
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] start a time axis, name = tempWaterSpout_"..LF_TempAxisValue(context, 2)..", time = "..hour..":"..minute)

	else
		-- 从头起水柱
		ScriptLib.InitTimeAxis(context, "waterSpout_"..LF_TempAxisValue(context, 3), {defs.waterRise, defs.waterRise + defs.waterStayup, defs.waterRise + defs.waterStayup + defs.waterDown}, false)
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] start a time axis, name = waterSpout_"..LF_TempAxisValue(context, 3)..", time = "..hour..":"..minute)
	end
	
end


function LF_GetGameTime(context)

	local temp = ScriptLib.GetGameTimePassed(context)

	if #temp ~= 2 then
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] cannot get current time")
		return {}
	end

	local curGameHour = temp[1]
	local curGameMinutePassed = temp[2]

	-- 得到精确到提瓦特分钟（现实世界秒）的当前时间
	local curGameMinute = curGameMinutePassed - curGameHour * 60

	local time = {curGameHour, curGameMinute, curGameMinutePassed}

	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] curGameHour = ".. curGameHour..
		", curGameMinute = "..curGameMinute..", totalMinutePassed = ".. curGameMinutePassed)
	return time
end

-- 用于其他group，强制重新计算时间
function LF_Force_Check_Weather_Status(context, prev_context)
	LF_Check_Weather_Status(context)
	return 0
end

function LF_Check_Weather_Status(context)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_Check_Weather_Status is called")

	-- 只有在任务完成前，以及完成后的晴雨切换状态下才能切换天气
	if ScriptLib.GetGroupVariableValue(context, "questStatus") ~= 0 then
		if ScriptLib.GetGroupVariableValue(context, "finalWeatherState") ~= 2 then
			ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_Check_Weather_Status is cancelled")
			return
		end
	end
	
	-- 只要进了这个function，就一定会起新的tempWeather时间轴，所以一定要把所有时间轴都取消掉
	LF_CancelAllAxis(context)

	local temp = LF_GetGameTime(context)

	-- 要是没取到时间，就不往下更新天气了
	if #temp ~= 3 then
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_Check_Weather_Status is cancelled because LF_GetGameTime failed")
		return
	end

	local curGameHour = temp[1]
	local curGameMinute = temp[2]
	local curGameMinutePassed = temp[3]

	-- 判断 当前小时数/6 是奇数还是偶数，暂定奇数为晴天
	-- 提瓦特的24小时晴雨状况： |-水柱-|----0雨----|----1晴----|-水柱-|----0雨----|----1晴----|
	-- stage				  |--------0--------|-----1-----|---------2--------|-----3-----|
	local stage = math.floor(curGameHour / 6)
	local weather = stage % 2
	local timeRemain

	ScriptLib.SetGroupVariableValue(context, "SGV_WeatherState", weather)
	LF_ChangeWeather(context, weather)
	LF_CheckSpoutStatusByTime(context, curGameHour, curGameMinute)
	LF_NotifyOtherGroups(context, weather)

	timeRemain = (stage + 1) * 6 * 60 - curGameMinutePassed
	ScriptLib.InitTimeAxis(context, "tempWeather_"..LF_TempAxisValue(context, 0), {timeRemain}, false)

	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] current game time = "..curGameHour
		..":"..curGameMinute..", weatherState = "..tostring(ScriptLib.GetGroupVariableValue(context, "SGV_WeatherState"))..", current stage = "
		..stage..", "..timeRemain.." seconds before next stage")

end


function LF_NotifyOtherGroups(context, weatherState)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_NotifyOtherGroups is called")

	for i = 1, #defs.groupTable do
		ScriptLib.ExecuteActiveGroupLua(context, defs.groupTable[i], "LF_SetRootAndBubbleState", {weatherState})
	end
	return 0
end

function LF_NotifyDeviceGroups(context, finalWeatherState)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_ChangeDeviceState is called")

	for i = 1, #defs.deviceGroupTable do
		ScriptLib.ExecuteActiveGroupLua(context, defs.deviceGroupTable[i], "LF_ChangeDeviceState", {finalWeatherState})
	end
	return 0

end

function LF_ChangeWeather(context, weatherState)
	-- 根据当前的任务状态，自动切换到对应的天气
	local questStatus = ScriptLib.GetGroupVariableValue(context, "questStatus")
	local curWeather = ScriptLib.GetGroupTempValue(context, "weatherId", {})
	local destWeather
	local lowWeather
	local highWeather


	if questStatus == 0 then
		lowWeather = weatherTable.clearBefore
		highWeather = weatherTable.rainBefore

		if weatherState == 0 then
			destWeather = weatherTable.rainBefore
		else
			destWeather = weatherTable.clearBefore
		end
	else
		lowWeather = weatherTable.clearAfter
		highWeather = weatherTable.rainAfter

		if weatherState == 0 then
			destWeather = weatherTable.rainAfter
		else
			destWeather = weatherTable.clearAfter
		end
	end
	ScriptLib.SetGroupTempValue(context, "weatherId", destWeather, {})

	-- 判断一下是否要换天气，不用换就不往下走了，否则可能会突然切到默认天气4000
	if curWeather == destWeather then
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_ChangeWeather is called, weather = "..curWeather..", no need to change")
		return
	end

	-- 先开优先级最低的天气
	local var1 = ScriptLib.SetWeatherAreaState(context, lowWeather, 1)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] set base weather = "..lowWeather..", succeed = "..var1)

	if destWeather == lowWeather then
		-- 判断目标天气的优先级，如果是低优先级，需要关掉高优先级天气
		local var2 = ScriptLib.SetWeatherAreaState(context, highWeather, 0)
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_ChangeWeather is called, destWeather = "..destWeather..
		", close higher priority weather = "..highWeather..", succeed = ".. var2)
	elseif destWeather == highWeather then
		-- 如果是高优先级，直接开
		local var3 = ScriptLib.SetWeatherAreaState(context, highWeather, 1)
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout]  LF_ChangeWeather is called, weather changes from "..curWeather.." to "..destWeather..
		", succeed = ".. var3)

	end


	-- -- 为了测试方便新加，强制关闭所有天气，不然天气配了不一样的优先级没办法退到任务完成前状态
	-- for k, v in pairs(weatherTable) do
	-- 	local temp = ScriptLib.SetWeatherAreaState(context, v, 0)
	-- 	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] weather id = "..v.." is closed, succeed = "..temp)
	-- end

	-- local var2 = ScriptLib.SetWeatherAreaState(context, destWeather, 1)
	-- ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_ChangeWeather is called, weather changes from "..curWeather.." to "..destWeather..
	-- 	", succeed = ".. var2)

end

function LF_CancelAllAxis(context)
	-- temp和formal loop都要停
	local temp1 = ScriptLib.GetGroupTempValue(context, "axis_tempWeather", {})
	-- local temp2 = ScriptLib.GetGroupTempValue(context, "axis_loopWeather", {})
	local temp3 = ScriptLib.GetGroupTempValue(context, "axis_tempWaterSpout", {})
	local temp4 = ScriptLib.GetGroupTempValue(context, "axis_waterSpout", {})

	ScriptLib.EndTimeAxis(context, "tempWeather_"..temp1)
	-- ScriptLib.EndTimeAxis(context, "loopWeather_"..temp2)
	ScriptLib.EndTimeAxis(context, "tempWaterSpout_"..temp3)
	ScriptLib.EndTimeAxis(context, "waterSpout_"..temp4)

	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] LF_CancelAllAxis is finished")
end

function LF_TempAxisValue(context, type)
	-- 0临时天气时间轴，1整循环天气时间轴，2水柱时间轴
	local tempValue
	local tempName
	if type == 0 then
		tempName = "axis_tempWeather"
		tempValue = ScriptLib.GetGroupTempValue(context, "axis_tempWeather", {})
	-- elseif type == 1 then
	-- 	tempName = "axis_loopWeather"
	-- 	tempValue = ScriptLib.GetGroupTempValue(context, "axis_loopWeather", {})
	elseif type == 2 then
		tempName = "axis_tempWaterSpout"
		tempValue = ScriptLib.GetGroupTempValue(context, "axis_tempWaterSpout", {})
	elseif type == 3 then
		tempName = "axis_waterSpout"
		tempValue = ScriptLib.GetGroupTempValue(context, "axis_waterSpout", {})
	end
	
	if tempValue == 1 then
		ScriptLib.SetGroupTempValue(context, tempName, 0, {})
		return 0
	elseif tempValue == 0 then
		ScriptLib.SetGroupTempValue(context, tempName, 1, {})
		return 1
	end
end


--================================================================
-- Triggers
--================================================================

function action_EVENT_GROUP_LOAD(context, evt)
	
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] group is loaded")

	ScriptLib.SetGroupTempValue(context, "axis_tempWeather", 0, {})
	-- ScriptLib.SetGroupTempValue(context, "axis_loopWeather", 0, {})
	ScriptLib.SetGroupTempValue(context, "axis_tempWaterSpout", 0, {})
	ScriptLib.SetGroupTempValue(context, "axis_waterSpout", 0, {})

	ScriptLib.SetGroupTempValue(context, "weatherId", 4014, {})
	ScriptLib.SetWeatherAreaState(context, 4014, 1)

	-- 更新当前天气
	LF_Check_Weather_Status(context)

	return 0
end

function action_EVENT_ENTER_REGION(context, evt)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] player enters region "..evt.param1)

	if evt.param1 == defs.regionId then
		-- 更新当前天气
		LF_Check_Weather_Status(context)
	end
	
	return 0
end


function action_VARIABLE_CHANGE(context, evt)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] group variable "..evt.source_name..
		" changes from "..evt.param2.." to "..evt.param1)

	if evt.param1 == evt.param2 or ScriptLib.GetGroupVariableValue(context, "questStatus") == 0 then
        ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] \"questStatus\" =  0 " ..
                ScriptLib.GetGroupVariableValue(context, "questStatus"))
		return 0
	end
	
	if evt.source_name == "finalWeatherState" then

		-- 通知中枢所在组
		LF_NotifyDeviceGroups(context, evt.param1)

		-- 玩家手动切换天气
		if evt.param1 == 0 then
			-- 雨天
			-- 改变天气，且时间轴都停掉，不用再跟着时间走了
			ScriptLib.SetGroupVariableValue(context,"SGV_WeatherState", 0)

			LF_CancelAllAxis(context)
			LF_ChangeWeather(context, 0)
			LF_NotifyOtherGroups(context, 0)
			ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] quest finished, weather is forced to be rainy")
		elseif evt.param1 == 1 then
			-- 晴天
			-- 改变天气，且时间轴都停掉，不用再跟着时间走了
			ScriptLib.SetGroupVariableValue(context,"SGV_WeatherState", 1)

			LF_CancelAllAxis(context)
			LF_ChangeWeather(context, 1)
			LF_NotifyOtherGroups(context, 1)
			ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] quest finished, weather is forced to be clear")
		elseif evt.param1 == 2 then
			-- 晴雨转换S
			LF_Check_Weather_Status(context)
			ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] quest finished, weather changes according to time")
		end
	elseif evt.source_name == "questStatus" then
		local curWeather = ScriptLib.GetGroupVariableValue(context,"SGV_WeatherState")
		LF_ChangeWeather(context, curWeather)
		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] quest finished, weather changes to "..curWeather)
	
	end

	
	return 0
end


function action_EVENT_SET_GAME_TIME(context, evt)
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] player sets game time")

	LF_Check_Weather_Status(context)
	return 0
end

function action_EVENT_TIME_AXIS_PASS(context, evt)	
	ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] Time axis "..evt.source_name..", stage "..evt.param1.." is finished")

	-- 只要时间轴走完一个阶段，一定切换天气状态
    -- 目前一个循环包括晴天6min，雨天6min
	if string.sub(evt.source_name, 0, 11) == "tempWeather" then
		LF_Check_Weather_Status(context)

		ScriptLib.PrintContextLog(context, "## [VarunaWaterspout] game hour = "..ScriptLib.GetGameHour(context)..
			", current weather state = "..ScriptLib.GetGroupVariableValue(context, "SGV_WeatherState"))
			
	elseif string.sub(evt.source_name, 0, 10) == "waterSpout" then		
		if evt.param1 == 1 then
			-- if LF_CheckTime(context, {0, 5}) == false and LF_CheckTime(context, {12, 5}) == false then
			-- 	LF_CheckSpoutStatusByMinute(context, curGameMinute)
			-- 	return 0
			-- else
				LF_SetSpoutGadgetState(context, 201)
			-- end 
		elseif evt.param1 == 2 then
			LF_SetSpoutGadgetState(context, 902)
		elseif evt.param1 == 3 then
			LF_SetSpoutGadgetState(context, 0)
		end
	
	elseif string.sub(evt.source_name, 0, 14) == "tempWaterSpout" then
		if evt.param1 == 1 then
			LF_SetSpoutGadgetState(context, 902)
		elseif evt.param1 == 2 then
			LF_SetSpoutGadgetState(context, 0)
		end
	end

	return 0
end


--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)