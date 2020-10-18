.class final Lcom/google/android/gms/common/api/internal/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfux:Lcom/google/android/gms/common/api/internal/zzp;

.field final synthetic zzfuy:Lcom/google/android/gms/common/api/internal/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzo;Lcom/google/android/gms/common/api/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfux:Lcom/google/android/gms/common/api/internal/zzp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/zzo;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfux:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzp;->zzain()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzo;->zzgam:Lcom/google/android/gms/common/api/internal/zzcf;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfux:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zzp;->zzaim()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zza(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zzcf;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzo;->zzftg:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zzf;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zzo;->zzftg:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zzo;->zzgam:Lcom/google/android/gms/common/api/internal/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/zzcf;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzr;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/zzr;-><init>(Lcom/google/android/gms/common/api/internal/zzq;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zzby;)Lcom/google/android/gms/common/api/internal/zzbx;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzq;->zzfux:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzp;->zzaim()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zzo;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
