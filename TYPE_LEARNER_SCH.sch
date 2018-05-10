<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="BTN_SOUTH" />
        <signal name="Clk_50MHz" />
        <signal name="PS2_CLK" />
        <signal name="PS2_DATA" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26(7:0)" />
        <signal name="XLXN_27" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_CLK" />
        <port polarity="Input" name="PS2_DATA" />
        <blockdef name="FSM_String">
            <timestamp>2018-4-27T10:35:40</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="PS2_RX">
            <timestamp>2018-4-13T9:45:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="FSM_String" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="XLXN_8" name="LCD_Busy" />
            <blockpin signalname="XLXN_25" name="PS2_DoRdy" />
            <blockpin signalname="XLXN_26(7:0)" name="PS2_Input(7:0)" />
            <blockpin signalname="XLXN_2" name="LCD_WE" />
            <blockpin name="LCD_DnI" />
            <blockpin signalname="XLXN_27" name="New_Line" />
            <blockpin signalname="XLXN_1(7:0)" name="LCD_DI(7:0)" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_2">
            <blockpin signalname="XLXN_1(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_4" name="Home" />
            <blockpin signalname="XLXN_27" name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_3" name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin signalname="XLXN_8" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_9" name="VGA_RGB" />
            <blockpin signalname="XLXN_2" name="Char_WE" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="PS2_RX" name="XLXI_8">
            <blockpin signalname="PS2_CLK" name="PS2_CLK" />
            <blockpin signalname="PS2_DATA" name="PS2_DATA" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="XLXN_25" name="DO_RDY" />
            <blockpin signalname="XLXN_26(7:0)" name="DO(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1840" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1184" y="880" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1696" y1="848" y2="848" x1="1568" />
            <wire x2="1696" y1="512" y2="848" x1="1696" />
            <wire x2="1840" y1="512" y2="512" x1="1696" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1680" y1="720" y2="720" x1="1568" />
            <wire x2="1680" y1="576" y2="720" x1="1680" />
            <wire x2="1840" y1="576" y2="576" x1="1680" />
        </branch>
        <instance x="1504" y="1024" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1568" y1="1024" y2="1088" x1="1568" />
            <wire x2="1680" y1="1088" y2="1088" x1="1568" />
            <wire x2="1680" y1="896" y2="1088" x1="1680" />
            <wire x2="1840" y1="896" y2="896" x1="1680" />
        </branch>
        <instance x="1552" y="480" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1616" y1="288" y2="352" x1="1616" />
            <wire x2="1664" y1="288" y2="288" x1="1616" />
            <wire x2="1664" y1="288" y2="672" x1="1664" />
            <wire x2="1840" y1="672" y2="672" x1="1664" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2304" y1="512" y2="512" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="512" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2304" y1="576" y2="576" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="576" name="VGA_VS" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1184" y1="848" y2="848" x1="1104" />
            <wire x2="1104" y1="848" y2="1264" x1="1104" />
            <wire x2="2352" y1="1264" y2="1264" x1="1104" />
            <wire x2="2352" y1="768" y2="768" x1="2272" />
            <wire x2="2352" y1="768" y2="1264" x1="2352" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2400" y1="640" y2="640" x1="2272" />
            <wire x2="2400" y1="640" y2="768" x1="2400" />
            <wire x2="2432" y1="768" y2="768" x1="2400" />
            <wire x2="2432" y1="640" y2="640" x1="2400" />
            <wire x2="2432" y1="640" y2="704" x1="2432" />
            <wire x2="2464" y1="640" y2="640" x1="2432" />
            <wire x2="2464" y1="640" y2="672" x1="2464" />
            <wire x2="2432" y1="704" y2="704" x1="2320" />
            <wire x2="2320" y1="704" y2="880" x1="2320" />
            <wire x2="2448" y1="880" y2="880" x1="2320" />
            <wire x2="2368" y1="672" y2="992" x1="2368" />
            <wire x2="2448" y1="992" y2="992" x1="2368" />
            <wire x2="2464" y1="672" y2="672" x1="2368" />
        </branch>
        <instance x="2432" y="800" name="XLXI_5" orien="R0" />
        <instance x="2448" y="912" name="XLXI_6" orien="R0" />
        <instance x="2448" y="1024" name="XLXI_7" orien="R0" />
        <branch name="VGA_R">
            <wire x2="2688" y1="768" y2="768" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="768" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="2704" y1="880" y2="880" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="880" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="2704" y1="992" y2="992" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="992" name="VGA_B" orien="R0" />
        <branch name="BTN_SOUTH">
            <wire x2="1184" y1="784" y2="784" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="784" name="BTN_SOUTH" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="528" y1="720" y2="720" x1="464" />
            <wire x2="536" y1="720" y2="720" x1="528" />
            <wire x2="672" y1="720" y2="720" x1="536" />
            <wire x2="1168" y1="720" y2="720" x1="672" />
            <wire x2="1184" y1="720" y2="720" x1="1168" />
            <wire x2="672" y1="720" y2="1120" x1="672" />
            <wire x2="1840" y1="1120" y2="1120" x1="672" />
            <wire x2="672" y1="1120" y2="1184" x1="672" />
            <wire x2="1840" y1="1184" y2="1184" x1="672" />
            <wire x2="528" y1="720" y2="1504" x1="528" />
            <wire x2="544" y1="1504" y2="1504" x1="528" />
        </branch>
        <iomarker fontsize="28" x="464" y="720" name="Clk_50MHz" orien="R180" />
        <instance x="544" y="1536" name="XLXI_8" orien="R0">
        </instance>
        <branch name="PS2_CLK">
            <wire x2="544" y1="1376" y2="1376" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1376" name="PS2_CLK" orien="R180" />
        <branch name="PS2_DATA">
            <wire x2="544" y1="1440" y2="1440" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1440" name="PS2_DATA" orien="R180" />
        <branch name="XLXN_25">
            <wire x2="1056" y1="1376" y2="1376" x1="928" />
            <wire x2="1056" y1="912" y2="1376" x1="1056" />
            <wire x2="1184" y1="912" y2="912" x1="1056" />
        </branch>
        <branch name="XLXN_26(7:0)">
            <wire x2="1040" y1="1504" y2="1504" x1="928" />
            <wire x2="1040" y1="976" y2="1504" x1="1040" />
            <wire x2="1184" y1="976" y2="976" x1="1040" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1664" y1="912" y2="912" x1="1568" />
            <wire x2="1664" y1="736" y2="912" x1="1664" />
            <wire x2="1840" y1="736" y2="736" x1="1664" />
        </branch>
    </sheet>
</drawing>