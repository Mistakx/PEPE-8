<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="ArithmeticLogicUnit">
            <timestamp>2021-3-27T14:56:54</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <block symbolname="ArithmeticLogicUnit" name="XLXI_1">
            <blockpin name="ALU_operation(3:0)" />
            <blockpin name="inputA(7:0)" />
            <blockpin name="inputB(7:0)" />
            <blockpin name="output(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1280" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>