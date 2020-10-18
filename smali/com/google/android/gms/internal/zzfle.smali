.class abstract enum Lcom/google/android/gms/internal/zzfle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzfle;",
        ">;"
    }
.end annotation


# static fields
.field private static enum zzpve:Lcom/google/android/gms/internal/zzfle;

.field public static final enum zzpvf:Lcom/google/android/gms/internal/zzfle;

.field private static enum zzpvg:Lcom/google/android/gms/internal/zzfle;

.field private static final synthetic zzpvh:[Lcom/google/android/gms/internal/zzfle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzflf;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzflf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfle;->zzpve:Lcom/google/android/gms/internal/zzfle;

    new-instance v0, Lcom/google/android/gms/internal/zzflg;

    const-string v1, "STRICT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzflg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfle;->zzpvf:Lcom/google/android/gms/internal/zzfle;

    new-instance v0, Lcom/google/android/gms/internal/zzflh;

    const-string v1, "LAZY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzflh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfle;->zzpvg:Lcom/google/android/gms/internal/zzfle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/zzfle;

    sget-object v1, Lcom/google/android/gms/internal/zzfle;->zzpve:Lcom/google/android/gms/internal/zzfle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzfle;->zzpvf:Lcom/google/android/gms/internal/zzfle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzfle;->zzpvg:Lcom/google/android/gms/internal/zzfle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/zzfle;->zzpvh:[Lcom/google/android/gms/internal/zzfle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzfkx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfle;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzfle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfle;->zzpvh:[Lcom/google/android/gms/internal/zzfle;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzfle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzfle;

    return-object v0
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/zzfhb;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
