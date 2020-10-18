.class public abstract Lcom/google/android/gms/internal/zzcce;
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


# instance fields
.field private final zzbkq:I

.field private final zzbkr:Ljava/lang/String;

.field private final zzbks:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcce;->zzbkq:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcce;->zzbkr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcce;->zzbks:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzccp;->zzasn()Lcom/google/android/gms/internal/zzcck;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzcck;->zza(Lcom/google/android/gms/internal/zzcce;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzccf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcce;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzccg;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/zzccg;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzccg;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public static zzb(ILjava/lang/String;I)Lcom/google/android/gms/internal/zzcch;
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/zzcch;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzcch;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static zzb(ILjava/lang/String;J)Lcom/google/android/gms/internal/zzcci;
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/zzcci;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzcci;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcce;->zzbkr:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzcce;->zzbkq:I

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzccm;)Ljava/lang/Object;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzccm;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzje()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcce;->zzbks:Ljava/lang/Object;

    return-object v0
.end method
