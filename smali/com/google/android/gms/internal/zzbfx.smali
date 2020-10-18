.class public Lcom/google/android/gms/internal/zzbfx;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static READ_PERMISSION:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"

.field private static final sLock:Ljava/lang/Object;

.field private static zzgby:Lcom/google/android/gms/internal/zzbgd;

.field private static zzgbz:I


# instance fields
.field private zzbkr:Ljava/lang/String;

.field private zzbks:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzgca:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbfx;->sLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbfx;->zzgca:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbfx;->zzbkr:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbfx;->zzbks:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzbfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbgb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbgb;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzbfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbga;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbga;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzbfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbfz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbfz;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbfy;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbfy;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbgc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbgc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
