.class public abstract Lcom/google/android/gms/common/api/internal/zzcq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzgbb:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcq;->zzgbb:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final zzakx()Lcom/google/android/gms/common/api/internal/zzck;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/zzck<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcq;->zzgbb:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    return-object v0
.end method

.method public final zzaky()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcq;->zzgbb:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzci;->clear()V

    return-void
.end method

.method protected abstract zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
