<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(7:0)" />
        <signal name="Clk_50MHz" />
        <signal name="BTN_SOUTH" />
        <signal name="RS232_RxD" />
        <signal name="RS232_TxD" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="BTN_SOUTH" />
        <port polarity="Input" name="RS232_RxD" />
        <port polarity="Output" name="RS232_TxD" />
        <blockdef name="RS232">
            <timestamp>2008-9-23T11:16:18</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="320" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-320" height="384" />
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
        <block symbolname="RS232" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="BTN_SOUTH" name="Reset" />
            <blockpin signalname="RS232_RxD" name="RS232_RxD" />
            <blockpin signalname="XLXN_4" name="TxStart" />
            <blockpin signalname="XLXN_5(7:0)" name="TxDI(7:0)" />
            <blockpin name="TxBusy" />
            <blockpin name="RxRdy" />
            <blockpin signalname="RS232_TxD" name="RS232_TxD" />
            <blockpin name="RxDO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_RX" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_CLK" />
            <blockpin signalname="PS2_Data" name="PS2_DATA" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="XLXN_4" name="DO_RDY" />
            <blockpin signalname="XLXN_5(7:0)" name="DO(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1872" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <instance x="992" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="976" y1="1168" y2="1168" x1="864" />
            <wire x2="992" y1="1168" y2="1168" x1="976" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="976" y1="1232" y2="1232" x1="880" />
            <wire x2="992" y1="1232" y2="1232" x1="976" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1616" y1="1168" y2="1168" x1="1376" />
            <wire x2="1616" y1="1168" y2="1216" x1="1616" />
            <wire x2="1872" y1="1216" y2="1216" x1="1616" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1600" y1="1296" y2="1296" x1="1376" />
            <wire x2="1600" y1="1152" y2="1296" x1="1600" />
            <wire x2="1872" y1="1152" y2="1152" x1="1600" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="976" y1="1648" y2="1648" x1="912" />
            <wire x2="992" y1="1296" y2="1296" x1="976" />
            <wire x2="976" y1="1296" y2="1472" x1="976" />
            <wire x2="1424" y1="1472" y2="1472" x1="976" />
            <wire x2="976" y1="1472" y2="1584" x1="976" />
            <wire x2="976" y1="1584" y2="1648" x1="976" />
            <wire x2="1440" y1="1584" y2="1584" x1="976" />
            <wire x2="1424" y1="1344" y2="1472" x1="1424" />
            <wire x2="1872" y1="1344" y2="1344" x1="1424" />
            <wire x2="1440" y1="1408" y2="1584" x1="1440" />
            <wire x2="1872" y1="1408" y2="1408" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="912" y="1648" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="880" y="1232" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="864" y="1168" name="PS2_Clk" orien="R180" />
        <branch name="BTN_SOUTH">
            <wire x2="1856" y1="1760" y2="1760" x1="1728" />
            <wire x2="1872" y1="1280" y2="1280" x1="1856" />
            <wire x2="1856" y1="1280" y2="1760" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1760" name="BTN_SOUTH" orien="R180" />
        <branch name="RS232_RxD">
            <wire x2="2272" y1="1088" y2="1088" x1="2256" />
            <wire x2="2400" y1="1088" y2="1088" x1="2272" />
        </branch>
        <branch name="RS232_TxD">
            <wire x2="2272" y1="1152" y2="1152" x1="2256" />
            <wire x2="2400" y1="1152" y2="1152" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1088" name="RS232_RxD" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1152" name="RS232_TxD" orien="R0" />
    </sheet>
</drawing>