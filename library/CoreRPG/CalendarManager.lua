---@meta CalendarManager

---@class CalendarManager

CalendarManager = {}

function CalendarManager.onTabletopInit() end
function CalendarManager.registerChangeCallback(fn) end
function CalendarManager.unregisterChangeCallback(fn) end
function CalendarManager.onCalendarChanged(_, nodeNew) end
function CalendarManager.registerLunarDayHandler(sCalendarType, fCallback) end
function CalendarManager.registerMonthVarHandler(sCalendarType, fCallback) end
function CalendarManager.registerDayDisplayHandler(sCalendarType, fCallback) end
function CalendarManager.registerDateDisplayHandler(sCalendarType, fCallback) end
function CalendarManager.registerTimeDisplayHandler(sCalendarType, fCallback) end
function CalendarManager.registerHourDisplayHandler(sCalendarType, fCallback) end
function CalendarManager.registerHourPhaseDisplayHandler(sCalendarType, fCallback) end
function CalendarManager.adjustMinutes(n) end
function CalendarManager.adjustHours(n) end
function CalendarManager.adjustDays(n) end
function CalendarManager.adjustMonths(n) end
function CalendarManager.adjustYears(n) end
function CalendarManager.setCurrentDay(nDay) end
function CalendarManager.setCurrentMonth(nMonth) end
function CalendarManager.getCurrentYear() end
function CalendarManager.getCurrentMonth() end
function CalendarManager.getCurrentDay() end
function CalendarManager.getHoursInDay() end
function CalendarManager.getLunarDay(nYear, nMonth, nDay) end
function CalendarManager.getLunarWeek() end
function CalendarManager.getStartDayOfMonth(nMonth) end
function CalendarManager.getDaysInMonth(nMonth) end
function CalendarManager.getDaysInWeek() end
function CalendarManager.getMonthsInYear() end
function CalendarManager.calcRavnicaLunarDay(nYear, nMonth, nDay) end
function CalendarManager.calcGregorianLunarDay(nYear, nMonth, nDay) end
function CalendarManager.calcGregorianMonthVar(nYear, nMonth) end
function CalendarManager.displayImperialDay(nDay) end
function CalendarManager.displayImperialDate(_, nYear, nMonth, nDay, bAddWeekDay, bShortOutput) end
function CalendarManager.calcGolarionLunarDay(nYear, nMonth, nDay) end
function CalendarManager.calcGolarionMonthVar(nYear, nMonth) end
function CalendarManager.displayImperiumDate(sEpoch, nYear, nMonth, nDay, _, bShortOutput) end
function CalendarManager.displayImperiumHour(nHour) end
function CalendarManager.displayImperiumHourPhase() end
function CalendarManager.getDayString(nDay) end
function CalendarManager.getLunarDayName(nLunarDay) end
function CalendarManager.getMonthName(nMonth) end
function CalendarManager.getHolidayName(nMonth, nDay) end
function CalendarManager.isHoliday(nMonth, nDay) end
function CalendarManager.outputDate() end
function CalendarManager.getCurrentDateString() end
function CalendarManager.getDateString(sEpoch, nYear, nMonth, nDay, bAddWeekDay, bShortOutput) end
function CalendarManager.outputTime() end
function CalendarManager.getCurrentTimeString() end
function CalendarManager.getTimeString(nHour, nMinute) end
function CalendarManager.getDisplayHour() end
function CalendarManager.getDisplayHourPhase() end
function CalendarManager.getDisplayMinute() end
function CalendarManager.reset() end
function CalendarManager.select(nodeSource) end
