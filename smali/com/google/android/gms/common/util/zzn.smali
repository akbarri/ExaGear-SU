.class public final Lcom/google/android/gms/common/util/zzn;
.super Ljava/lang/Object;


# direct methods
.method public static zza([BIIZ)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_7

    array-length p1, p0

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    array-length p1, p0

    if-le p2, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 p1, 0x39

    add-int/lit8 p3, p2, 0x10

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    const/16 v1, 0x10

    div-int/2addr p3, v1

    mul-int/2addr p1, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p1, 0x0

    move v3, p1

    move v4, v3

    move v2, p2

    :goto_0
    if-lez v2, :cond_6

    if-nez v3, :cond_2

    const/high16 v5, 0x10000

    if-ge p2, v5, :cond_1

    const-string v5, "%04X:"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p1

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v5, "%08X:"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p1

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    const-string v5, " -"

    goto :goto_2

    :cond_3
    :goto_3
    const-string v5, " %02X"

    new-array v6, v0, [Ljava/lang/Object;

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    const/16 v3, 0xa

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, p1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method
