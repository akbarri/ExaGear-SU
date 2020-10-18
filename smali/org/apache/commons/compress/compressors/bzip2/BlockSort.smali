.class Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 581
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 132
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 133
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 134
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    const/16 v0, 0x100

    .line 136
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 137
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 138
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    const v0, 0x10001

    .line 140
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 150
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 350
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-wide v8, v4

    move v7, v6

    :goto_0
    if-lez v7, :cond_c

    add-int/lit8 v7, v7, -0x1

    .line 353
    invoke-direct {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    move-result-object v10

    .line 354
    aget v11, v10, v3

    aget v10, v10, v6

    sub-int v12, v10, v11

    const/16 v13, 0xa

    if-ge v12, v13, :cond_0

    .line 357
    invoke-direct {v0, v1, v2, v11, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x1dc5

    mul-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const-wide/32 v14, 0x8000

    .line 368
    rem-long/2addr v8, v14

    const-wide/16 v14, 0x3

    .line 369
    rem-long v14, v8, v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_1

    .line 372
    aget v12, v1, v11

    aget v12, v2, v12

    int-to-long v12, v12

    goto :goto_1

    :cond_1
    cmp-long v12, v14, v12

    if-nez v12, :cond_2

    add-int v12, v11, v10

    ushr-int/2addr v12, v6

    .line 374
    aget v12, v1, v12

    aget v12, v2, v12

    int-to-long v12, v12

    goto :goto_1

    .line 376
    :cond_2
    aget v12, v1, v10

    aget v12, v2, v12

    int-to-long v12, v12

    :goto_1
    move v15, v10

    move/from16 v16, v15

    move v3, v11

    move v14, v3

    :goto_2
    if-le v14, v15, :cond_3

    goto :goto_4

    .line 389
    :cond_3
    aget v17, v1, v14

    aget v17, v2, v17

    long-to-int v4, v12

    sub-int v17, v17, v4

    if-nez v17, :cond_4

    .line 391
    invoke-direct {v0, v1, v14, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v14, v14, 0x1

    :goto_3
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_4
    if-lez v17, :cond_b

    :goto_4
    move/from16 v4, v16

    :goto_5
    if-le v14, v15, :cond_5

    goto :goto_6

    .line 404
    :cond_5
    aget v5, v1, v15

    aget v5, v2, v5

    long-to-int v6, v12

    sub-int/2addr v5, v6

    if-nez v5, :cond_6

    .line 406
    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    if-gez v5, :cond_a

    :goto_6
    if-le v14, v15, :cond_9

    if-ge v4, v3, :cond_7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    sub-int v5, v3, v11

    sub-int v6, v14, v3

    .line 425
    invoke-direct {v0, v5, v6}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v5

    sub-int v6, v14, v5

    .line 426
    invoke-direct {v0, v1, v11, v6, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    sub-int v5, v10, v4

    sub-int/2addr v4, v15

    .line 427
    invoke-direct {v0, v5, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v5

    add-int/lit8 v15, v15, 0x1

    sub-int v6, v10, v5

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 428
    invoke-direct {v0, v1, v15, v6, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    add-int/2addr v14, v11

    sub-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x1

    sub-int v3, v10, v4

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v14, v11

    sub-int v5, v10, v3

    if-le v4, v5, :cond_8

    add-int/lit8 v4, v7, 0x1

    .line 434
    invoke-direct {v0, v7, v11, v14}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v5, v4, 0x1

    .line 435
    invoke-direct {v0, v4, v3, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v5

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 437
    invoke-direct {v0, v7, v3, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v3, v4, 0x1

    .line 438
    invoke-direct {v0, v4, v11, v14}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v3

    :goto_7
    move/from16 v6, v17

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x1

    .line 418
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v4

    move/from16 v6, v17

    goto :goto_3

    :cond_a
    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v6, v17

    goto :goto_5

    :cond_b
    move/from16 v17, v6

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    add-int/lit8 v0, p4, -0x4

    :goto_0
    if-lt v0, p3, :cond_2

    .line 278
    aget v1, p1, v0

    .line 279
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x4

    :goto_1
    if-gt v3, p4, :cond_1

    .line 280
    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_1

    add-int/lit8 v4, v3, -0x4

    .line 282
    aget v5, p1, v3

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x4

    .line 284
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p4, -0x1

    :goto_2
    if-lt v0, p3, :cond_4

    .line 289
    aget v1, p1, v0

    .line 290
    aget v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    :goto_3
    if-gt v3, p4, :cond_3

    .line 291
    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 292
    aget v5, p1, v3

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 294
    aput v1, p1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private fmin(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private fpop(I)[I
    .locals 3

    const/4 v0, 0x2

    .line 329
    new-array v0, v0, [I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aget p1, v1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method private fpush(III)V
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 325
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aput p3, p2, p1

    return-void
.end method

.method private fswap([III)V
    .locals 2

    .line 304
    aget v0, p1, p2

    .line 305
    aget v1, p1, p3

    aput v1, p1, p2

    .line 306
    aput v0, p1, p3

    return-void
.end method

.method private fvswap([IIII)V
    .locals 0

    :goto_0
    if-lez p4, :cond_0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    :goto_0
    return-object v0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 808
    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 809
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 810
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 811
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 812
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    const/4 v0, 0x0

    .line 814
    aput p2, v8, v0

    .line 815
    aput p3, v9, v0

    .line 816
    aput p4, v10, v0

    const/4 v13, 0x1

    move v0, v13

    :goto_0
    add-int/lit8 v14, v0, -0x1

    if-ltz v14, :cond_c

    .line 819
    aget v2, v8, v14

    .line 820
    aget v3, v9, v14

    .line 821
    aget v4, v10, v14

    sub-int v0, v3, v2

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    const/16 v0, 0xa

    if-le v4, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v0, v4, 0x1

    .line 829
    aget v1, v11, v2

    add-int/2addr v1, v0

    aget-byte v1, v12, v1

    aget v5, v11, v3

    add-int/2addr v5, v0

    aget-byte v5, v12, v5

    add-int v15, v2, v3

    ushr-int/2addr v15, v13

    aget v15, v11, v15

    add-int/2addr v15, v0

    aget-byte v15, v12, v15

    invoke-static {v1, v5, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v5, v2

    move v13, v5

    move v15, v3

    move/from16 v16, v15

    :goto_1
    if-gt v5, v15, :cond_2

    .line 839
    aget v17, v11, v5

    add-int v17, v17, v0

    move/from16 v18, v15

    aget-byte v15, v12, v17

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v15, v1

    if-nez v15, :cond_1

    .line 842
    aget v15, v11, v5

    add-int/lit8 v17, v5, 0x1

    .line 843
    aget v19, v11, v13

    aput v19, v11, v5

    add-int/lit8 v5, v13, 0x1

    .line 844
    aput v15, v11, v13

    move v13, v5

    move/from16 v5, v17

    goto :goto_2

    :cond_1
    if-gez v15, :cond_3

    add-int/lit8 v5, v5, 0x1

    :goto_2
    move/from16 v15, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v15

    :cond_3
    move/from16 v7, v16

    move/from16 v15, v18

    :goto_3
    if-gt v5, v15, :cond_5

    .line 853
    aget v16, v11, v15

    add-int v16, v16, v0

    aget-byte v6, v12, v16

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v1

    if-nez v6, :cond_4

    .line 856
    aget v6, v11, v15

    add-int/lit8 v16, v15, -0x1

    .line 857
    aget v17, v11, v7

    aput v17, v11, v15

    add-int/lit8 v15, v7, -0x1

    .line 858
    aput v6, v11, v7

    move v7, v15

    move/from16 v15, v16

    goto :goto_4

    :cond_4
    if-lez v6, :cond_5

    add-int/lit8 v15, v15, -0x1

    :goto_4
    move-object/from16 v6, p0

    goto :goto_3

    :cond_5
    if-gt v5, v15, :cond_6

    .line 867
    aget v6, v11, v5

    add-int/lit8 v16, v5, 0x1

    .line 868
    aget v17, v11, v15

    aput v17, v11, v5

    add-int/lit8 v5, v15, -0x1

    .line 869
    aput v6, v11, v15

    move v15, v5

    move/from16 v5, v16

    move-object/from16 v6, p0

    move/from16 v16, v7

    move-object/from16 v7, p1

    goto :goto_1

    :cond_6
    if-ge v7, v13, :cond_7

    .line 876
    aput v2, v8, v14

    .line 877
    aput v3, v9, v14

    .line 878
    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    const/4 v15, 0x1

    goto :goto_9

    :cond_7
    sub-int v1, v13, v2

    sub-int v6, v5, v13

    if-ge v1, v6, :cond_8

    goto :goto_5

    :cond_8
    move v1, v6

    :goto_5
    sub-int v6, v5, v1

    .line 883
    invoke-static {v11, v2, v6, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    sub-int v1, v3, v7

    sub-int v6, v7, v15

    if-ge v1, v6, :cond_9

    goto :goto_6

    :cond_9
    move v1, v6

    :goto_6
    sub-int v7, v3, v1

    const/4 v15, 0x1

    add-int/2addr v7, v15

    .line 886
    invoke-static {v11, v5, v7, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    add-int/2addr v5, v2

    sub-int/2addr v5, v13

    sub-int/2addr v5, v15

    sub-int v1, v3, v6

    add-int/2addr v1, v15

    .line 891
    aput v2, v8, v14

    .line 892
    aput v5, v9, v14

    .line 893
    aput v4, v10, v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v5, v15

    .line 896
    aput v5, v8, v14

    add-int/lit8 v2, v1, -0x1

    .line 897
    aput v2, v9, v14

    .line 898
    aput v0, v10, v14

    add-int/2addr v14, v15

    .line 901
    aput v1, v8, v14

    .line 902
    aput v3, v9, v14

    .line 903
    aput v4, v10, v14

    add-int/2addr v14, v15

    goto :goto_8

    :cond_a
    :goto_7
    move v15, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    .line 824
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    :goto_8
    move v0, v14

    :goto_9
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v15

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    sub-int v5, v3, p2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v8, 0x2

    if-ge v5, v8, :cond_1

    .line 600
    iget-boolean v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    const/4 v8, 0x0

    .line 604
    :goto_1
    sget-object v9, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v9, v9, v8

    if-ge v9, v5, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 608
    :cond_2
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 609
    iget-object v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 610
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v11, p5, 0x1

    .line 612
    iget-boolean v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 613
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 614
    iget v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_1a

    .line 620
    sget-object v15, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v15, v15, v8

    add-int v16, p2, v15

    add-int/lit8 v6, v16, -0x1

    move/from16 v30, v16

    move/from16 v16, v14

    move/from16 v14, v30

    :goto_3
    if-gt v14, v3, :cond_19

    const/16 v18, 0x3

    move/from16 v7, v16

    :goto_4
    if-gt v14, v3, :cond_17

    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_17

    .line 626
    aget v16, v5, v14

    add-int v19, v16, p4

    move/from16 v22, v7

    move/from16 v20, v14

    const/4 v7, 0x0

    const/16 v21, 0x0

    :goto_5
    if-eqz v7, :cond_6

    .line 645
    aput v21, v5, v20

    sub-int v2, v20, v15

    if-gt v2, v6, :cond_5

    move/from16 v20, v2

    move/from16 v25, v6

    move/from16 v27, v8

    :cond_3
    move/from16 v29, v15

    :cond_4
    move/from16 v7, v22

    goto/16 :goto_a

    :cond_5
    move/from16 v20, v2

    goto :goto_6

    :cond_6
    const/4 v7, 0x1

    :goto_6
    sub-int v2, v20, v15

    .line 653
    aget v21, v5, v2

    add-int v2, v21, p4

    add-int/lit8 v23, v2, 0x1

    .line 659
    aget-byte v4, v1, v23

    add-int/lit8 v24, v19, 0x1

    move/from16 v25, v6

    aget-byte v6, v1, v24

    if-ne v4, v6, :cond_16

    add-int/lit8 v4, v2, 0x2

    .line 660
    aget-byte v6, v1, v4

    add-int/lit8 v23, v19, 0x2

    move/from16 v26, v7

    aget-byte v7, v1, v23

    if-ne v6, v7, :cond_15

    add-int/lit8 v4, v2, 0x3

    .line 661
    aget-byte v6, v1, v4

    add-int/lit8 v7, v19, 0x3

    move/from16 v27, v8

    aget-byte v8, v1, v7

    if-ne v6, v8, :cond_14

    add-int/lit8 v4, v2, 0x4

    .line 662
    aget-byte v6, v1, v4

    add-int/lit8 v7, v19, 0x4

    aget-byte v8, v1, v7

    if-ne v6, v8, :cond_13

    add-int/lit8 v4, v2, 0x5

    .line 663
    aget-byte v6, v1, v4

    add-int/lit8 v7, v19, 0x5

    aget-byte v8, v1, v7

    if-ne v6, v8, :cond_12

    add-int/lit8 v2, v2, 0x6

    .line 664
    aget-byte v4, v1, v2

    add-int/lit8 v6, v19, 0x6

    aget-byte v7, v1, v6

    if-ne v4, v7, :cond_11

    move v4, v2

    move/from16 v2, p5

    :goto_7
    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v7, v4, 0x1

    .line 669
    aget-byte v8, v1, v7

    add-int/lit8 v23, v6, 0x1

    move/from16 v28, v2

    aget-byte v2, v1, v23

    if-ne v8, v2, :cond_10

    .line 670
    aget-char v2, v9, v4

    aget-char v8, v9, v6

    if-ne v2, v8, :cond_f

    add-int/lit8 v2, v4, 0x2

    .line 671
    aget-byte v8, v1, v2

    add-int/lit8 v24, v6, 0x2

    aget-byte v10, v1, v24

    if-ne v8, v10, :cond_e

    .line 672
    aget-char v8, v9, v7

    aget-char v10, v9, v23

    if-ne v8, v10, :cond_d

    add-int/lit8 v7, v4, 0x3

    .line 673
    aget-byte v8, v1, v7

    add-int/lit8 v10, v6, 0x3

    move/from16 v29, v15

    aget-byte v15, v1, v10

    if-ne v8, v15, :cond_c

    .line 674
    aget-char v8, v9, v2

    aget-char v15, v9, v24

    if-ne v8, v15, :cond_b

    add-int/lit8 v4, v4, 0x4

    .line 675
    aget-byte v2, v1, v4

    add-int/lit8 v6, v6, 0x4

    aget-byte v8, v1, v6

    if-ne v2, v8, :cond_a

    .line 676
    aget-char v2, v9, v7

    aget-char v8, v9, v10

    if-ne v2, v8, :cond_9

    if-lt v4, v11, :cond_7

    sub-int/2addr v4, v11

    :cond_7
    if-lt v6, v11, :cond_8

    sub-int/2addr v6, v11

    :cond_8
    add-int/lit8 v22, v22, 0x1

    move/from16 v2, v28

    move/from16 v15, v29

    goto :goto_7

    .line 685
    :cond_9
    aget-char v2, v9, v7

    aget-char v4, v9, v10

    if-le v2, v4, :cond_4

    goto :goto_8

    .line 690
    :cond_a
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v6

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_8

    .line 695
    :cond_b
    aget-char v2, v9, v2

    aget-char v4, v9, v24

    if-le v2, v4, :cond_4

    goto :goto_8

    .line 700
    :cond_c
    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v10

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_8

    :cond_d
    move/from16 v29, v15

    .line 705
    aget-char v2, v9, v7

    aget-char v4, v9, v23

    if-le v2, v4, :cond_4

    goto :goto_8

    :cond_e
    move/from16 v29, v15

    .line 710
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v24

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_8

    :cond_f
    move/from16 v29, v15

    .line 715
    aget-char v2, v9, v4

    aget-char v4, v9, v6

    if-le v2, v4, :cond_4

    goto :goto_8

    :cond_10
    move/from16 v29, v15

    .line 720
    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v23

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    :goto_8
    goto :goto_9

    :cond_11
    move/from16 v29, v15

    .line 729
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v6

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_9

    :cond_12
    move/from16 v29, v15

    .line 733
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_9

    :cond_13
    move/from16 v29, v15

    .line 738
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_9

    :cond_14
    move/from16 v29, v15

    .line 743
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v7

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_9

    :cond_15
    move/from16 v27, v8

    move/from16 v29, v15

    .line 748
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v23

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    goto :goto_9

    :cond_16
    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v29, v15

    .line 753
    aget-byte v2, v1, v23

    and-int/lit16 v2, v2, 0xff

    aget-byte v4, v1, v24

    and-int/lit16 v4, v4, 0xff

    if-le v2, v4, :cond_4

    :goto_9
    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v15, v29

    goto/16 :goto_5

    .line 762
    :goto_a
    aput v16, v5, v20

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v25

    move/from16 v8, v27

    move/from16 v15, v29

    goto/16 :goto_4

    :cond_17
    move/from16 v25, v6

    move/from16 v27, v8

    move/from16 v29, v15

    if-eqz v12, :cond_18

    if-gt v14, v3, :cond_18

    if-le v7, v13, :cond_18

    move v14, v7

    goto :goto_b

    :cond_18
    move/from16 v16, v7

    move/from16 v6, v25

    move/from16 v8, v27

    move/from16 v15, v29

    goto/16 :goto_3

    :cond_19
    move/from16 v27, v8

    move/from16 v14, v16

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 772
    :cond_1a
    :goto_b
    iput v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-eqz v12, :cond_1b

    if-le v14, v13, :cond_1b

    const/16 v17, 0x1

    goto :goto_c

    :cond_1b
    const/16 v17, 0x0

    :goto_c
    return v17
.end method

.method private static med3(BBB)B
    .locals 0

    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move p0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move p0, p2

    :cond_3
    :goto_2
    return p0
.end method

.method private static vswap([IIII)V
    .locals 3

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 787
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 788
    aget v2, p0, p2

    aput v2, p0, p1

    add-int/lit8 p1, p2, 0x1

    .line 789
    aput v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3

    const/16 v0, 0x1e

    mul-int/2addr v0, p2

    .line 154
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 163
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 168
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    const/4 v2, -0x1

    .line 169
    iput v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    :goto_1
    if-gt v0, p2, :cond_3

    .line 171
    aget v2, v1, v0

    if-nez v2, :cond_2

    .line 172
    iput v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method final fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 5

    .line 187
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 188
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_0

    .line 190
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 193
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 194
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aput p2, p1, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .locals 10

    const/16 v0, 0x101

    .line 472
    new-array v1, v0, [I

    .line 476
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p3, :cond_0

    .line 479
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, p3, :cond_1

    .line 486
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_2

    .line 489
    aget v6, v1, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, p3, :cond_3

    .line 493
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    .line 494
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 495
    aput v6, v1, v4

    .line 496
    aput v0, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/16 p2, 0x40

    add-int/2addr p2, p3

    .line 500
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move p2, v3

    :goto_4
    const/16 v4, 0x100

    if-ge p2, v4, :cond_4

    .line 502
    aget v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    move p2, v3

    :goto_5
    const/16 v1, 0x20

    if-ge p2, v1, :cond_5

    const/4 v1, 0x2

    mul-int/2addr v1, p2

    add-int/2addr v1, p3

    .line 513
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/2addr v1, v5

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    move p2, v5

    :cond_6
    move v1, v3

    move v4, v1

    :goto_6
    if-ge v1, p3, :cond_9

    .line 523
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v1

    .line 526
    :cond_7
    aget v6, p1, v1

    sub-int/2addr v6, p2

    if-gez v6, :cond_8

    add-int/2addr v6, p3

    .line 530
    :cond_8
    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, -0x1

    move v4, v1

    move v6, v3

    :cond_a
    add-int/2addr v4, v5

    .line 539
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lt v7, p3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 544
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_d

    :goto_7
    mul-int/lit8 p2, p2, 0x2

    if-gt p2, p3, :cond_c

    if-nez v6, :cond_6

    :cond_c
    return-void

    :cond_d
    if-le v4, v7, :cond_a

    sub-int v8, v4, v7

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 553
    invoke-direct {p0, p1, v2, v7, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v8, v1

    :goto_8
    if-gt v7, v4, :cond_a

    .line 558
    aget v9, p1, v7

    aget v9, v2, v9

    if-eq v8, v9, :cond_e

    .line 560
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v9

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8
.end method

.method final mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 915
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 916
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 917
    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 918
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 919
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 920
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 921
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 922
    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 923
    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    const v0, 0x10001

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v16, 0x0

    if-ltz v0, :cond_0

    .line 927
    aput v16, v12, v0

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_1
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_1

    add-int v1, v8, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v8, 0x1

    .line 936
    rem-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v2, v13, v3

    aput-byte v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x14

    add-int/2addr v0, v2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 939
    aput-char v16, v15, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v8, 0x1

    .line 941
    aget-byte v1, v13, v0

    aput-byte v1, v13, v16

    .line 945
    aget-byte v1, v13, v16

    move/from16 v17, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    move/from16 v18, v1

    move/from16 v1, v16

    :goto_3
    if-gt v1, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 947
    aget-byte v3, v13, v1

    and-int/2addr v3, v4

    shl-int/lit8 v18, v18, 0x8

    add-int v18, v18, v3

    .line 948
    aget v20, v12, v18

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v18

    move/from16 v18, v3

    const/16 v3, 0x14

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_4
    const/high16 v3, 0x10000

    if-gt v1, v3, :cond_4

    .line 953
    aget v3, v12, v1

    add-int/lit8 v18, v1, -0x1

    aget v18, v12, v18

    add-int v3, v3, v18

    aput v3, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 956
    :cond_4
    aget-byte v1, v13, v2

    and-int/2addr v1, v4

    move v3, v1

    move/from16 v1, v16

    :goto_5
    if-ge v1, v8, :cond_5

    add-int/lit8 v18, v1, 0x2

    .line 958
    aget-byte v2, v13, v18

    and-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    .line 959
    aget v18, v12, v3

    const/16 v20, 0x1

    add-int/lit8 v18, v18, -0x1

    aput v18, v12, v3

    aput v1, v14, v18

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move/from16 v2, v20

    goto :goto_5

    :cond_5
    move/from16 v20, v2

    .line 963
    aget-byte v0, v13, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v13, v20

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    aget v1, v12, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v12, v0

    aput v8, v14, v1

    const/16 v18, 0x100

    move/from16 v0, v18

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 970
    aput-boolean v16, v11, v0

    .line 971
    aput v0, v9, v0

    goto :goto_6

    :cond_6
    const/16 v0, 0x16c

    :cond_7
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 975
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_7
    if-gt v1, v4, :cond_7

    .line 977
    aget v2, v9, v1

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    .line 978
    aget v3, v12, v3

    shl-int/lit8 v20, v2, 0x8

    aget v20, v12, v20

    sub-int v3, v3, v20

    add-int/lit8 v4, v0, -0x1

    sub-int v20, v1, v0

    .line 981
    aget v20, v9, v20

    move/from16 v23, v1

    :goto_8
    add-int/lit8 v24, v20, 0x1

    shl-int/lit8 v24, v24, 0x8

    aget v24, v12, v24

    shl-int/lit8 v25, v20, 0x8

    aget v25, v12, v25

    move/from16 v26, v5

    sub-int v5, v24, v25

    if-le v5, v3, :cond_9

    .line 983
    aput v20, v9, v23

    sub-int v5, v23, v0

    if-gt v5, v4, :cond_8

    goto :goto_9

    :cond_8
    sub-int v20, v5, v0

    .line 981
    aget v20, v9, v20

    move/from16 v23, v5

    move/from16 v5, v26

    goto :goto_8

    :cond_9
    move/from16 v5, v23

    .line 989
    :goto_9
    aput v2, v9, v5

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v26

    const/16 v4, 0xff

    goto :goto_7

    :cond_a
    move/from16 v26, v5

    move/from16 v5, v16

    :goto_a
    if-gt v5, v4, :cond_17

    .line 1000
    aget v20, v9, v5

    move/from16 v3, v16

    :goto_b
    const/high16 v2, 0x200000

    const v0, -0x200001

    if-gt v3, v4, :cond_e

    shl-int/lit8 v1, v20, 0x8

    add-int v22, v1, v3

    .line 1011
    aget v23, v12, v22

    and-int v1, v23, v2

    if-eq v1, v2, :cond_d

    and-int v1, v23, v0

    add-int/lit8 v24, v22, 0x1

    .line 1014
    aget v24, v12, v24

    and-int v0, v24, v0

    const/16 v21, 0x1

    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_b

    const/16 v24, 0x2

    move/from16 v25, v0

    move-object v0, v6

    move/from16 v27, v1

    move-object v1, v7

    move/from16 v28, v2

    move/from16 v2, v27

    move/from16 v19, v3

    const/16 v7, 0x14

    move/from16 v3, v25

    move v7, v4

    move/from16 v4, v24

    move-object/from16 v29, v9

    move/from16 v7, v26

    move v9, v5

    move v5, v8

    .line 1016
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    if-eqz v17, :cond_c

    .line 1017
    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_c

    return-void

    :cond_b
    move/from16 v28, v2

    move/from16 v19, v3

    move-object/from16 v29, v9

    move/from16 v7, v26

    move v9, v5

    :cond_c
    or-int v0, v23, v28

    .line 1022
    aput v0, v12, v22

    goto :goto_c

    :cond_d
    move/from16 v19, v3

    move-object/from16 v29, v9

    move/from16 v7, v26

    const/16 v21, 0x1

    move v9, v5

    :goto_c
    add-int/lit8 v3, v19, 0x1

    move/from16 v26, v7

    move v5, v9

    move-object/from16 v9, v29

    const/16 v4, 0xff

    move-object/from16 v7, p1

    goto :goto_b

    :cond_e
    move/from16 v28, v2

    move-object/from16 v29, v9

    move/from16 v7, v26

    const/16 v21, 0x1

    move v9, v5

    move v2, v4

    move/from16 v1, v16

    :goto_d
    if-gt v1, v2, :cond_f

    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v20

    .line 1031
    aget v2, v12, v2

    and-int/2addr v2, v0

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    goto :goto_d

    :cond_f
    shl-int/lit8 v1, v20, 0x8

    .line 1034
    aget v2, v12, v1

    and-int/2addr v2, v0

    add-int/lit8 v3, v20, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v4, v12, v3

    and-int/2addr v4, v0

    :goto_e
    if-ge v2, v4, :cond_12

    .line 1035
    aget v5, v14, v2

    .line 1036
    aget-byte v0, v13, v5

    move/from16 v30, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 1037
    aget-boolean v4, v11, v0

    if-nez v4, :cond_11

    .line 1038
    aget v4, v10, v0

    if-nez v5, :cond_10

    move v5, v8

    goto :goto_f

    :cond_10
    add-int/lit8 v5, v5, -0x1

    :goto_f
    aput v5, v14, v4

    .line 1039
    aget v4, v10, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v30

    const v0, -0x200001

    goto :goto_e

    :cond_12
    move/from16 v0, v18

    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    shl-int/lit8 v2, v0, 0x8

    add-int v2, v2, v20

    .line 1044
    aget v4, v12, v2

    or-int v4, v4, v28

    aput v4, v12, v2

    goto :goto_10

    .line 1055
    :cond_13
    aput-boolean v21, v11, v20

    const/16 v0, 0xff

    if-ge v9, v0, :cond_16

    .line 1058
    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    .line 1059
    aget v3, v12, v3

    and-int/2addr v2, v3

    sub-int/2addr v2, v1

    move/from16 v3, v16

    :goto_11
    shr-int v4, v2, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_14
    move/from16 v4, v16

    :goto_12
    if-ge v4, v2, :cond_16

    add-int v5, v1, v4

    .line 1067
    aget v5, v14, v5

    shr-int v0, v4, v3

    int-to-char v0, v0

    .line 1069
    aput-char v0, v15, v5

    move/from16 v31, v1

    const/16 v1, 0x14

    if-ge v5, v1, :cond_15

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 1071
    aput-char v0, v15, v5

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v31

    const/16 v0, 0xff

    goto :goto_12

    :cond_16
    const/16 v1, 0x14

    add-int/lit8 v5, v9, 0x1

    move/from16 v26, v7

    move-object/from16 v9, v29

    const/16 v4, 0xff

    move-object/from16 v7, p1

    goto/16 :goto_a

    :cond_17
    return-void
.end method
