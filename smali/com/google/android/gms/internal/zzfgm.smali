.class public abstract Lcom/google/android/gms/internal/zzfgm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfjl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/zzfjc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfjl<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zzpns:Lcom/google/android/gms/internal/zzfhm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfhm;->zzczf()Lcom/google/android/gms/internal/zzfhm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfgm;->zzpns:Lcom/google/android/gms/internal/zzfhm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfgm;->zze(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzfjc;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfjc;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/zzfgj;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzfgj;

    new-instance v0, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/zzfgl;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzfgl;

    new-instance v0, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfkm;->zzdbz()Lcom/google/android/gms/internal/zzfie;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    throw p1

    :cond_2
    return-object p1
.end method
