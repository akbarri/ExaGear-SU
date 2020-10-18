.class public final Lcom/google/android/gms/internal/zzfhu$zzb;
.super Lcom/google/android/gms/internal/zzfgm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/zzfhu<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/zzfgm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzppk:Lcom/google/android/gms/internal/zzfhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfhu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhu$zzb;->zzppk:Lcom/google/android/gms/internal/zzfhu;

    return-void
.end method


# virtual methods
.method public final synthetic zze(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zzb;->zzppk:Lcom/google/android/gms/internal/zzfhu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object p1

    return-object p1
.end method
