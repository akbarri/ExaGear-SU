.class public abstract Lcom/google/android/gms/internal/zzbhp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/zzbhq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbhq<",
            "TI;TO;>;",
            "Ljava/lang/Object;",
            ")TI;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbhq;->zzc(Lcom/google/android/gms/internal/zzbhq;)Lcom/google/android/gms/internal/zzbhr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbhq;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzbhq;Ljava/lang/Object;)V
    .locals 2

    iget v0, p1, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbhp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbhp;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/util/zzq;->zzha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzbhq;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/zzbhq;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/zzbhp;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzbhq;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbhp;->zzabz()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbhq;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzbhp;->zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzbhp;->zza(Lcom/google/android/gms/internal/zzbhq;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "{"

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v6, ","

    goto :goto_1

    :goto_2
    const-string v6, "\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    const-string v3, "null"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v3, v4, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    packed-switch v3, :pswitch_data_0

    iget-boolean v3, v4, Lcom/google/android/gms/internal/zzbhq;->zzgip:Z

    if-eqz v3, :cond_3

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzbhp;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzbhq;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_0
    check-cast v5, Ljava/util/HashMap;

    invoke-static {v1, v5}, Lcom/google/android/gms/common/util/zzr;->zza(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_1
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [B

    invoke-static {v5}, Lcom/google/android/gms/common/util/zzc;->zzk([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :pswitch_2
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, [B

    invoke-static {v5}, Lcom/google/android/gms/common/util/zzc;->zzj([B)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    goto :goto_3

    :cond_3
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/zzbhp;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzbhq;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "}"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    const-string v0, "{}"

    goto :goto_5

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbhq;)Z
    .locals 2

    iget v0, p1, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Concrete type arrays not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Concrete types not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbhp;->zzgy(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract zzabz()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;>;"
        }
    .end annotation
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzbhq;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbhp;->zzgx(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Concrete field shouldn\'t be value object: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "get"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbhp;->zzgx(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzgx(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract zzgy(Ljava/lang/String;)Z
.end method
