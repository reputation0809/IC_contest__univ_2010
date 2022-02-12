wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/chu/IC_contest/2010/2010fpga/SI.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/s1"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvResizeWindow -win $_nWave1 8 31 1157 550
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 597974.526578 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2298895.058141 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb/s2"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s2/S2_done} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s2/S2_done} \
{/tb/s2/cnt_package\[2:0\]} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectGroup -win $_nWave1 {G4}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/s2/cnt_package\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/s2/S2_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/s2/next_state\[1:0\]} \
{/tb/s2/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/s2/cnt_package\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/s2/S2_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/s2/next_state\[1:0\]} \
{/tb/s2/state\[1:0\]} \
{/tb/s2/cnt_addr_bit\[1:0\]} \
{/tb/s2/cnt_data\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/s2/cnt_package\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/s2/S2_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/s2/next_state\[1:0\]} \
{/tb/s2/state\[1:0\]} \
{/tb/s2/cnt_addr_bit\[1:0\]} \
{/tb/s2/cnt_data\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/s2/RB2_A\[2:0\]} \
{/tb/s2/RB2_D\[17:0\]} \
{/tb/s2/RB2_RW} \
{/tb/s2/sd} \
{/tb/s2/sen} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
{/tb/s1/state\[1:0\]} \
{/tb/s1/next_state\[1:0\]} \
{/tb/s1/RB1_A\[4:0\]} \
{/tb/s1/RB1_Q\[7:0\]} \
{/tb/s1/cnt_addr_bit\[1:0\]} \
{/tb/s1/cnt_data\[2:0\]} \
{/tb/s1/cnt_package\[2:0\]} \
{/tb/s1/sd} \
{/tb/s1/sen} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/s2/cnt_package\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/s2/S2_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/s2/next_state\[1:0\]} \
{/tb/s2/state\[1:0\]} \
{/tb/s2/cnt_addr_bit\[1:0\]} \
{/tb/s2/cnt_data\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/s2/RB2_A\[2:0\]} \
{/tb/s2/RB2_D\[17:0\]} \
{/tb/s2/RB2_RW} \
{/tb/s2/sd} \
{/tb/s2/sen} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetCursor -win $_nWave1 399171.461794 -snap {("G5" 5)}
wvSetCursor -win $_nWave1 648505.564784 -snap {("G5" 3)}
wvSetCursor -win $_nWave1 749779.036545 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 2350610.581397 -snap {("G4" 4)}
wvSetCursor -win $_nWave1 2448330.598008 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/tb"
wvGetSignalSetScope -win $_nWave1 "/tb/s2"
wvGetSignalSetScope -win $_nWave1 "/tb/s1"
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSetPosition -win $_nWave1 {("G5" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/tb/s1/clk} \
{/tb/s1/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/tb/s2/cnt_package\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/tb/s2/S2_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/tb/s2/next_state\[1:0\]} \
{/tb/s2/state\[1:0\]} \
{/tb/s2/cnt_addr_bit\[1:0\]} \
{/tb/s2/cnt_data\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/tb/s2/RB2_A\[2:0\]} \
{/tb/s2/RB2_D\[17:0\]} \
{/tb/s2/RB2_RW} \
{/tb/s2/sd} \
{/tb/s2/sen} \
{/tb/s1/sd} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvSetPosition -win $_nWave1 {("G5" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2549011.827244 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2450107.325583 -snap {("G4" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2499855.697676 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 17550465.216582 -snap {("G5" 2)}
wvSetCursor -win $_nWave1 17850732.176720 -snap {("G5" 2)}
wvExit
