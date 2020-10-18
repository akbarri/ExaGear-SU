.class final Lcom/google/android/gms/common/api/internal/zzdj;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzdh;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdj;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "TransformedResultImpl"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    const-string v0, "TransformedResultImpl"

    const-string v1, "Runtime exception on the transformation worker thread: "

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdj;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdh;->zzf(Lcom/google/android/gms/common/api/internal/zzdh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdj;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzdh;->zzg(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdh;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/zzct;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdj;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zzg(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdh;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzct;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzct;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdj;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zzg(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/PendingResult;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
