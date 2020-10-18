.class final Lcom/google/android/gms/common/api/internal/zzr;
.super Lcom/google/android/gms/common/api/internal/zzby;


# instance fields
.field private synthetic zzfuz:Landroid/app/Dialog;

.field private synthetic zzfva:Lcom/google/android/gms/common/api/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzq;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzr;->zzfva:Lcom/google/android/gms/common/api/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzr;->zzfuz:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzby;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaio()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzr;->zzfva:Lcom/google/android/gms/common/api/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzq;->zzfuy:Lcom/google/android/gms/common/api/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzo;->zzail()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzr;->zzfuz:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzr;->zzfuz:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
