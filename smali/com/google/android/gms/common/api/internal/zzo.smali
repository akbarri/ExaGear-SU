.class public abstract Lcom/google/android/gms/common/api/internal/zzo;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile mStarted:Z

.field protected final zzftg:Lcom/google/android/gms/common/GoogleApiAvailability;

.field protected final zzfut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfuu:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zzcf;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzo;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzcf;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfuu:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzftg:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/internal/zzp;)I
    .locals 0
    .param p0    # Lcom/google/android/gms/common/api/internal/zzp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzp;->zzaim()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzftg:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/zzf;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_5

    if-ne p1, p3, :cond_5

    return-void

    :pswitch_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    const/16 p1, 0xd

    if-eqz p3, :cond_3

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_3
    new-instance p2, Lcom/google/android/gms/common/api/internal/zzp;

    new-instance p3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzo;->zza(Lcom/google/android/gms/common/api/internal/zzp;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zzp;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p2

    :cond_4
    :goto_1
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzo;->zzail()V

    return-void

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzaim()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzo;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzp;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzo;->zza(Lcom/google/android/gms/common/api/internal/zzp;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzo;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzo;->zzail()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "resolving_error"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "failed_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "failed_client_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzp;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/common/api/internal/zzp;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzp;

    if-eqz v0, :cond_0

    const-string v1, "resolving_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "failed_client_id"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzaim()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "failed_status"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "failed_resolution"

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->mStarted:Z

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method protected abstract zzaih()V
.end method

.method protected final zzail()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzo;->zzaih()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzp;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzo;->zzfuu:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zzq;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/common/api/internal/zzq;-><init>(Lcom/google/android/gms/common/api/internal/zzo;Lcom/google/android/gms/common/api/internal/zzp;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
