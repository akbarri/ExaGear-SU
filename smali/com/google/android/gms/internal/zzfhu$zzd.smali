.class public abstract Lcom/google/android/gms/internal/zzfhu$zzd;
.super Lcom/google/android/gms/internal/zzfhu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/zzfhu$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzfhu<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# instance fields
.field protected zzppp:Lcom/google/android/gms/internal/zzfhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzfhq;->zzczj()Lcom/google/android/gms/internal/zzfhq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zzd;->zzppp:Lcom/google/android/gms/internal/zzfhq;

    return-void
.end method
