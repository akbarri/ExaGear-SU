.class final Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;
.super Ljava/lang/Object;
.source "PureJavaCrc32C.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final T:[I

.field private static final T8_0_start:I = 0x0

.field private static final T8_1_start:I = 0x100

.field private static final T8_2_start:I = 0x200

.field private static final T8_3_start:I = 0x300

.field private static final T8_4_start:I = 0x400

.field private static final T8_5_start:I = 0x500

.field private static final T8_6_start:I = 0x600

.field private static final T8_7_start:I = 0x700


# instance fields
.field private crc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    .line 116
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0xd947cfd
        -0x1ec48f09
        0x1350f3f4
        -0x386568e1
        0x35f1141c
        0x26a1e7e8
        -0x2b359b15
        -0x7526a731
        0x78b2dbcc
        0x6be22838
        -0x667654c5
        0x4d43cfd0    # 2.0532352E8f
        -0x40d7b32d
        -0x538740d9
        0x5e133c24
        0x105ec76f
        -0x1dcabb94
        -0xe9a4868
        0x30e349b
        -0x283baf90
        0x25afd373
        0x36ff2087
        -0x3b6b5c7c
        -0x65786060
        0x68ec1ca3
        0x7bbcef57
        -0x762893ac
        0x5d1d08bf
        -0x50897444
        -0x43d987b8
        0x4e4dfb4b    # 8.639495E8f
        0x20bd8ede
        -0x2d29f223
        -0x3e7901d7
        0x33ed7d2a
        -0x18d8e63f
        0x154c9ac2
        0x61c6936
        -0xb8815cb
        -0x559b29ef
        0x580f5512
        0x4b5fa6e6    # 1.4657254E7f
        -0x46cbda1b
        0x6dfe410e
        -0x606a3df3
        -0x733ace07
        0x7eaeb2fa
        0x30e349b1
        -0x3d77354e
        -0x2e27c6ba
        0x23b3ba45
        -0x8862152
        0x5125dad
        0x1642ae59
        -0x1bd6d2a6
        -0x45c5ee82
        0x4851927d
        0x5b016189
        -0x56951d76
        0x7da08661
        -0x7034fa9e
        -0x6364096a
        0x6ef07595
        0x417b1dbc
        -0x4cef6141
        -0x5fbf92b5
        0x522bee48
        -0x791e755d
        0x748a09a0
        0x67dafa54
        -0x6a4e86a9
        -0x345dba8d    # -2.1269222E7f
        0x39c9c670
        0x2a993584
        -0x270d4979
        0xc38d26c
        -0x1acae91
        -0x12fc5d65
        0x1f682198
        0x5125dad3
        -0x5cb1a630
        -0x4fe155dc
        0x42752927
        -0x6940b234
        0x64d4cecf
        0x77843d3b
        -0x7a1041c8
        -0x24037de4
        0x2997011f
        0x3ac7f2eb
        -0x37538e18    # -353167.25f
        0x1c661503
        -0x11f26a00
        -0x2a29a0c
        0xf36e6f7
        0x61c69362
        -0x6c52ef9f
        -0x7f021c6b
        0x72966096
        -0x59a3fb83
        0x5437877e
        0x4767748a
        -0x4af30877
        -0x14e03453
        0x197448ae
        0xa24bb5a
        -0x7b0c7a7
        0x2c855cb2
        -0x2111204f
        -0x3241d3bb
        0x3fd5af46
        0x7198540d
        -0x7c0c28f2
        -0x6f5cdb06
        0x62c8a7f9
        -0x49fd3cee
        0x44694011
        0x5739b3e5
        -0x5aadcf1a
        -0x4bef33e
        0x92a8fc1
        0x1a7a7c35
        -0x17ee00ca
        0x3cdb9bdd
        -0x314fe722
        -0x221f14d6
        0x2f8b6829
        -0x7d09c488
        0x709db87b
        0x63cd4b8f
        -0x6e593774
        0x456cac67
        -0x48f8d09c
        -0x5ba82370
        0x563c5f93
        0x82f63b7
        -0x5bb1f4c
        -0x16ebecc0
        0x1b7f9043
        -0x304a0b58
        0x3dde77ab
        0x2e8e845f
        -0x231af8a4
        -0x6d5703e9
        0x60c37f14
        0x73938ce0
        -0x7e07f01d
        0x55326b08
        -0x58a617f5
        -0x4bf6e401
        0x466298fc
        0x1871a4d8
        -0x15e5d825
        -0x6b52bd1
        0xb21572c
        -0x2014cc39
        0x2d80b0c4
        0x3ed04330    # 0.4067626f
        -0x33443fcd    # -9.843548E7f
        -0x5db44a5a
        0x502036a5
        0x4370c551
        -0x4ee4b9ae
        0x65d122b9
        -0x68455e46
        -0x7b15adb2
        0x7681d14d
        0x2892ed69
        -0x25069196
        -0x36566262
        0x3bc21e9d
        -0x10f7858a
        0x1d63f975
        0xe330a81
        -0x3a7767e
        -0x4dea8d37
        0x407ef1ca
        0x532e023e
        -0x5eba7ec3
        0x758fe5d6
        -0x781b992b
        -0x6b4b6adf
        0x66df1622
        0x38cc2a06
        -0x355856fb    # -5493890.5f
        -0x2608a50f
        0x2b9cd9f2
        -0xa942e7
        0xd3d3e1a
        0x1e6dcdee
        -0x13f9b113
        -0x3c72d93c
        0x31e6a5c7
        0x22b65633
        -0x2f222ad0
        0x417b1db
        -0x983cd28
        -0x1ad33ed4
        0x1747422f
        0x49547e0b
        -0x44c002f8
        -0x5790f104
        0x5a048dff
        -0x713116ec
        0x7ca56a17
        0x6ff599e3
        -0x6261e520
        -0x2c2c1e55
        0x21b862a8
        0x32e8915c
        -0x3f7ceda1
        0x144976b4
        -0x19dd0a49
        -0xa8df9bd
        0x7198540
        0x590ab964
        -0x549ec599
        -0x47ce366d
        0x4a5a4a90    # 3576484.0f
        -0x616fd185
        0x6cfbad78
        0x7fab5e8c
        -0x723f2271
        -0x1ccf57e6
        0x115b2b19
        0x20bd8ed
        -0xf9fa412
        0x24aa3f05
        -0x293e43fa
        -0x3a6eb00e    # -4649.993f
        0x37faccf1
        0x69e9f0d5
        -0x647d8c2a
        -0x772d7fde
        0x7ab90321
        -0x518c9836
        0x5c18e4c9
        0x4f48173d
        -0x42dc6bc2
        -0xc91908b
        0x105ec76
        0x12551f82
        -0x1fc1637f
        0x34f4f86a
        -0x39608497
        -0x2a307763
        0x27a40b9e
        0x79b737ba
        -0x74234b47
        -0x6773b8b3
        0x6ae7c44e
        -0x41d25f5b
        0x4c4623a6    # 5.1941016E7f
        0x5f16d052
        -0x5282acaf
        0x0
        0x13a29877
        0x274530ee
        0x34e7a899
        0x4e8a61dc    # 1.16083456E9f
        0x5d28f9ab
        0x69cf5132
        0x7a6dc945
        -0x62eb3c48
        -0x7149a431
        -0x45ae0caa
        -0x560c94df
        -0x2c615d9c
        -0x3fc3c5ed
        -0xb246d76
        -0x1886f503
        0x3fc5f181
        0x2c6769f6
        0x1880c16f
        0xb225918
        0x714f905d
        0x62ed082a
        0x560aa0b3
        0x45a838c4
        -0x5d2ecdc7
        -0x4e8c55b2
        -0x7a6bfd29
        -0x69c96560
        -0x13a4ac1b
        -0x6346e
        -0x34e19cf5    # -1.0380043E7f
        -0x27430484
        0x7f8be302
        0x6c297b75
        0x58ced3ec
        0x4b6c4b9b    # 1.5485851E7f
        0x310182de
        0x22a31aa9
        0x1644b230
        0x5e62a47
        -0x1d60df46
        -0xec24733
        -0x3a25efac
        -0x298777dd
        -0x53eabe9a
        -0x404826ef
        -0x74af8e78
        -0x670d1601
        0x404e1283
        0x53ec8af4
        0x670b226d
        0x74a9ba1a
        0xec4735f
        0x1d66eb28
        0x298143b1
        0x3a23dbc6
        -0x22a52ec5
        -0x3107b6b4
        -0x5e01e2b
        -0x1642865e
        -0x6c2f4f19
        -0x7f8dd770
        -0x4b6a7ff7
        -0x58c8e782
        -0xe839fc
        -0x134aa18d
        -0x27ad0916
        -0x340f9163    # -3.1513914E7f
        -0x4e625828
        -0x5dc0c051
        -0x692768ca
        -0x7a85f0bf
        0x620305bc
        0x71a19dcb
        0x45463552
        0x56e4ad25
        0x2c896460
        0x3f2bfc17
        0xbcc548e
        0x186eccf9
        -0x3f2dc87b
        -0x2c8f500e
        -0x1868f895
        -0xbca60e4
        -0x71a7a9a7
        -0x620531d2
        -0x56e29949
        -0x45400140
        0x5dc6f43d
        0x4e646c4a    # 9.5807552E8f
        0x7a83c4d3
        0x69215ca4
        0x134c95e1
        0xee0d96
        0x3409a50f
        0x27ab3d78
        -0x7f63dafa
        -0x6cc1428f
        -0x5826ea18
        -0x4b847261
        -0x31e9bb26
        -0x224b2353
        -0x16ac8bcc
        -0x50e13bd
        0x1d88e6be
        0xe2a7ec9
        0x3acdd650
        0x296f4e27
        0x53028762
        0x40a01f15
        0x7447b78c
        0x67e52ffb
        -0x40a62b79
        -0x5304b310
        -0x67e31b97
        -0x744183e2
        -0xe2c4aa5
        -0x1d8ed2d4
        -0x29697a4b
        -0x3acbe23e
        0x224d173f
        0x31ef8f48
        0x50827d1
        0x16aabfa6
        0x6cc776e3
        0x7f65ee94
        0x4b82460d    # 1.7075226E7f
        0x5820de7a
        -0x43c0507
        -0x179e9d72
        -0x237935e9
        -0x30dbada0
        -0x4ab664db    # -7.51041E-7f
        -0x5914fcae
        -0x6df35435
        -0x7e51cc44
        0x66d73941
        0x7575a136
        0x419209af
        0x523091d8
        0x285d589d
        0x3bffc0ea
        0xf186873
        0x1cbaf004
        -0x3bf9f488
        -0x285b6cf1
        -0x1cbcc46a
        -0xf1e5c1f
        -0x7573955c
        -0x66d10d2d
        -0x5236a5b6
        -0x41943dc3
        0x5912c8c0
        0x4ab050b7    # 5777499.5f
        0x7e57f82e
        0x6df56059
        0x1798a91c
        0x43a316b
        0x30dd99f2
        0x237f0185
        -0x7bb7e605
        -0x68157e74
        -0x5cf2d6eb
        -0x4f504e9e
        -0x353d87d9    # -6372371.5f
        -0x269f1fb0
        -0x1278b737
        -0x1da2f42
        0x195cda43
        0xafe4234
        0x3e19eaad
        0x2dbb72da
        0x57d6bb9f
        0x447423e8
        0x70938b71
        0x63311306
        -0x44721786
        -0x57d08ff3
        -0x6337276c
        -0x7095bf1d
        -0xaf8765a
        -0x195aee2f
        -0x2dbd46b8
        -0x3e1fdec1
        0x26992bc2
        0x353bb3b5
        0x1dc1b2c
        0x127e835b
        0x68134a1e
        0x7bb1d269
        0x4f567af0
        0x5cf4e287
        0x4d43cfd
        0x1776a48a
        0x23910c13
        0x30339464
        0x4a5e5d21    # 3643208.2f
        0x59fcc556
        0x6d1b6dcf
        0x7eb9f5b8
        -0x663f00bb
        -0x759d98ce
        -0x417a3055    # -0.26135f
        -0x52d8a824
        -0x28b56167
        -0x3b17f912
        -0xff05189
        -0x1c52ca00
        0x3b11cd7c
        0x28b3550b
        0x1c54fd92
        0xff665e5
        0x759baca0
        0x663934d7
        0x52de9c4e
        0x417c0439
        -0x59faf13c
        -0x4a58694d
        -0x7ebfc1d6
        -0x6d1d59a3
        -0x177090e8
        -0x4d20891
        -0x3035a00a
        -0x2397387f
        0x7b5fdfff
        0x68fd4788
        0x5c1aef11
        0x4fb87766    # 6.1896653E9f
        0x35d5be23
        0x26772654
        0x12908ecd
        0x13216ba
        -0x19b4e3b9
        -0xa167bd0
        -0x3ef1d357
        -0x2d534b22
        -0x573e8265
        -0x449c1a14
        -0x707bb28b
        -0x63d92afe    # -5.52001E-22f
        0x449a2e7e
        0x5738b609
        0x63df1e90
        0x707d86e7
        0xa104fa2
        0x19b2d7d5
        0x2d557f4c
        0x3ef7e73b
        -0x2671123a
        -0x35d38a4f
        -0x13422d8
        -0x1296baa1
        -0x68fb73e6
        -0x7b59eb93
        -0x4fbe430c
        -0x5c1cdb7d
        0x0
        -0x5abe6d82
        0x4f6f520d
        -0x15d13f8d
        -0x61215be6
        0x3b9f3664
        -0x2e4e09e9
        0x74f06469
        0x38513ec5
        -0x62ef5345
        0x773e6cc8
        -0x2d80014a
        -0x59706521
        0x3ce08a1
        -0x161f372e
        0x4ca15aac    # 8.4596064E7f
        0x70a27d8a
        -0x2a1c100c
        0x3fcd2f87
        -0x65734207
        -0x11832670
        0x4b3d4bee    # 1.2405742E7f
        -0x5eec7463    # -4.9990314E-19f
        0x45219e3
        0x48f3434f
        -0x124d2ecf
        0x79c1142
        -0x5d227cc4
        -0x29d218ab
        0x736c752b
        -0x66bd4aa8
        0x3c032726
        -0x1ebb04ec
        0x4405696a
        -0x51d456e7
        0xb6a3b67
        0x7f9a5f0e
        -0x25243290
        0x30f50d03
        -0x6a4b6083
        -0x26ea3a2f
        0x7c5457af
        -0x69856824
        0x333b05a2
        0x47cb61cb
        -0x1d750c4b
        0x8a433c6
        -0x521a5e48
        -0x6e197962
        0x34a714e0
        -0x21762b6d
        0x7bc846ed
        0xf382284
        -0x55864f06
        0x40577089
        -0x1ae91d09
        -0x564847a5
        0xcf62a25
        -0x192715aa
        0x43997828
        0x37691c41
        -0x6dd771c1
        0x78064e4c
        -0x22b823ce    # -9.0009004E17f
        -0x389a7f27
        0x622412a7
        -0x77f52d2c
        0x2d4b40aa
        0x59bb24c3
        -0x3054943
        0x16d476ce
        -0x4c6a1b50
        -0xcb41e4
        0x5a752c62
        -0x4fa413ef    # -8.0007206E-10f
        0x151a7e6f
        0x61ea1a06
        -0x3b547788
        0x2e85480b
        -0x743b258b
        -0x483802ad
        0x12866f2d
        -0x75750a2
        0x5de93d20
        0x29195949
        -0x73a734c9
        0x66760b44
        -0x3cc866c6
        -0x70693c6a
        0x2ad751e8
        -0x3f066e65
        0x65b803e5
        0x1148678c
        -0x4bf60a0e
        0x5e273581
        -0x4995801
        0x26217bcd
        -0x7c9f164d
        0x694e29c0
        -0x33f04442    # -3.767884E7f
        -0x47002029
        0x1dbe4da9
        -0x86f7226
        0x52d11fa4
        0x1e704508
        -0x44ce288a
        0x511f1705
        -0xba17a85
        -0x7f511eee
        0x25ef736c
        -0x303e4ce1
        0x6a802161
        0x56830647
        -0xc3d6bc7
        0x19ec544a
        -0x435239cc
        -0x37a25da3
        0x6d1c3023
        -0x78cd0fb0
        0x2273622e
        0x6ed23882
        -0x346c5504    # -1.9355128E7f
        0x21bd6a8f
        -0x7b03070f
        -0xff36368
        0x554d0ee6    # 1.4091492E13f
        -0x409c316b
        0x1a225ceb
        -0x74d888bd
        0x2e66e53d
        -0x3bb7dab2
        0x6109b730
        0x15f9d359
        -0x4f47bed9
        0x5a968154
        -0x28ecd6
        -0x4c89b67a
        0x1637dbf8
        -0x3e6e475
        0x595889f5
        0x2da8ed9c
        -0x7716801e
        0x62c7bf91
        -0x3879d211
        -0x47af537
        0x5ec498b7
        -0x4b15a73c
        0x11abcaba
        0x655baed3
        -0x3fe5c353
        0x2a34fcde
        -0x708a9160
        -0x3c2bcbf4
        0x6695a672
        -0x734499ff
        0x29faf47f
        0x5d0a9016
        -0x7b4fd98
        0x1265c21b
        -0x48dbaf9b
        0x6a638c57
        -0x30dde1d7
        0x250cde5a    # 1.22184E-16f
        -0x7fb2b3dc
        -0xb42d7b3
        0x51fcba33
        -0x442d85c0
        0x1e93e83e
        0x5232b292
        -0x88cdf14
        0x1d5de09f
        -0x47e38d1f
        -0x3313e978
        0x69ad84f6
        -0x7c7cbb7b
        0x26c2d6fb
        0x1ac1f1dd
        -0x407f9c5d
        0x55aea3d0
        -0xf10ce52
        -0x7be0aa39
        0x215ec7b9
        -0x348ff836    # -1.5730634E7f
        0x6e3195b4
        0x2290cf18
        -0x782ea29a
        0x6dff9d15
        -0x3741f095
        -0x43b194fe
        0x190ff97c
        -0xcdec6f1
        0x5660ab71
        0x4c42f79a    # 5.110948E7f
        -0x16fc9a1c
        0x32da597
        -0x5993c817
        -0x2d63ac80
        0x77ddc1fe
        -0x620cfe73
        0x38b293f3
        0x7413c95f
        -0x2eada4df
        0x3b7c9b52
        -0x61c2f6d4    # -1.0007473E-20f
        -0x153292bb
        0x4f8cff3b
        -0x5a5dc0b8
        0xe3ad36
        0x3ce08a10
        -0x665ee792
        0x738fd81d
        -0x2931b59d
        -0x5dc1d1f6
        0x77fbc74
        -0x12ae83f9
        0x4810ee79
        0x4b1b4d5
        -0x5e0fd955
        0x4bdee6d8    # 2.9216176E7f
        -0x11608b5a
        -0x6590ef31
        0x3f2e82b1
        -0x2affbd3e
        0x7041d0bc
        -0x52f9f372
        0x8479ef0
        -0x1d96a17d
        0x4728ccfd
        0x33d8a894
        -0x6966c516
        0x7cb7fa99
        -0x26099719
        -0x6aa8cdb5
        0x3016a035
        -0x25c79fba
        0x7f79f238
        0xb899651
        -0x5137fbd1
        0x44e6c45c
        -0x1e58a9de
        -0x225b8efc
        0x78e5e37a
        -0x6d34dcf7
        0x378ab177
        0x437ad51e
        -0x19c4b8a0
        0xc158713
        -0x56abea93
        -0x1a0ab03f
        0x40b4ddbf
        -0x5565e234
        0xfdb8fb2
        0x7b2bebdb
        -0x2195865b
        0x3444b9d6
        -0x6efad458
        0x0
        -0x22ba5548
        -0x4098dc7f
        0x62228939
        0x7b2231f3
        -0x599864b5
        -0x3bbaed8e
        0x1900b8ca
        -0x9bb9c1a
        0x2b01c95e
        0x49234067
        -0x6b991521
        -0x7299adeb
        0x5023f8ad
        0x32017194
        -0x10bb24d4
        -0x169b4ec3
        0x34211b85
        0x560392bc
        -0x74b9c7fc
        -0x6db97f32
        0x4f032a76
        0x2d21a34f
        -0xf9bf609
        0x1f20d2db
        -0x3d9a879d
        -0x5fb80ea6
        0x7d025be2
        0x6402e328
        -0x46b8b670
        -0x249a3f57
        0x6206a11
        -0x28daeb75
        0xa60be33
        0x6842370a
        -0x4af8624e
        -0x53f8da88
        0x71428fc0    # 9.63422E29f
        0x136006f9
        -0x31da53bf
        0x2161776d
        -0x3db222b
        -0x61f9ab14
        0x4343fe54
        0x5a43469e
        -0x78f913da
        -0x1adb9ae1
        0x3861cfa7
        0x3e41a5b6
        -0x1cfbf0f2
        -0x7ed979c9
        0x5c632c8f
        0x45639445
        -0x67d9c103
        -0x5fb483c
        0x27411d7c
        -0x37fa39b0    # -136985.25f
        0x15406ce8    # 3.8860003E-26f
        0x7762e5d1
        -0x55d8b097
        -0x4cd8085d
        0x6e625d1b
        0xc40d422
        -0x2efa8166
        -0x5459a019
        0x76e3f55f
        0x14c17c66
        -0x367b2922
        -0x2f7b91ec
        0xdc1c4ac
        0x6fe34d95
        -0x4d5918d3    # -1.943007E-8f
        0x5de23c01
        -0x7f586947
        -0x1d7ae080
        0x3fc0b538
        0x26c00df2
        -0x47a58b6
        -0x6658d18d
        0x44e284cb
        0x42c2eeda
        -0x6078bb9e
        -0x25a32a5
        0x20e067e3
        0x39e0df29
        -0x1b5a8a6f
        -0x79780358
        0x5bc25610
        -0x4b7972c4
        0x69c32784
        0xbe1aebd
        -0x295bfbfb
        -0x305b4331
        0x12e11677
        0x70c39f4e
        -0x5279ca0a    # -1.5258E-11f
        0x7c834b6c
        -0x5e391e2c
        -0x3c1b9713
        0x1ea1c255
        0x7a17a9f
        -0x251b2fd9
        -0x4739a6e2
        0x6583f3a6
        -0x7538d776
        0x57828232
        0x35a00b0b
        -0x171a5e4d
        -0xe1ae687
        0x2ca0b3c1
        0x4e823af8
        -0x6c386fc0
        -0x6a1805af
        0x48a250e9
        0x2a80d9d0
        -0x83a8c98
        -0x113a345e
        0x3380611a
        0x51a2e823
        -0x7318bd65
        0x63a399b7
        -0x4119ccf1
        -0x233b45ca
        0x181108e
        0x1881a844
        -0x3a3bfd04
        -0x5819743b
        0x7aa3217d
        0x52a0c93f
        -0x701a9c79
        -0x12381542
        0x30824006
        0x2982f8cc
        -0xb38ad8c
        -0x691a24b3
        0x4ba071f5    # 2.1029866E7f
        -0x5b1b5527
        0x79a10061
        0x1b838958
        -0x3939dc20
        -0x203964d6
        0x2833192
        0x60a1b8ab
        -0x421beded
        -0x443b87fe
        0x6681d2ba
        0x4a35b83
        -0x26190ec5
        -0x3f19b60f
        0x1da3e349
        0x7f816a70
        -0x5d3b3f38
        0x4d801be4
        -0x6f3a4ea4
        -0xd18c79b
        0x2fa292dd
        0x36a22a17
        -0x14187f51
        -0x763af66a
        0x5480a32e
        -0x7a7a224c
        0x58c0770c
        0x3ae2fe35
        -0x1858ab73
        -0x15813b9
        0x23e246ff
        0x41c0cfc6
        -0x637a9a82
        0x73c1be52
        -0x517beb16
        -0x3359622d    # -8.7355032E7f
        0x11e3376b
        0x8e38fa1
        -0x2a59dae7
        -0x487b53e0
        0x6ac10698
        0x6ce16c89
        -0x4e5b39cf
        -0x2c79b0f8
        0xec3e5b0
        0x17c35d7a
        -0x3579083e    # -4422625.0f
        -0x575b8105
        0x75e1d443
        -0x655af091
        0x47e0a5d7
        0x25c22cee
        -0x77879aa
        -0x1e78c164
        0x3cc29424
        0x5ee01d1d
        -0x7c5a485b    # -9.739991E-37f
        -0x6f96928
        0x24433c60
        0x4661b559
        -0x64dbe01f
        -0x7ddb58d5
        0x5f610d93
        0x3d4384aa
        -0x1ff9d1ee
        0xf42f53e
        -0x2df8a07a
        -0x4fda2941
        0x6d607c07
        0x7460c4cd
        -0x56da918b
        -0x34f818b4    # -8906572.0f
        0x16424df4
        0x106227e5
        -0x32d872a3
        -0x50fafb9c
        0x7240aedc
        0x6b401616
        -0x49fa4352
        -0x2bd8ca69
        0x9629f2f
        -0x19d9bbfd
        0x3b63eebb
        0x59416782
        -0x7bfb32c6
        -0x62fb8a10
        0x4041df48
        0x22635671    # 3.0809998E-18f
        -0xd90337
        0x2e238253
        -0xc99d715
        -0x6ebb5e2e
        0x4c010b6a    # 3.3828264E7f
        0x5501b3a0
        -0x77bbe6e8
        -0x15996fdf
        0x37233a99
        -0x27981e4b
        0x5224b0d
        0x6700c234
        -0x45ba9774
        -0x5cba2fba
        0x7e007afe
        0x1c22f3c7
        -0x3e98a681
        -0x38b8cc92
        0x1a0299d6
        0x782010ef
        -0x5a9a45a9
        -0x439afd63
        0x6120a825
        0x302211c
        -0x21b8745c
        0x31035088
        -0x13b905d0
        -0x719b8cf7
        0x5321d9b1
        0x4a21617b    # 2644062.8f
        -0x689b343d
        -0xab9bd06
        0x2803e842
        0x0
        0x38116fac
        0x7022df58
        0x4833b0f4
        -0x1fba4150
        -0x27ab2ee4
        -0x6f989e18
        -0x5789f1bc
        -0x3a98f46f
        -0x2899bc3
        -0x4aba2b37
        -0x72ab449b
        0x2522b521
        0x1d33da8d
        0x55006a79
        0x6d1105d5
        -0x70dd9e2d
        -0x48ccf181
        -0xff4175
        -0x38ee2ed9
        0x6f67df63
        0x5776b0cf
        0x1f45003b
        0x27546f97
        0x4a456a42    # 3234448.5f
        0x725405ee
        0x3a67b51a
        0x276dab6
        -0x55ff2b0e
        -0x6dee44a2
        -0x25ddf456
        -0x1dcc9bfa
        0x1ba8b557
        0x23b9dafb
        0x6b8a6a0f
        0x539b05a3
        -0x412f419
        -0x3c039bb5
        -0x74302b41
        -0x4c2144ed
        -0x2130413a
        -0x19212e96
        -0x51129e62
        -0x6903f1ce
        0x3e8a0076
        0x69b6fda
        0x4ea8df2e
        0x76b9b082
        -0x6b752b7c
        -0x536444d8
        -0x1b57f424
        -0x23469b90
        0x74cf6a34
        0x4cde0598
        0x4edb56c
        0x3cfcdac0
        0x51eddf15
        0x69fcb0b9
        0x21cf004d
        0x19de6fe1    # 2.299945E-23f
        -0x4e579e5b
        -0x7646f1f7
        -0x3e754103
        -0x6642eaf
        0x37516aae
        0xf400502
        0x4773b5f6
        0x7f62da5a
        -0x28eb2be2
        -0x10fa444e
        -0x58c9f4ba
        -0x60d89b16
        -0xdc99ec1
        -0x35d8f16d
        -0x7deb4199
        -0x45fa2e35
        0x1273df8f
        0x2a62b023
        0x625100d7
        0x5a406f7b
        -0x478cf483
        -0x7f9d9b2f
        -0x37ae2bdb
        -0xfbf4477
        0x5836b5cd
        0x6027da61
        0x28146a95
        0x10050539
        0x7d1400ec
        0x45056f40
        0xd36dfb4
        0x3527b018
        -0x62ae41a4
        -0x5abf2e10
        -0x128c9efc
        -0x2a9df158
        0x2cf9dff9
        0x14e8b055
        0x5cdb00a1
        0x64ca6f0d
        -0x33439eb7    # -9.8765384E7f
        -0xb52f11b
        -0x436141ef
        -0x7b702e43
        -0x16612b98
        -0x2e70443c
        -0x6643f4d0
        -0x5e529b64
        0x9db6ad8
        0x31ca0574
        0x79f9b580
        0x41e8da2c
        -0x5c2441d6
        -0x64352e7a
        -0x2c069e8e
        -0x1417f122
        0x439e009a
        0x7b8f6f36
        0x33bcdfc2
        0xbadb06e
        0x66bcb5bb
        0x5eadda17
        0x169e6ae3
        0x2e8f054f
        -0x7906f4f5
        -0x41179b59
        -0x9242bad
        -0x31354401
        0x6ea2d55c
        0x56b3baf0
        0x1e800a04
        0x269165a8
        -0x71189414
        -0x4909fbc0
        -0x13a4b4c
        -0x392b24e8
        -0x543a2133
        -0x6c2b4e9f
        -0x2418fe6b
        -0x1c0991c7
        0x4b80607d    # 1.6826618E7f
        0x73910fd1
        0x3ba2bf25
        0x3b3d089
        -0x1e7f4b71
        -0x266e24dd
        -0x6e5d9429
        -0x564cfb85
        0x1c50a3f
        0x39d46593
        0x71e7d567
        0x49f6bacb
        0x24e7bf1e
        0x1cf6d0b2
        0x54c56046
        0x6cd40fea
        -0x3b5dfe52
        -0x34c91fe
        -0x4b7f210a
        -0x736e4ea6
        0x750a600b
        0x4d1b0fa7    # 1.62593392E8f
        0x528bf53
        0x3d39d0ff
        -0x6ab02145
        -0x52a14ee9
        -0x1a92fe1d
        -0x228391b1
        -0x4f929466
        -0x7783fbca
        -0x3fb04b3e
        -0x7a12492
        0x5028d52a
        0x6839ba86
        0x200a0a72
        0x181b65de
        -0x5d7fe28
        -0x3dc6918c
        -0x75f52180
        -0x4de44ed4
        0x1a6dbf68
        0x227cd0c4
        0x6a4f6030
        0x525e0f9c
        0x3f4f0a49
        0x75e65e5
        0x4f6dd511
        0x777cbabd
        -0x20f54b07
        -0x18e424ab
        -0x50d7945f
        -0x68c6fbf3
        0x59f3bff2
        0x61e2d05e
        0x29d160aa
        0x11c00f06
        -0x4649febe
        -0x7e589112
        -0x366b21e6
        -0xe7a4e4a
        -0x636b4b9d
        -0x5b7a2431
        -0x134994c5
        -0x2b58fb69
        0x7cd10ad3
        0x44c0657f
        0xcf3d58b
        0x34e2ba27
        -0x292e21df
        -0x113f4e73
        -0x590cfe87
        -0x611d912b
        0x36946091
        0xe850f3d
        0x46b6bfc9
        0x7ea7d065
        0x13b6d5b0
        0x2ba7ba1c
        0x63940ae8
        0x5b856544
        -0xc0c9500
        -0x341dfb54    # -2.9624664E7f
        -0x7c2e4ba8
        -0x443f240c
        0x425b0aa5
        0x7a4a6509
        0x3279d5fd
        0xa68ba51
        -0x5de14beb
        -0x65f02447
        -0x2dc394b3
        -0x15d2fb1f
        -0x78c3fecc
        -0x40d29168
        -0x8e12194
        -0x30f04e40
        0x6779bf84
        0x5f68d028
        0x175b60dc
        0x2f4a0f70
        -0x3286948a
        -0xa97fb26
        -0x42a44bd2
        -0x7ab5247e
        0x2d3cd5c6
        0x152dba6a
        0x5d1e0a9e
        0x650f6532
        0x81e60e7
        0x300f0f4b
        0x783cbfbf
        0x402dd013
        -0x17a421a9
        -0x2fb54e05
        -0x6786fef1
        -0x5f97915d
        0x0
        -0x10cf94e7
        -0x24735f3d
        0x34bccbda
        -0x4d0ac889
        0x5dc55c6e
        0x697997b4
        -0x79b60353
        0x6006181f
        -0x70c98cfa
        -0x44754724
        0x54bad3c5
        -0x2d0cd098
        0x3dc34471
        0x97f8fab
        -0x19b01b4e
        -0x3ff3cfc2
        0x2f3c5b27
        0x1b8090fd
        -0xb4f041c
        0x72f90749
        -0x623693b0
        -0x568a5876
        0x4645cc93
        -0x5ff5d7df
        0x4f3a4338
        0x7b8688e2
        -0x6b491c05
        0x12ff1f56
        -0x2308bb1
        -0x368c406b
        0x2643d48c
        -0x7a0be973
        0x6ac47d94
        0x5e78b64e
        -0x4eb722a9
        0x370121fa
        -0x27ceb51d
        -0x13727ec7
        0x3bdea20
        -0x1a0df16e
        0xac2658b
        0x3e7eae51
        -0x2eb13ab8
        0x570739e5
        -0x47c8ad04
        -0x737466da
        0x63bbf23f
        0x45f826b3
        -0x5537b256
        -0x618b7990
        0x7144ed69
        -0x8f2ee3c
        0x183d7add
        0x2c81b107
        -0x3c4e25e2
        0x25fe3eac
        -0x3531aa4b    # -6761178.5f
        -0x18d6191
        0x1142f576
        -0x68f4f625
        0x783b62c2
        0x4c87a918    # 7.1125184E7f
        -0x5c483dff
        0xe045beb
        -0x1ecbcf0e
        -0x2a7704d8
        0x3ab89031
        -0x430e9364
        0x53c10785
        0x677dcc5f
        -0x77b258ba
        0x6e0243f4
        -0x7ecdd713
        -0x4a711cc9
        0x5abe882e
        -0x23088b7d
        0x33c71f9a
        0x77bd440
        -0x17b440a7
        -0x31f7942b
        0x213800cc
        0x1584cb16
        -0x54b5ff1
        0x7cfd5ca2
        -0x6c32c845
        -0x588e039f
        0x48419778    # 198237.88f
        -0x51f18c36
        0x413e18d3
        0x7582d309
        -0x654d47f0
        0x1cfb44bd
        -0xc34d05c
        -0x38881b82
        0x28478f67
        -0x740fb29a
        0x64c0267f
        0x507ceda5
        -0x40b37944
        0x39057a11
        -0x29caeef8
        -0x1d76252e
        0xdb9b1cb
        -0x1409aa87
        0x4c63e60
        0x307af5ba
        -0x20b5615d
        0x5903620e
        -0x49ccf6e9
        -0x7d703d33
        0x6dbfa9d4
        0x4bfc7d58    # 3.309432E7f
        -0x5b33e9bf
        -0x6f8f2265
        0x7f40b682
        -0x6f6b5d1
        0x16392136
        0x2285eaec
        -0x324a7e0b    # -3.8064912E8f
        0x2bfa6547
        -0x3b35f1a2
        -0xf893a7c
        0x1f46ae9d
        -0x66f0add0
        0x763f3929
        0x4283f2f3
        -0x524c6616
        0x1c08b7d6
        -0xcc72331
        -0x387be8eb
        0x28b47c0c
        -0x51027f5f
        0x41cdebb8
        0x75712062
        -0x65beb485
        0x7c0eafc9
        -0x6cc13b30
        -0x587df0f6
        0x48b26413
        -0x31046742
        0x21cbf3a7
        0x1577387d
        -0x5b8ac9c
        -0x23fb7818
        0x3334ecf1
        0x788272b
        -0x1747b3ce
        0x6ef1b09f
        -0x7e3e247a
        -0x4a82efa4
        0x5a4d7b45
        -0x43fd6009
        0x5332f4ee
        0x678e3f34
        -0x7741abd3
        0xef7a880
        -0x1e383c67
        -0x2a84f7bd
        0x3a4b635a
        -0x66035ea5
        0x76ccca42
        0x42700198    # 60.001556f
        -0x52bf957f
        0x2b09962c
        -0x3bc602cb
        -0xf7ac911
        0x1fb55df6
        -0x60546bc
        0x16cad25d
        0x22761987
        -0x32b98d62    # -2.0808752E8f
        0x4b0f8e33    # 9408051.0f
        -0x5bc01ad6
        -0x6f7cd110
        0x7fb345e9
        0x59f09165
        -0x493f0584
        -0x7d83ce5a
        0x6d4c5abf
        -0x14fa59ee
        0x435cd0b
        0x308906d1    # 9.969999E-10f
        -0x20469238
        0x39f6897a
        -0x29391d9d
        -0x1d85d647
        0xd4a42a0
        -0x74fc41f3
        0x6433d514
        0x508f1ece
        -0x40408a29
        0x120cec3d
        -0x2c378dc
        -0x367fb302
        0x26b027e7
        -0x5f0624b6
        0x4fc9b053    # 6.767552E9f
        0x7b757b89
        -0x6bbaef70
        0x720af422
        -0x62c560c5
        -0x5679ab1f
        0x46b63ff8
        -0x3f003cab
        0x2fcfa84c
        0x1b736396
        -0xbbcf771
        -0x2dff23fd
        0x3d30b71a
        0x98c7cc0
        -0x1943e827
        0x60f5eb74
        -0x703a7f93
        -0x4486b449
        0x544920ae
        -0x4df93be4
        0x5d36af05
        0x698a64df
        -0x7945f03a
        0xf3f36b
        -0x103c678e
        -0x2480ac58    # -7.18681E16f
        0x344f38b1
        -0x68070550
        0x78c891a9
        0x4c745a73    # 6.4055756E7f
        -0x5cbbce96
        0x250dcdc7
        -0x35c25922
        -0x17e92fc
        0x11b1061d
        -0x8011d51
        0x18ce89b6
        0x2c72426c
        -0x3cbdd68b
        0x450bd5d8
        -0x55c4413f
        -0x61788ae5
        0x71b71e02
        0x57f4ca8e
        -0x473b5e69
        -0x738795b3
        0x63480154
        -0x1afe0207
        0xa3196e0
        0x3e8d5d3a
        -0x2e42c9dd
        0x37f2d291
        -0x273d4678
        -0x13818dae
        0x34e194b
        -0x7af81a1a
        0x6a378eff
        0x5e8b4525
        -0x4e44d1c4
        0x0
        0x68032cc8
        -0x2ff9a670
        -0x47fa8aa8
        -0x5a1f3a2f
        -0x321c16e7    # -4.7796304E8f
        0x75e69c41
        0x1de5b089
        0x4e2dfd53    # 7.2976506E8f
        0x262ed19b
        -0x61d45b3d
        -0x9d777f5
        -0x1432c77e
        -0x7c31ebb6
        0x3bcb6112
        0x53c84dda
        -0x63a4055a
        -0xba72992
        0x4c5da336    # 5.8100952E7f
        0x245e8ffe
        0x39bb3f77
        0x51b813bf
        -0x16429919
        -0x7e41b5d1
        -0x2d89f80b
        -0x458ad4c3
        0x2705e65
        0x6a7372ad
        0x7796c224
        0x1f95eeec
        -0x586f644c
        -0x306c4884
        0x3d5b83bd
        0x5558af75
        -0x12a225d3
        -0x7aa1091b
        -0x6744b994
        -0xf47955c
        0x48bd1ffc    # 387327.88f
        0x20be3334
        0x73767eee
        0x1b755226
        -0x5c8fd882
        -0x348cf44a
        -0x296944c1    # -8.286548E13f
        -0x416a6809
        0x690e2af
        0x6e93ce67
        -0x5eff86e5
        -0x36fcaa2d
        0x7106208b
        0x19050c43
        0x4e0bcca
        0x6ce39002
        -0x2b191aa6
        -0x431a366e
        -0x10d27bb8
        -0x78d15780
        0x3f2bddd8
        0x5728f110
        0x4acd4199    # 6725836.5f
        0x22ce6d51
        -0x6534e7f7
        -0xd37cb3f
        0x7ab7077a
        0x12b42bb2
        -0x554ea116
        -0x3d4d8dde
        -0x20a83d55
        -0x48ab119d
        0xf519b3b
        0x6752b7f3
        0x349afa29
        0x5c99d6e1
        -0x1b635c47
        -0x7360708f
        -0x6e85c008
        -0x686ecd0
        0x417c6668
        0x297f4aa0
        -0x19130224
        -0x71102eec
        0x36eaa44c
        0x5ee98884
        0x430c380d
        0x2b0f14c5
        -0x6cf59e63
        -0x4f6b2ab
        -0x573eff71
        -0x3f3dd3b9
        0x78c7591f
        0x10c475d7
        0xd21c55e
        0x6522e996
        -0x22d86332
        -0x4adb4ffa
        0x47ec84c7
        0x2fefa80f
        -0x681522a9
        -0x160e61
        -0x1df3beea
        -0x75f09222
        0x320a1886
        0x5a09344e
        0x9c17994
        0x61c2555c
        -0x2638dffc
        -0x4e3bf334
        -0x53de43bb
        -0x3bdd6f73
        0x7c27e5d5
        0x1424c91d
        -0x2448819f
        -0x4c4bad57
        0xbb127f1
        0x63b20b39
        0x7e57bbb0
        0x16549778
        -0x51ae1de0
        -0x39ad3118
        -0x6a657cce
        -0x2665006
        0x459cdaa2
        0x2d9ff66a
        0x307a46e3
        0x58796a2b
        -0x1f83e08d
        -0x7780cc45
        -0xa91f10c
        -0x6292ddc4
        0x25685764
        0x4d6b7bac    # 2.4692192E8f
        0x508ecb25
        0x388de7ed
        -0x7f776d4b
        -0x17744183
        -0x44bc0c59
        -0x2cbf2091
        0x6b45aa37
        0x34686ff
        0x1ea33676
        0x76a01abe
        -0x315a901a
        -0x5959bcd2
        0x6935f452
        0x136d89a
        -0x46cc523e    # -1.71355E-4f
        -0x2ecf7ef6
        -0x332ace7d
        -0x5b29e2b5
        0x1cd36813
        0x74d044db
        0x27180901
        0x4f1b25c9
        -0x8e1af6f
        -0x60e283a7
        -0x7d073330
        -0x15041fe8
        0x52fe9540
        0x3afdb988
        -0x37ca72b7
        -0x5fc95e7f
        0x1833d4d9
        0x7030f811
        0x6dd54898
        0x5d66450
        -0x422ceef8
        -0x2a2fc240
        -0x79e78fe6
        -0x11e4a32e
        0x561e298a
        0x3e1d0542
        0x23f8b5cb
        0x4bfb9903    # 3.2977414E7f
        -0xc0113a5
        -0x64023f6d
        0x546e77ef
        0x3c6d5b27
        -0x7b97d181
        -0x1394fd49
        -0xe714dc2
        -0x6672610a
        0x2188ebae
        0x498bc766    # 1145068.8f
        0x1a438abc
        0x7240a674
        -0x35ba2cd4    # -3241163.0f
        -0x5db9001c
        -0x405cb093
        -0x285f9c5b
        0x6fa516fd
        0x7a63a35
        -0x7026f672
        -0x1825daba
        0x5fdf501e
        0x37dc7cd6
        0x2a39cc5f
        0x423ae097
        -0x5c06a31
        -0x6dc346f9
        -0x3e0b0b23
        -0x560827eb
        0x11f2ad4d
        0x79f18185
        0x6414310c
        0xc171dc4
        -0x4bed9764
        -0x23eebbac
        0x1382f328
        0x7b81dfe0
        -0x3c7b5548
        -0x54787990
        -0x499dc907
        -0x219ee5cf
        0x66646f69
        0xe6743a1
        0x5daf0e7b
        0x35ac22b3
        -0x7256a815
        -0x1a5584dd
        -0x7b03456
        -0x6fb3189e
        0x2849923a
        0x404abef2
        -0x4d7d75cd
        -0x257e5905
        0x6284d3a3
        0xa87ff6b
        0x17624fe2
        0x7f61632a
        -0x389be98e
        -0x5098c546
        -0x35088a0
        -0x6b53a458
        0x2ca92ef0    # 4.80848E-12f
        0x44aa0238
        0x594fb2b1
        0x314c9e79
        -0x76b614df
        -0x1eb53817
        0x2ed97095
        0x46da5c5d
        -0x120d6fb
        -0x6923fa33
        -0x74c64abc
        -0x1cc56674
        0x5b3fecd4
        0x333cc01c
        0x60f48dc6
        0x8f7a10e
        -0x4f0d2baa
        -0x270e0762
        -0x3aebb7e9
        -0x52e89b21
        0x15121187
        0x7d113d4f
        0x0
        0x493c7d27
        -0x6d8705b2
        -0x24bb7897
        0x211d826d
        0x6821ff4a
        -0x4c9a87dd
        -0x5a6fafc
        0x423b04da
        0xb0779fd
        -0x2fbc016c
        -0x66807c4d
        0x632686b7
        0x2a1afb90
        -0xea18307
        -0x479dfe22
        -0x7b89f64c
        -0x32b58b6d    # -2.1228984E8f
        0x160ef3fa
        0x5f328edd
        -0x5a947427
        -0x13a80902
        0x37137197
        0x7e2f0cb0
        -0x39b2f292
        -0x708e8fb7
        0x5435f720
        0x1d098a07
        -0x18af70fd
        -0x51930ddc
        0x7528754d
        0x3c14086a
        0xd006599
        0x443c18be
        -0x60876029
        -0x29bb1d10
        0x2c1de7f4
        0x65219ad3
        -0x419ae246
        -0x8a69f63
        0x4f3b6143
        0x6071c64
        -0x22bc64f3
        -0x6b8019d6
        0x6e26e32e
        0x271a9e09
        -0x3a1e6a0
        -0x4a9d9bb9
        -0x768993d3
        -0x3fb5eef6
        0x1b0e9663
        0x5232eb44
        -0x579411c0
        -0x1ea86c99
        0x3a13140e
        0x732f6929
        -0x34b29709    # -1.3461751E7f
        -0x7d8eea30
        0x593592b9
        0x1009ef9e
        -0x15af1566
        -0x5c936843
        0x782810d4
        0x31146df3
        0x1a00cb32
        0x533cb615
        -0x7787ce84
        -0x3ebbb3a5
        0x3b1d495f    # 0.0024000031f
        0x72213478
        -0x569a4cef
        -0x1fa631ca
        0x583bcfe8
        0x1107b2cf
        -0x35bcca5a    # -3198313.5f
        -0x7c80b77f
        0x79264d85
        0x301a30a2
        -0x14a14835
        -0x5d9d3514
        -0x61893d7a
        -0x28b5405f
        0xc0e38c8
        0x453245ef
        -0x4094bf15
        -0x9a8c234
        0x2d13baa5
        0x642fc782
        -0x23b239a4
        -0x6a8e4485
        0x4e353c12    # 7.6015322E8f
        0x7094135
        -0x2afbbcf
        -0x4b93c6ea    # -2.199998E-7f
        0x6f28be7f
        0x2614c358
        0x1700aeab
        0x5e3cd38c
        -0x7a87ab1b
        -0x33bbd63e    # -5.1422984E7f
        0x361d2cc6
        0x7f2151e1
        -0x5b9a2978
        -0x12a65451
        0x553baa71
        0x1c07d756
        -0x38bcafc1    # -50000.246f
        -0x7180d2e8
        0x7426281c
        0x3d1a553b
        -0x19a12dae
        -0x509d508b
        -0x6c8958e1
        -0x25b525c8
        0x10e5d51
        0x48322076
        -0x4d94da8e
        -0x4a8a7ab
        0x2013df3c
        0x692fa21b
        -0x2eb25c3b
        -0x678e211e
        0x4335598b
        0xa0924ac
        -0xfafde58
        -0x4693a371
        0x6228dbe6
        0x2b14a6c1
        0x34019664
        0x7d3deb43
        -0x598693d6
        -0x10baeef3
        0x151c1409
        0x5c20692e
        -0x789b11b9
        -0x31a76ca0
        0x763a92be
        0x3f06ef99
        -0x1bbd9710
        -0x5281ea29
        0x572710d3
        0x1e1b6df4
        -0x3aa01563
        -0x739c6846
        -0x4f886030
        -0x6b41d09
        0x220f659e
        0x6b3318b9
        -0x6e95e243
        -0x27a99f66
        0x312e7f3
        0x4a2e9ad4    # 2860725.0f
        -0xdb364f6
        -0x448f19d3
        0x60346144
        0x29081c63
        -0x2caee699
        -0x65929bc0
        0x4129e329
        0x8159e0e
        0x3901f3fd
        0x703d8eda
        -0x5486f64d
        -0x1dba8b6c
        0x181c7190
        0x51200cb7
        -0x759b7422
        -0x3ca70907
        0x7b3af727
        0x32068a00
        -0x16bdf297
        -0x5f818fb2
        0x5a27754a
        0x131b086d
        -0x37a070fc
        -0x7e9c0ddd
        -0x428805b7
        -0xbb47892
        0x2f0f0007
        0x66337d20
        -0x639587dc
        -0x2aa9fafd
        0xe12826a
        0x472eff4d
        -0xb3016d
        -0x498f7c4c
        0x6d3404dd
        0x240879fa
        -0x21ae8302
        -0x6892fe27
        0x4c2986b0    # 4.4440256E7f
        0x515fb97
        0x2e015d56
        0x673d2071
        -0x438658e8
        -0xaba25c1
        0xf1cdf3b
        0x4620a21c
        -0x629bda8b
        -0x2ba7a7ae
        0x6c3a598c
        0x250624ab
        -0x1bd5c3e
        -0x4881211b
        0x4d27dbe1    # 1.76012816E8f
        0x41ba6c6
        -0x20a0de51
        -0x699ca378
        -0x5588ab1e
        -0x1cb4d63b
        0x380faeac
        0x7133d38b
        -0x74952971
        -0x3da95458
        0x19122cc1
        0x502e51e6
        -0x17b3afc8
        -0x5e8fd2e1
        0x7a34aa76
        0x3308d751
        -0x36ae2dab
        -0x7f92508e
        0x5b29281b
        0x1215553c
        0x230138cf
        0x6a3d45e8
        -0x4e863d7f
        -0x7ba405a
        0x21cbaa2
        0x4b20c785    # 1.0536837E7f
        -0x6f9bbf14
        -0x26a7c235
        0x613a3c15
        0x28064132
        -0xcbd39a5
        -0x45814484
        0x4027be78    # 2.6210003f
        0x91bc35f
        -0x2da0bbca
        -0x649cc6ef
        -0x5888ce85
        -0x11b4b3a4
        0x350fcb35
        0x7c33b612
        -0x79954cea
        -0x30a931cf
        0x14124958
        0x5d2e347f
        -0x1ab3ca5f
        -0x538fb77a
        0x7734cfef
        0x3e08b2c8
        -0x3bae4834
        -0x72923515
        0x56294d82
        0x1f1530a5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->reset()V

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 4

    .line 47
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    int-to-long v0, v0

    not-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    return-void
.end method

.method public final update(I)V
    .locals 3

    .line 100
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    ushr-int/lit8 v0, v0, 0x8

    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    xor-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x0

    add-int/2addr v2, p1

    aget p1, v1, v2

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 59
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    :goto_0
    const/4 v1, 0x7

    const/4 v2, 0x0

    if-le p3, v1, :cond_0

    add-int/lit8 v1, p2, 0x0

    .line 62
    aget-byte v1, p1, v1

    xor-int/2addr v1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p2, 0x1

    .line 63
    aget-byte v3, p1, v3

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x2

    .line 64
    aget-byte v4, p1, v4

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x3

    .line 65
    aget-byte v5, p1, v5

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 66
    sget-object v5, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v6, 0x700

    add-int/2addr v6, v1

    aget v1, v5, v6

    sget-object v5, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v6, 0x600

    add-int/2addr v6, v3

    aget v3, v5, v6

    xor-int/2addr v1, v3

    sget-object v3, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v5, 0x500

    add-int/2addr v5, v4

    aget v3, v3, v5

    sget-object v4, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v5, 0x400

    add-int/2addr v5, v0

    aget v0, v4, v5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    .line 69
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p2, 0x5

    .line 70
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x6

    .line 71
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x7

    .line 72
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 74
    sget-object v6, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v7, 0x300

    add-int/2addr v7, v1

    aget v1, v6, v7

    sget-object v6, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v7, 0x200

    add-int/2addr v7, v3

    aget v3, v6, v7

    xor-int/2addr v1, v3

    sget-object v3, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    const/16 v6, 0x100

    add-int/2addr v6, v4

    aget v3, v3, v6

    sget-object v4, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/2addr v2, v5

    aget v2, v4, v2

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p3, p3, -0x8

    goto :goto_0

    :cond_0
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    ushr-int/lit8 p3, v0, 0x8

    .line 83
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_1
    ushr-int/lit8 p3, v0, 0x8

    .line 84
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_2
    ushr-int/lit8 p3, v0, 0x8

    .line 85
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_3
    ushr-int/lit8 p3, v0, 0x8

    .line 86
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_4
    ushr-int/lit8 p3, v0, 0x8

    .line 87
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_5
    ushr-int/lit8 p3, v0, 0x8

    .line 88
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p2, v2

    aget p2, v1, p2

    xor-int v0, p3, p2

    move p2, v3

    :pswitch_6
    ushr-int/lit8 p3, v0, 0x8

    .line 89
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->T:[I

    aget-byte p1, p1, p2

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    aget p1, v1, v2

    xor-int v0, p3, p1

    .line 95
    :goto_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->crc:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
