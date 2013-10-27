// Usual decimal notation
0
2_147_483_647
9_223_372_036_854_775_807

// Explicit suffixes
0L
9_223_372_036_854_775_807L
0U
4_294_967_296U
0UL
18_446_744_073_709_551_615UL

// Hexadecimal notation
0x0
0x7FFF_FFFF
0x8000_0000
0xFFFF_FFFF
0x1_0000_0000
0x7FFF_FFFF_FFFF_FFFF
0x8000_0000_0000_0000
0xFFFF_FFFF_FFFF_FFFF

// Hexadecimal notation with explicit suffixes
0x0L
0x7FFF_FFFF_FFFF_FFFFL
0x8000_0000_0000_0000L
0xFFFF_FFFF_FFFF_FFFFL
0x0U
0xFFFF_FFFFU
0x1_0000_0000U
0xFFFF_FFFF_FFFF_FFFFU
0x0UL
0xFFFF_FFFF_FFFF_FFFFUL
0x0_
0x_0

// Binary notation
0b0 .. 0b0111_1111
0b1000_0000 .. 0b1111_1111
0b1_0000_0000 .. 0b0111_1111_1111_1111
0b1000_0000_0000_0000 .. 0b1111_1111_1111_1111

// Binary notation with explicit suffixes
0b0L .. 0b0111_1111_1111_1111L
0b1000_0000_0000_0000L .. 0b0111_1111_1111_1111L
0b0U .. 0b1111_1111U
0b1_0000_0000U .. 0b1111_1111_1111_1111U
0b0UL .. 0b1111_11111_1111_1111UL


// Floating-point

123_456.567_8          // 123456.5678
1_2_3_4_5_6_._5_6_7_8  // 123456.5678 - documented, but dmd mistakes it for 'a member of int'
1_2_3_4_5_6_.5e-_6     // 123456.5e-6 - documented, but dmd rejects exponents starting with an underscore
0x1.FFFFFFFFFFFFFp1023 // double.max
0x1p-52                // double.epsilon
1.175494351e-38F       // float.min
1.175494351e+38F       // plus in exponent
6.3i                   // idouble 6.3
6.3fi                  // ifloat 6.3
6.3Li                  // ireal 6.3
4.5 + 6.2i             // complex number (phased out)

// Cases that shouldn't be parsed as numbers
abc123def
abc123.def
0x_
