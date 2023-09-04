
state("PapersPlease")
{
    int day: "GameAssembly.dll", 0xC4A5D8, 0xB8, 0x0, 0xE8, 0xB8, 0x10;
    ulong screenChange: "GameAssembly.dll", 0xC4A5D8, 0xB8, 0x0, 0xE8, 0xD0;
    string50 transitionName: "GameAssembly.dll", 0xC4A5D8, 0xB8, 0x0, 0xE8, 0xD0, 0x10, 0x14;
    int endScreenPageCount: "GameAssembly.dll", 0xC4A5D8, 0xB8, 0x0, 0xE8, 0xC0, 0xA8, 0xA8, 0x10;
    int endScreenCurrentPage: "GameAssembly.dll", 0xC4A5D8, 0xB8, 0x0, 0xE8, 0xC0, 0xA8, 0xB0;
}

start
{
    if (current.screenChange != 0 && current.transitionName.Contains("intro")) {
        vars.currentDay = 1;
        vars.endScreen = false;
        return true;
    }
}

split
{
    if (current.screenChange != 0) {
        if (current.transitionName.Contains("day")) {
            vars.endScreen = false;
            if (current.day > vars.currentDay) {
                vars.currentDay = current.day;
                return true;
            }
            else if (current.day < vars.currentDay && current.day != 0) {
                vars.currentDay = current.day;
            }
        }
        else if (current.transitionName.Contains("end")) {
            vars.endScreen = true;
        }
        else {
            vars.endScreen = false;
        }
    }
    if (vars.endScreen) {
        if (current.endScreenCurrentPage > 0 && current.endScreenCurrentPage == current.endScreenPageCount) {
            vars.endScreen = false;
            return true;
        }
    }
}
