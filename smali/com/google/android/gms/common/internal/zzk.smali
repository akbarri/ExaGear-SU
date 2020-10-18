.class public final Lcom/google/android/gms/common/internal/zzk;
.super Lcom/google/android/gms/common/internal/zzax;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private zzgfm:Lcom/google/android/gms/common/internal/zzd;

.field private final zzgfn:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzd;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzax;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfm:Lcom/google/android/gms/common/internal/zzd;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfn:I

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfm:Lcom/google/android/gms/common/internal/zzd;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfm:Lcom/google/android/gms/common/internal/zzd;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfn:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/zzd;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk;->zzgfm:Lcom/google/android/gms/common/internal/zzd;

    return-void
.end method
